// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required String name,
      String id,
      String email,
      String profile_picture,
      List<UserPost> posts}) {
    return _User(
      name: name,
      id: id,
      email: email,
      profile_picture: profile_picture,
      posts: posts,
    );
  }
}

// ignore: unused_element
const $User = _$UserTearOff();

mixin _$User {
  String get name;
  String get id;
  String get email;
  String get profile_picture;
  List<UserPost> get posts;

  Map<String, dynamic> toJson();
  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String id,
      String email,
      String profile_picture,
      List<UserPost> posts});
}

class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object name = freezed,
    Object id = freezed,
    Object email = freezed,
    Object profile_picture = freezed,
    Object posts = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      id: id == freezed ? _value.id : id as String,
      email: email == freezed ? _value.email : email as String,
      profile_picture: profile_picture == freezed
          ? _value.profile_picture
          : profile_picture as String,
      posts: posts == freezed ? _value.posts : posts as List<UserPost>,
    ));
  }
}

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String id,
      String email,
      String profile_picture,
      List<UserPost> posts});
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object name = freezed,
    Object id = freezed,
    Object email = freezed,
    Object profile_picture = freezed,
    Object posts = freezed,
  }) {
    return _then(_User(
      name: name == freezed ? _value.name : name as String,
      id: id == freezed ? _value.id : id as String,
      email: email == freezed ? _value.email : email as String,
      profile_picture: profile_picture == freezed
          ? _value.profile_picture
          : profile_picture as String,
      posts: posts == freezed ? _value.posts : posts as List<UserPost>,
    ));
  }
}

@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {@required this.name,
      this.id,
      this.email,
      this.profile_picture,
      this.posts})
      : assert(name != null);

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String name;
  @override
  final String id;
  @override
  final String email;
  @override
  final String profile_picture;
  @override
  final List<UserPost> posts;

  @override
  String toString() {
    return 'User(name: $name, id: $id, email: $email, profile_picture: $profile_picture, posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.profile_picture, profile_picture) ||
                const DeepCollectionEquality()
                    .equals(other.profile_picture, profile_picture)) &&
            (identical(other.posts, posts) ||
                const DeepCollectionEquality().equals(other.posts, posts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(profile_picture) ^
      const DeepCollectionEquality().hash(posts);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {@required String name,
      String id,
      String email,
      String profile_picture,
      List<UserPost> posts}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  String get email;
  @override
  String get profile_picture;
  @override
  List<UserPost> get posts;
  @override
  _$UserCopyWith<_User> get copyWith;
}
