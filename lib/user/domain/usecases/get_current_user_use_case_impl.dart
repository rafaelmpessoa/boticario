import 'package:boticario/user/domain/entities/user.dart';
import 'package:boticario/user/domain/error/user_failures.dart';
import 'package:boticario/user/domain/repository/user_repository.dart';
import 'package:boticario/user/domain/usecases/get_current_user_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GetCurrentUserUseCase)
class GetCurrentUserUseCaseImpl implements GetCurrentUserUseCase {
  final UserRepository userRepository;

  GetCurrentUserUseCaseImpl(this.userRepository);

  @override
  Future<Either<UserFailures, User>> call() => userRepository.getCurrentUser();
}
