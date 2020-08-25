// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'news_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
NewsMessage _$NewsMessageFromJson(Map<String, dynamic> json) {
  return _NewsMessage.fromJson(json);
}

class _$NewsMessageTearOff {
  const _$NewsMessageTearOff();

// ignore: unused_element
  _NewsMessage call({@required String content, DateTime created_at}) {
    return _NewsMessage(
      content: content,
      created_at: created_at,
    );
  }
}

// ignore: unused_element
const $NewsMessage = _$NewsMessageTearOff();

mixin _$NewsMessage {
  String get content;
  DateTime get created_at;

  Map<String, dynamic> toJson();
  $NewsMessageCopyWith<NewsMessage> get copyWith;
}

abstract class $NewsMessageCopyWith<$Res> {
  factory $NewsMessageCopyWith(
          NewsMessage value, $Res Function(NewsMessage) then) =
      _$NewsMessageCopyWithImpl<$Res>;
  $Res call({String content, DateTime created_at});
}

class _$NewsMessageCopyWithImpl<$Res> implements $NewsMessageCopyWith<$Res> {
  _$NewsMessageCopyWithImpl(this._value, this._then);

  final NewsMessage _value;
  // ignore: unused_field
  final $Res Function(NewsMessage) _then;

  @override
  $Res call({
    Object content = freezed,
    Object created_at = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed ? _value.content : content as String,
      created_at:
          created_at == freezed ? _value.created_at : created_at as DateTime,
    ));
  }
}

abstract class _$NewsMessageCopyWith<$Res>
    implements $NewsMessageCopyWith<$Res> {
  factory _$NewsMessageCopyWith(
          _NewsMessage value, $Res Function(_NewsMessage) then) =
      __$NewsMessageCopyWithImpl<$Res>;
  @override
  $Res call({String content, DateTime created_at});
}

class __$NewsMessageCopyWithImpl<$Res> extends _$NewsMessageCopyWithImpl<$Res>
    implements _$NewsMessageCopyWith<$Res> {
  __$NewsMessageCopyWithImpl(
      _NewsMessage _value, $Res Function(_NewsMessage) _then)
      : super(_value, (v) => _then(v as _NewsMessage));

  @override
  _NewsMessage get _value => super._value as _NewsMessage;

  @override
  $Res call({
    Object content = freezed,
    Object created_at = freezed,
  }) {
    return _then(_NewsMessage(
      content: content == freezed ? _value.content : content as String,
      created_at:
          created_at == freezed ? _value.created_at : created_at as DateTime,
    ));
  }
}

@JsonSerializable()
class _$_NewsMessage with DiagnosticableTreeMixin implements _NewsMessage {
  const _$_NewsMessage({@required this.content, this.created_at})
      : assert(content != null);

  factory _$_NewsMessage.fromJson(Map<String, dynamic> json) =>
      _$_$_NewsMessageFromJson(json);

  @override
  final String content;
  @override
  final DateTime created_at;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsMessage(content: $content, created_at: $created_at)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewsMessage'))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('created_at', created_at));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsMessage &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.created_at, created_at) ||
                const DeepCollectionEquality()
                    .equals(other.created_at, created_at)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(created_at);

  @override
  _$NewsMessageCopyWith<_NewsMessage> get copyWith =>
      __$NewsMessageCopyWithImpl<_NewsMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsMessageToJson(this);
  }
}

abstract class _NewsMessage implements NewsMessage {
  const factory _NewsMessage({@required String content, DateTime created_at}) =
      _$_NewsMessage;

  factory _NewsMessage.fromJson(Map<String, dynamic> json) =
      _$_NewsMessage.fromJson;

  @override
  String get content;
  @override
  DateTime get created_at;
  @override
  _$NewsMessageCopyWith<_NewsMessage> get copyWith;
}
