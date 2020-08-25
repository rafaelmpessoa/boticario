import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failures.freezed.dart';

@freezed
abstract class AuthFailures<T> with _$AuthFailures<T> {
  const factory AuthFailures.invalidPassword() = InvalidPassword;
  const factory AuthFailures.emailNotFound() = EmailNotFound;
  const factory AuthFailures.serverError() = ServerError;
  const factory AuthFailures.unexpected() = Unexpected;
}
