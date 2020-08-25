import 'dart:io';

// import 'package:boticario/injection.dart';
import 'package:boticario/injection.dart';
import 'package:boticario/user/data/data_source/user_local_data_source.dart';
import 'package:boticario/user/data/data_source/user_remote_data_source.dart';
import 'package:boticario/user/data/repository/user_repository_impl.dart';
import 'package:boticario/user/domain/entities/user.dart';
import 'package:boticario/user/domain/entities/user_post.dart';
import 'package:boticario/user/domain/usecases/create_user_post_use_case_impl.dart';
import 'package:boticario/user/domain/usecases/create_user_use_case_impl.dart';
import 'package:boticario/user/domain/usecases/get_posts_use_case_impl.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' as inj;
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockUserRemoteDataSourceImpl extends Mock
    implements UserRemoteDataSourceImpl {}

class MockUserLocalDataSourceImpl extends Mock
    implements UserLocalDataSourceImpl {}

main() {
  UserRepositoryImpl userRepository;
  MockUserRemoteDataSourceImpl userRemoteDataSource;
  MockUserLocalDataSourceImpl userLocalDataSource;
  CreateUserUseCaseImpl createUserUseCase;

  setUp(() {
    userRemoteDataSource = MockUserRemoteDataSourceImpl();
    userLocalDataSource = MockUserLocalDataSourceImpl();
    userRepository =
        UserRepositoryImpl(userRemoteDataSource, userLocalDataSource);
    final faker = Faker();
    createUserUseCase = CreateUserUseCaseImpl(userRepository);
  });
  group('CRUD User', () {
    test('create user offline should create cached user', () async {
      SharedPreferences.setMockInitialValues({});

      final user = User(
        name: faker.person.name(),
        email: faker.person.firstName() + '@gmail.com',
      );

      final password = faker.guid.guid();

      when(userRemoteDataSource.createUser(
              user: anyNamed('user'), password: anyNamed('password')))
          .thenThrow((realInvocation) => SocketException("Mock offline"));

      when(userLocalDataSource.createLocalUser(
              user: anyNamed('user'), password: anyNamed('password')))
          .thenAnswer((realInvocation) async => user);

      final result = await createUserUseCase(
        user: user,
        password: password,
      );

      final cachedUser = result.getOrElse(() => null);
      expect(cachedUser, isNot(null));
    });
  });

  group('Offline CRUD User post', () {
    CreateUserPostUseCaseImpl createUserPostUseCase;
    GetPostsUseCaseImpl getPostsUseCase;

    setUp(() {
      configureDependencies(
        env: bool.fromEnvironment('dart.vm.product') == true
            ? inj.Environment.prod
            : inj.Environment.dev,
      );

      createUserPostUseCase = CreateUserPostUseCaseImpl(userRepository);
      getPostsUseCase = GetPostsUseCaseImpl(userRepository);
    });

    test('Create Post should return the same post', () async {
      final userId = faker.guid.guid();

      when(userRemoteDataSource.createPost(
              userId: anyNamed('userId'), userPost: anyNamed('userPost')))
          .thenThrow((realInvocation) => SocketException("Mock offline"));

      when(userRemoteDataSource.getPosts(
        userId: anyNamed('userId'),
      )).thenThrow((realInvocation) => SocketException("Mock offline"));

      final user = User(
        name: faker.person.name(),
        email: faker.person.firstName() + '@gmail.com',
        id: userId,
      );

      when(userLocalDataSource.getCurrentUser())
          .thenAnswer((realInvocation) async => user);

      when(userLocalDataSource.getNotSendPosts())
          .thenAnswer((realInvocation) async => [
                UserPost(
                  created_at: DateTime.now(),
                  post: faker.lorem.word(),
                ),
              ]);

      await createUserPostUseCase(
        UserPost(
          created_at: DateTime.now(),
          post: faker.lorem.word(),
        ),
      );

      final userPostResult = await getPostsUseCase(userId: userId);

      final insertedUser = userPostResult.getOrElse(() => null);
      final userPost = insertedUser.first.posts;

      expect(userPost.length, greaterThan(0));
    });
  });
}
