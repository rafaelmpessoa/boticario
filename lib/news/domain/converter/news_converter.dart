import 'package:boticario/news/domain/error/news_failures.dart';
import 'package:boticario/strings.dart';

class NewsConverter {
  static String newsFailureInString(NewsFailures failures) {
    return failures.map(
      serverError: (_) => Strings.serverError,
      unexpected: (_) => Strings.unexpectedError,
    );
  }
}
