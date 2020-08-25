import 'package:boticario/user/domain/error/user_failures.dart';
import 'package:boticario/user/domain/entities/user.dart';
import 'package:boticario/user/domain/repository/user_repository.dart';
import 'package:boticario/user/domain/usecases/create_user_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CreateUserUseCase)
class CreateUserUseCaseImpl extends CreateUserUseCase {
  final UserRepository userRepository;

  CreateUserUseCaseImpl(this.userRepository);

  @override
  Future<Either<UserFailures, User>> call(
      {@required User user, @required String password}) async {
    final result =
        await userRepository.createUser(user: user, password: password);

    return result.fold(
      (l) => l.map(
        serverError: (_) => _createLocalUser(password: password, user: user),
        unexpected: (_) => left(l),
      ),
      (r) => right(r),
    );
  }

  Future<Either<UserFailures, User>> _createLocalUser(
      {@required User user, @required String password}) async {
    return userRepository.createLocalUser(user: user, password: password);
  }
}
