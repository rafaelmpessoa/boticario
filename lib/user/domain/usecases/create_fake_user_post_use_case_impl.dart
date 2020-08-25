import 'dart:math';
import 'package:boticario/user/domain/entities/user_post.dart';
import 'package:boticario/user/domain/entities/user.dart';
import 'package:boticario/user/domain/usecases/create_fake_user_post_use_case.dart';
import 'package:faker/faker.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CreateFakeUserPostUseCase)
class CreateFakeUserPostCaseImpl implements CreateFakeUserPostUseCase {
  @override
  List<User> call() {
    final faker = Faker();
    final random = Random();

    final int listLen = random.nextInt(25) + 5;

    return List.generate(
      listLen,
      (_) => User(
        name: faker.person.name(),
        email: faker.lorem.word() + '@gmail.com',
        posts: List.generate(
          random.nextInt(3) + 1,
          (_) => UserPost(
            created_at: faker.date.dateTime(),
            id: faker.guid.guid(),
            post: faker.lorem.words(random.nextInt(20) + 5).join(" "),
          ),
        ),
      ),
    );
  }
}
