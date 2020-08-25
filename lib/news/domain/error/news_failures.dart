import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_failures.freezed.dart';

@freezed
abstract class NewsFailures with _$NewsFailures {
  const factory NewsFailures.serverError() = ServerError;
  const factory NewsFailures.unexpected() = Unexpected;
}
