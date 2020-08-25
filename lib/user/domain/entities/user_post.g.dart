// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserPost _$_$_UserPostFromJson(Map<String, dynamic> json) {
  return _$_UserPost(
    id: json['id'] as String,
    post: json['post'] as String,
    created_at: const DataConverter().fromJson(json['created_at'] as int),
    updated_at: const DataConverter().fromJson(json['updated_at'] as int),
  );
}

Map<String, dynamic> _$_$_UserPostToJson(_$_UserPost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'post': instance.post,
      'created_at': const DataConverter().toJson(instance.created_at),
      'updated_at': const DataConverter().toJson(instance.updated_at),
    };
