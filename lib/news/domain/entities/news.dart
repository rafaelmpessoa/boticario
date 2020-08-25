import 'package:boticario/news/domain/entities/news_message.dart';
import 'package:boticario/news/domain/entities/news_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.freezed.dart';
part 'news.g.dart';

@freezed
abstract class News with _$News {
  const factory News({
    @required NewsUser user,
    @required NewsMessage message,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}
