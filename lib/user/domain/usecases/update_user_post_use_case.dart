import 'package:boticario/user/domain/entities/user_post.dart';
import 'package:boticario/user/domain/error/user_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

abstract class UpdateUserPostUseCase {
  Future<Either<UserFailures, UserPost>> call(
      {@required String postId, @required String post});
}
