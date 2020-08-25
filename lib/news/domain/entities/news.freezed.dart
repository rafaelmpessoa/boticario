// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
News _$NewsFromJson(Map<String, dynamic> json) {
  return _News.fromJson(json);
}

class _$NewsTearOff {
  const _$NewsTearOff();

// ignore: unused_element
  _News call({@required NewsUser user, @required NewsMessage message}) {
    return _News(
      user: user,
      message: message,
    );
  }
}

// ignore: unused_element
const $News = _$NewsTearOff();

mixin _$News {
  NewsUser get user;
  NewsMessage get message;

  Map<String, dynamic> toJson();
  $NewsCopyWith<News> get copyWith;
}

abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res>;
  $Res call({NewsUser user, NewsMessage message});

  $NewsUserCopyWith<$Res> get user;
  $NewsMessageCopyWith<$Res> get message;
}

class _$NewsCopyWithImpl<$Res> implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  final News _value;
  // ignore: unused_field
  final $Res Function(News) _then;

  @override
  $Res call({
    Object user = freezed,
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed ? _value.user : user as NewsUser,
      message: message == freezed ? _value.message : message as NewsMessage,
    ));
  }

  @override
  $NewsUserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $NewsUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $NewsMessageCopyWith<$Res> get message {
    if (_value.message == null) {
      return null;
    }
    return $NewsMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

abstract class _$NewsCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$NewsCopyWith(_News value, $Res Function(_News) then) =
      __$NewsCopyWithImpl<$Res>;
  @override
  $Res call({NewsUser user, NewsMessage message});

  @override
  $NewsUserCopyWith<$Res> get user;
  @override
  $NewsMessageCopyWith<$Res> get message;
}

class __$NewsCopyWithImpl<$Res> extends _$NewsCopyWithImpl<$Res>
    implements _$NewsCopyWith<$Res> {
  __$NewsCopyWithImpl(_News _value, $Res Function(_News) _then)
      : super(_value, (v) => _then(v as _News));

  @override
  _News get _value => super._value as _News;

  @override
  $Res call({
    Object user = freezed,
    Object message = freezed,
  }) {
    return _then(_News(
      user: user == freezed ? _value.user : user as NewsUser,
      message: message == freezed ? _value.message : message as NewsMessage,
    ));
  }
}

@JsonSerializable()
class _$_News implements _News {
  const _$_News({@required this.user, @required this.message})
      : assert(user != null),
        assert(message != null);

  factory _$_News.fromJson(Map<String, dynamic> json) =>
      _$_$_NewsFromJson(json);

  @override
  final NewsUser user;
  @override
  final NewsMessage message;

  @override
  String toString() {
    return 'News(user: $user, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _News &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(message);

  @override
  _$NewsCopyWith<_News> get copyWith =>
      __$NewsCopyWithImpl<_News>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsToJson(this);
  }
}

abstract class _News implements News {
  const factory _News(
      {@required NewsUser user, @required NewsMessage message}) = _$_News;

  factory _News.fromJson(Map<String, dynamic> json) = _$_News.fromJson;

  @override
  NewsUser get user;
  @override
  NewsMessage get message;
  @override
  _$NewsCopyWith<_News> get copyWith;
}
