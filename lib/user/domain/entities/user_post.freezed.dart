// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserPost _$UserPostFromJson(Map<String, dynamic> json) {
  return _UserPost.fromJson(json);
}

class _$UserPostTearOff {
  const _$UserPostTearOff();

// ignore: unused_element
  _UserPost call(
      {String id,
      @required String post,
      @DataConverter() DateTime created_at,
      @DataConverter() DateTime updated_at}) {
    return _UserPost(
      id: id,
      post: post,
      created_at: created_at,
      updated_at: updated_at,
    );
  }
}

// ignore: unused_element
const $UserPost = _$UserPostTearOff();

mixin _$UserPost {
  String get id;
  String get post;
  @DataConverter()
  DateTime get created_at;
  @DataConverter()
  DateTime get updated_at;

  Map<String, dynamic> toJson();
  $UserPostCopyWith<UserPost> get copyWith;
}

abstract class $UserPostCopyWith<$Res> {
  factory $UserPostCopyWith(UserPost value, $Res Function(UserPost) then) =
      _$UserPostCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String post,
      @DataConverter() DateTime created_at,
      @DataConverter() DateTime updated_at});
}

class _$UserPostCopyWithImpl<$Res> implements $UserPostCopyWith<$Res> {
  _$UserPostCopyWithImpl(this._value, this._then);

  final UserPost _value;
  // ignore: unused_field
  final $Res Function(UserPost) _then;

  @override
  $Res call({
    Object id = freezed,
    Object post = freezed,
    Object created_at = freezed,
    Object updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      post: post == freezed ? _value.post : post as String,
      created_at:
          created_at == freezed ? _value.created_at : created_at as DateTime,
      updated_at:
          updated_at == freezed ? _value.updated_at : updated_at as DateTime,
    ));
  }
}

abstract class _$UserPostCopyWith<$Res> implements $UserPostCopyWith<$Res> {
  factory _$UserPostCopyWith(_UserPost value, $Res Function(_UserPost) then) =
      __$UserPostCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String post,
      @DataConverter() DateTime created_at,
      @DataConverter() DateTime updated_at});
}

class __$UserPostCopyWithImpl<$Res> extends _$UserPostCopyWithImpl<$Res>
    implements _$UserPostCopyWith<$Res> {
  __$UserPostCopyWithImpl(_UserPost _value, $Res Function(_UserPost) _then)
      : super(_value, (v) => _then(v as _UserPost));

  @override
  _UserPost get _value => super._value as _UserPost;

  @override
  $Res call({
    Object id = freezed,
    Object post = freezed,
    Object created_at = freezed,
    Object updated_at = freezed,
  }) {
    return _then(_UserPost(
      id: id == freezed ? _value.id : id as String,
      post: post == freezed ? _value.post : post as String,
      created_at:
          created_at == freezed ? _value.created_at : created_at as DateTime,
      updated_at:
          updated_at == freezed ? _value.updated_at : updated_at as DateTime,
    ));
  }
}

@JsonSerializable()
class _$_UserPost implements _UserPost {
  const _$_UserPost(
      {this.id,
      @required this.post,
      @DataConverter() this.created_at,
      @DataConverter() this.updated_at})
      : assert(post != null);

  factory _$_UserPost.fromJson(Map<String, dynamic> json) =>
      _$_$_UserPostFromJson(json);

  @override
  final String id;
  @override
  final String post;
  @override
  @DataConverter()
  final DateTime created_at;
  @override
  @DataConverter()
  final DateTime updated_at;

  @override
  String toString() {
    return 'UserPost(id: $id, post: $post, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserPost &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)) &&
            (identical(other.updated_at, updated_at) ||
                const DeepCollectionEquality()
                    .equals(other.updated_at, updated_at)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(post) ^
      const DeepCollectionEquality().hash(created_at) ^
      const DeepCollectionEquality().hash(updated_at);

  @override
  _$UserPostCopyWith<_UserPost> get copyWith =>
      __$UserPostCopyWithImpl<_UserPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserPostToJson(this);
  }
}

abstract class _UserPost implements UserPost {
  const factory _UserPost(
      {String id,
      @required String post,
      @DataConverter() DateTime created_at,
      @DataConverter() DateTime updated_at}) = _$_UserPost;

  factory _UserPost.fromJson(Map<String, dynamic> json) = _$_UserPost.fromJson;

  @override
  String get id;
  @override
  String get post;
  @override
  @DataConverter()
  DateTime get created_at;
  @override
  @DataConverter()
  DateTime get updated_at;
  @override
  _$UserPostCopyWith<_UserPost> get copyWith;
}
