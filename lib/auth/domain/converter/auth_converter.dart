import 'package:boticario/auth/domain/error/auth_failures.dart';
import 'package:boticario/strings.dart';
import 'package:boticario/user/domain/error/user_failures.dart';

class AuthConverter {
  static String authFailureInString(AuthFailures failures) {
    return failures.map(
      invalidPassword: (_) => Strings.invalidPassword,
      emailNotFound: (_) => Strings.emailNotFound,
      serverError: (_) => Strings.serverError,
      unexpected: (_) => Strings.unexpectedError,
    );
  }

  static AuthFailures userFailuresInAuthFailures(UserFailures userFailures) {
    return userFailures.map(
      serverError: (_) => AuthFailures.serverError(),
      unexpected: (_) => AuthFailures.unexpected(),
    );
  }
}
