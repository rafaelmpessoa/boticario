import 'package:bloc_test/bloc_test.dart';
import 'package:boticario/auth/domain/error/auth_failures.dart';
import 'package:boticario/auth/domain/usecases/login_use_case.dart';
import 'package:boticario/auth/presentation/pages/auth/widgets/login_form/bloc/login_form_bloc.dart';
import 'package:boticario/user/domain/entities/user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockLoginUseCase extends Mock implements LoginUseCase {}

void main() {
  MockLoginUseCase loginUseCase;
  LoginFormBloc loginFormBloc;

  group('Login Bloc', () {
    setUp(() {
      loginUseCase = MockLoginUseCase();
      loginFormBloc = LoginFormBloc(loginUseCase);
    });

    blocTest<LoginFormBloc, LoginFormState>(
      'should incorrectly login emit loading and error',
      build: () {
        when(loginUseCase(
                email: anyNamed('email'), password: anyNamed('password')))
            .thenAnswer(
          (_) async => left(AuthFailures.emailNotFound()),
        );
        return loginFormBloc;
      },
      act: (bloc) => bloc.add(
        LoginFormEvent.onSubmit(email: "teste", password: "teste"),
      ),
      expect: [
        LoginFormState.loading(),
        LoginFormState.error(AuthFailures.emailNotFound())
      ],
    );

    blocTest<LoginFormBloc, LoginFormState>(
      'should correctly login emit loadgin and success',
      build: () {
        when(loginUseCase(
                email: anyNamed('email'), password: anyNamed('password')))
            .thenAnswer(
          (_) async => right(User(
            name: "Teste",
          )),
        );
        return loginFormBloc;
      },
      act: (bloc) => bloc.add(
        LoginFormEvent.onSubmit(email: "teste", password: "teste"),
      ),
      expect: [
        LoginFormState.loading(),
        LoginFormState.success(User(
          name: "Teste",
        ))
      ],
    );
  });
}
