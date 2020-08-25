import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_message.freezed.dart';
part 'news_message.g.dart';

@freezed
abstract class NewsMessage with _$NewsMessage {
  const factory NewsMessage({
    @required String content,
    DateTime created_at,
  }) = _NewsMessage;

  factory NewsMessage.fromJson(Map<String, dynamic> json) =>
      _$NewsMessageFromJson(json);
}
