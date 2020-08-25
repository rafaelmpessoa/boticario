import 'dart:io';

import 'package:boticario/auth/data/data_source/auth_local_data_source.dart';
import 'package:boticario/auth/data/data_source/auth_remote_data_source.dart';
import 'package:boticario/auth/data/repository/auth_repository_impl.dart';
import 'package:boticario/auth/domain/error/auth_failures.dart';
import 'package:boticario/auth/domain/usecases/login_use_case_impl.dart';
import 'package:boticario/user/data/data_source/user_local_data_source.dart';
import 'package:boticario/user/data/data_source/user_remote_data_source.dart';
import 'package:boticario/user/data/repository/user_repository_impl.dart';
import 'package:boticario/user/domain/entities/user.dart';
import 'package:boticario/user/domain/usecases/create_user_use_case_impl.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockUserRemoteDataSourceImpl extends Mock
    implements UserRemoteDataSourceImpl {}

class MockAuthLocalDataSourceImpl extends Mock
    implements AuthLocalDataSourceImpl {}

class MockAuthRemoteDataSourceImpl extends Mock
    implements AuthRemoteDataSourceImpl {}

class MockUserLocalDataSourceImpl extends Mock
    implements UserLocalDataSourceImpl {}

main() {
  UserRepositoryImpl userRepository;
  MockUserRemoteDataSourceImpl userRemoteDataSource;
  MockAuthLocalDataSourceImpl authLocalDataSource;
  MockAuthRemoteDataSourceImpl authRemoteDataSource;
  MockUserLocalDataSourceImpl userLocalDataSource;
  CreateUserUseCaseImpl createUserUseCase;
  LoginUseCaseImpl loginUseCase;
  AuthRepositoryImpl authRepository;

  setUp(() {
    userRemoteDataSource = MockUserRemoteDataSourceImpl();
    userLocalDataSource = MockUserLocalDataSourceImpl();
    userRepository =
        UserRepositoryImpl(userRemoteDataSource, userLocalDataSource);
    final faker = Faker();
    createUserUseCase = CreateUserUseCaseImpl(userRepository);
    authLocalDataSource = MockAuthLocalDataSourceImpl();
    authRemoteDataSource = MockAuthRemoteDataSourceImpl();
    authRepository =
        AuthRepositoryImpl(authLocalDataSource, authRemoteDataSource);
    loginUseCase = LoginUseCaseImpl(authRepository, userRepository);
  });
  group('Offline Auth', () {
    User user;

    setUp(() {
      user = User(
        name: faker.person.name(),
        email: faker.person.firstName() + '@gmail.com',
      );

      when(userRemoteDataSource.createUser(
              user: anyNamed('user'), password: anyNamed('password')))
          .thenThrow((realInvocation) => SocketException("Mock offline"));

      when(authRemoteDataSource.login(
              email: anyNamed('email'), password: anyNamed('password')))
          .thenThrow(SocketException('mocked offline'));

      when(userLocalDataSource.createLocalUser(
              user: anyNamed('user'), password: anyNamed('password')))
          .thenAnswer((realInvocation) async => user);

      when(userLocalDataSource.getCurrentUser())
          .thenAnswer((realInvocation) async => user);
    });

    test('create user offline should login correctly', () async {
      SharedPreferences.setMockInitialValues({});

      final password = faker.guid.guid();

      when(authLocalDataSource.getStoragePassword())
          .thenAnswer((realInvocation) async => password);

      await createUserUseCase(
        user: user,
        password: password,
      );

      final loggedUserResult = await loginUseCase(
        email: user.email,
        password: password,
      );

      final loggedUser = loggedUserResult.getOrElse(() => null);
      expect(loggedUser, equals(user));
    });

    test('invalid password should throw an error', () async {
      SharedPreferences.setMockInitialValues({});

      final password = faker.guid.guid();

      when(authLocalDataSource.getStoragePassword())
          .thenAnswer((realInvocation) async => faker.lorem.word());

      await createUserUseCase(
        user: user,
        password: password,
      );

      final loggedUserResult = await loginUseCase(
        email: user.email,
        password: password,
      );

      final loggedUser = loggedUserResult.fold((l) => l, (r) => r);

      expect(loggedUser, AuthFailures.invalidPassword());
    });
  });
}
