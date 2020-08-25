// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_News _$_$_NewsFromJson(Map<String, dynamic> json) {
  return _$_News(
    user: json['user'] == null
        ? null
        : NewsUser.fromJson(json['user'] as Map<String, dynamic>),
    message: json['message'] == null
        ? null
        : NewsMessage.fromJson(json['message'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_NewsToJson(_$_News instance) => <String, dynamic>{
      'user': instance.user,
      'message': instance.message,
    };
