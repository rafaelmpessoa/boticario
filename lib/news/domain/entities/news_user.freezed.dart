// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'news_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
NewsUser _$NewsUserFromJson(Map<String, dynamic> json) {
  return _NewsUser.fromJson(json);
}

class _$NewsUserTearOff {
  const _$NewsUserTearOff();

// ignore: unused_element
  _NewsUser call({@required String name, String profile_picture}) {
    return _NewsUser(
      name: name,
      profile_picture: profile_picture,
    );
  }
}

// ignore: unused_element
const $NewsUser = _$NewsUserTearOff();

mixin _$NewsUser {
  String get name;
  String get profile_picture;

  Map<String, dynamic> toJson();
  $NewsUserCopyWith<NewsUser> get copyWith;
}

abstract class $NewsUserCopyWith<$Res> {
  factory $NewsUserCopyWith(NewsUser value, $Res Function(NewsUser) then) =
      _$NewsUserCopyWithImpl<$Res>;
  $Res call({String name, String profile_picture});
}

class _$NewsUserCopyWithImpl<$Res> implements $NewsUserCopyWith<$Res> {
  _$NewsUserCopyWithImpl(this._value, this._then);

  final NewsUser _value;
  // ignore: unused_field
  final $Res Function(NewsUser) _then;

  @override
  $Res call({
    Object name = freezed,
    Object profile_picture = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      profile_picture: profile_picture == freezed
          ? _value.profile_picture
          : profile_picture as String,
    ));
  }
}

abstract class _$NewsUserCopyWith<$Res> implements $NewsUserCopyWith<$Res> {
  factory _$NewsUserCopyWith(_NewsUser value, $Res Function(_NewsUser) then) =
      __$NewsUserCopyWithImpl<$Res>;
  @override
  $Res call({String name, String profile_picture});
}

class __$NewsUserCopyWithImpl<$Res> extends _$NewsUserCopyWithImpl<$Res>
    implements _$NewsUserCopyWith<$Res> {
  __$NewsUserCopyWithImpl(_NewsUser _value, $Res Function(_NewsUser) _then)
      : super(_value, (v) => _then(v as _NewsUser));

  @override
  _NewsUser get _value => super._value as _NewsUser;

  @override
  $Res call({
    Object name = freezed,
    Object profile_picture = freezed,
  }) {
    return _then(_NewsUser(
      name: name == freezed ? _value.name : name as String,
      profile_picture: profile_picture == freezed
          ? _value.profile_picture
          : profile_picture as String,
    ));
  }
}

@JsonSerializable()
class _$_NewsUser implements _NewsUser {
  const _$_NewsUser({@required this.name, this.profile_picture})
      : assert(name != null);

  factory _$_NewsUser.fromJson(Map<String, dynamic> json) =>
      _$_$_NewsUserFromJson(json);

  @override
  final String name;
  @override
  final String profile_picture;

  @override
  String toString() {
    return 'NewsUser(name: $name, profile_picture: $profile_picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsUser &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.profile_picture, profile_picture) ||
                const DeepCollectionEquality()
                    .equals(other.profile_picture, profile_picture)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(profile_picture);

  @override
  _$NewsUserCopyWith<_NewsUser> get copyWith =>
      __$NewsUserCopyWithImpl<_NewsUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsUserToJson(this);
  }
}

abstract class _NewsUser implements NewsUser {
  const factory _NewsUser({@required String name, String profile_picture}) =
      _$_NewsUser;

  factory _NewsUser.fromJson(Map<String, dynamic> json) = _$_NewsUser.fromJson;

  @override
  String get name;
  @override
  String get profile_picture;
  @override
  _$NewsUserCopyWith<_NewsUser> get copyWith;
}
