import 'package:boticario/user/domain/entities/user.dart';

abstract class CreateFakeUserPostUseCase {
  List<User> call();
}
