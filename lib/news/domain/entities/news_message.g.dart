// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewsMessage _$_$_NewsMessageFromJson(Map<String, dynamic> json) {
  return _$_NewsMessage(
    content: json['content'] as String,
    created_at: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
  );
}

Map<String, dynamic> _$_$_NewsMessageToJson(_$_NewsMessage instance) =>
    <String, dynamic>{
      'content': instance.content,
      'created_at': instance.created_at?.toIso8601String(),
    };
