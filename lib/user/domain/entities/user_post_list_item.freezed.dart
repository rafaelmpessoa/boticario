// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_post_list_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserPostListItemTearOff {
  const _$UserPostListItemTearOff();

// ignore: unused_element
  _UserPostListItem call({String name, UserPost post}) {
    return _UserPostListItem(
      name: name,
      post: post,
    );
  }
}

// ignore: unused_element
const $UserPostListItem = _$UserPostListItemTearOff();

mixin _$UserPostListItem {
  String get name;
  UserPost get post;

  $UserPostListItemCopyWith<UserPostListItem> get copyWith;
}

abstract class $UserPostListItemCopyWith<$Res> {
  factory $UserPostListItemCopyWith(
          UserPostListItem value, $Res Function(UserPostListItem) then) =
      _$UserPostListItemCopyWithImpl<$Res>;
  $Res call({String name, UserPost post});

  $UserPostCopyWith<$Res> get post;
}

class _$UserPostListItemCopyWithImpl<$Res>
    implements $UserPostListItemCopyWith<$Res> {
  _$UserPostListItemCopyWithImpl(this._value, this._then);

  final UserPostListItem _value;
  // ignore: unused_field
  final $Res Function(UserPostListItem) _then;

  @override
  $Res call({
    Object name = freezed,
    Object post = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      post: post == freezed ? _value.post : post as UserPost,
    ));
  }

  @override
  $UserPostCopyWith<$Res> get post {
    if (_value.post == null) {
      return null;
    }
    return $UserPostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

abstract class _$UserPostListItemCopyWith<$Res>
    implements $UserPostListItemCopyWith<$Res> {
  factory _$UserPostListItemCopyWith(
          _UserPostListItem value, $Res Function(_UserPostListItem) then) =
      __$UserPostListItemCopyWithImpl<$Res>;
  @override
  $Res call({String name, UserPost post});

  @override
  $UserPostCopyWith<$Res> get post;
}

class __$UserPostListItemCopyWithImpl<$Res>
    extends _$UserPostListItemCopyWithImpl<$Res>
    implements _$UserPostListItemCopyWith<$Res> {
  __$UserPostListItemCopyWithImpl(
      _UserPostListItem _value, $Res Function(_UserPostListItem) _then)
      : super(_value, (v) => _then(v as _UserPostListItem));

  @override
  _UserPostListItem get _value => super._value as _UserPostListItem;

  @override
  $Res call({
    Object name = freezed,
    Object post = freezed,
  }) {
    return _then(_UserPostListItem(
      name: name == freezed ? _value.name : name as String,
      post: post == freezed ? _value.post : post as UserPost,
    ));
  }
}

class _$_UserPostListItem implements _UserPostListItem {
  const _$_UserPostListItem({this.name, this.post});

  @override
  final String name;
  @override
  final UserPost post;

  @override
  String toString() {
    return 'UserPostListItem(name: $name, post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserPostListItem &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.post, post) ||
                const DeepCollectionEquality().equals(other.post, post)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(post);

  @override
  _$UserPostListItemCopyWith<_UserPostListItem> get copyWith =>
      __$UserPostListItemCopyWithImpl<_UserPostListItem>(this, _$identity);
}

abstract class _UserPostListItem implements UserPostListItem {
  const factory _UserPostListItem({String name, UserPost post}) =
      _$_UserPostListItem;

  @override
  String get name;
  @override
  UserPost get post;
  @override
  _$UserPostListItemCopyWith<_UserPostListItem> get copyWith;
}
