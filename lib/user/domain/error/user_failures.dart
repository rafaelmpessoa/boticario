import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failures.freezed.dart';

@freezed
abstract class UserFailures with _$UserFailures {
  const factory UserFailures.serverError() = ServerError;
  const factory UserFailures.unexpected() = Unexpected;
}
