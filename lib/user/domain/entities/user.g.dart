// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    name: json['name'] as String,
    id: json['id'] as String,
    email: json['email'] as String,
    profile_picture: json['profile_picture'] as String,
    posts: (json['posts'] as List)
        ?.map((e) =>
            e == null ? null : UserPost.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'email': instance.email,
      'profile_picture': instance.profile_picture,
      'posts': instance.posts,
    };
