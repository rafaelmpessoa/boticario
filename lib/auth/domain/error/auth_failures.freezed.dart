// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFailuresTearOff {
  const _$AuthFailuresTearOff();

// ignore: unused_element
  InvalidPassword<T> invalidPassword<T>() {
    return InvalidPassword<T>();
  }

// ignore: unused_element
  EmailNotFound<T> emailNotFound<T>() {
    return EmailNotFound<T>();
  }

// ignore: unused_element
  ServerError<T> serverError<T>() {
    return ServerError<T>();
  }

// ignore: unused_element
  Unexpected<T> unexpected<T>() {
    return Unexpected<T>();
  }
}

// ignore: unused_element
const $AuthFailures = _$AuthFailuresTearOff();

mixin _$AuthFailures<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidPassword(),
    @required Result emailNotFound(),
    @required Result serverError(),
    @required Result unexpected(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidPassword(),
    Result emailNotFound(),
    Result serverError(),
    Result unexpected(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result emailNotFound(EmailNotFound<T> value),
    @required Result serverError(ServerError<T> value),
    @required Result unexpected(Unexpected<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidPassword(InvalidPassword<T> value),
    Result emailNotFound(EmailNotFound<T> value),
    Result serverError(ServerError<T> value),
    Result unexpected(Unexpected<T> value),
    @required Result orElse(),
  });
}

abstract class $AuthFailuresCopyWith<T, $Res> {
  factory $AuthFailuresCopyWith(
          AuthFailures<T> value, $Res Function(AuthFailures<T>) then) =
      _$AuthFailuresCopyWithImpl<T, $Res>;
}

class _$AuthFailuresCopyWithImpl<T, $Res>
    implements $AuthFailuresCopyWith<T, $Res> {
  _$AuthFailuresCopyWithImpl(this._value, this._then);

  final AuthFailures<T> _value;
  // ignore: unused_field
  final $Res Function(AuthFailures<T>) _then;
}

abstract class $InvalidPasswordCopyWith<T, $Res> {
  factory $InvalidPasswordCopyWith(
          InvalidPassword<T> value, $Res Function(InvalidPassword<T>) then) =
      _$InvalidPasswordCopyWithImpl<T, $Res>;
}

class _$InvalidPasswordCopyWithImpl<T, $Res>
    extends _$AuthFailuresCopyWithImpl<T, $Res>
    implements $InvalidPasswordCopyWith<T, $Res> {
  _$InvalidPasswordCopyWithImpl(
      InvalidPassword<T> _value, $Res Function(InvalidPassword<T>) _then)
      : super(_value, (v) => _then(v as InvalidPassword<T>));

  @override
  InvalidPassword<T> get _value => super._value as InvalidPassword<T>;
}

class _$InvalidPassword<T> implements InvalidPassword<T> {
  const _$InvalidPassword();

  @override
  String toString() {
    return 'AuthFailures<$T>.invalidPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidPassword<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidPassword(),
    @required Result emailNotFound(),
    @required Result serverError(),
    @required Result unexpected(),
  }) {
    assert(invalidPassword != null);
    assert(emailNotFound != null);
    assert(serverError != null);
    assert(unexpected != null);
    return invalidPassword();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidPassword(),
    Result emailNotFound(),
    Result serverError(),
    Result unexpected(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPassword != null) {
      return invalidPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result emailNotFound(EmailNotFound<T> value),
    @required Result serverError(ServerError<T> value),
    @required Result unexpected(Unexpected<T> value),
  }) {
    assert(invalidPassword != null);
    assert(emailNotFound != null);
    assert(serverError != null);
    assert(unexpected != null);
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidPassword(InvalidPassword<T> value),
    Result emailNotFound(EmailNotFound<T> value),
    Result serverError(ServerError<T> value),
    Result unexpected(Unexpected<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidPassword<T> implements AuthFailures<T> {
  const factory InvalidPassword() = _$InvalidPassword<T>;
}

abstract class $EmailNotFoundCopyWith<T, $Res> {
  factory $EmailNotFoundCopyWith(
          EmailNotFound<T> value, $Res Function(EmailNotFound<T>) then) =
      _$EmailNotFoundCopyWithImpl<T, $Res>;
}

class _$EmailNotFoundCopyWithImpl<T, $Res>
    extends _$AuthFailuresCopyWithImpl<T, $Res>
    implements $EmailNotFoundCopyWith<T, $Res> {
  _$EmailNotFoundCopyWithImpl(
      EmailNotFound<T> _value, $Res Function(EmailNotFound<T>) _then)
      : super(_value, (v) => _then(v as EmailNotFound<T>));

  @override
  EmailNotFound<T> get _value => super._value as EmailNotFound<T>;
}

class _$EmailNotFound<T> implements EmailNotFound<T> {
  const _$EmailNotFound();

  @override
  String toString() {
    return 'AuthFailures<$T>.emailNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailNotFound<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidPassword(),
    @required Result emailNotFound(),
    @required Result serverError(),
    @required Result unexpected(),
  }) {
    assert(invalidPassword != null);
    assert(emailNotFound != null);
    assert(serverError != null);
    assert(unexpected != null);
    return emailNotFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidPassword(),
    Result emailNotFound(),
    Result serverError(),
    Result unexpected(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailNotFound != null) {
      return emailNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result emailNotFound(EmailNotFound<T> value),
    @required Result serverError(ServerError<T> value),
    @required Result unexpected(Unexpected<T> value),
  }) {
    assert(invalidPassword != null);
    assert(emailNotFound != null);
    assert(serverError != null);
    assert(unexpected != null);
    return emailNotFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidPassword(InvalidPassword<T> value),
    Result emailNotFound(EmailNotFound<T> value),
    Result serverError(ServerError<T> value),
    Result unexpected(Unexpected<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailNotFound != null) {
      return emailNotFound(this);
    }
    return orElse();
  }
}

abstract class EmailNotFound<T> implements AuthFailures<T> {
  const factory EmailNotFound() = _$EmailNotFound<T>;
}

abstract class $ServerErrorCopyWith<T, $Res> {
  factory $ServerErrorCopyWith(
          ServerError<T> value, $Res Function(ServerError<T>) then) =
      _$ServerErrorCopyWithImpl<T, $Res>;
}

class _$ServerErrorCopyWithImpl<T, $Res>
    extends _$AuthFailuresCopyWithImpl<T, $Res>
    implements $ServerErrorCopyWith<T, $Res> {
  _$ServerErrorCopyWithImpl(
      ServerError<T> _value, $Res Function(ServerError<T>) _then)
      : super(_value, (v) => _then(v as ServerError<T>));

  @override
  ServerError<T> get _value => super._value as ServerError<T>;
}

class _$ServerError<T> implements ServerError<T> {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailures<$T>.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidPassword(),
    @required Result emailNotFound(),
    @required Result serverError(),
    @required Result unexpected(),
  }) {
    assert(invalidPassword != null);
    assert(emailNotFound != null);
    assert(serverError != null);
    assert(unexpected != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidPassword(),
    Result emailNotFound(),
    Result serverError(),
    Result unexpected(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result emailNotFound(EmailNotFound<T> value),
    @required Result serverError(ServerError<T> value),
    @required Result unexpected(Unexpected<T> value),
  }) {
    assert(invalidPassword != null);
    assert(emailNotFound != null);
    assert(serverError != null);
    assert(unexpected != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidPassword(InvalidPassword<T> value),
    Result emailNotFound(EmailNotFound<T> value),
    Result serverError(ServerError<T> value),
    Result unexpected(Unexpected<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError<T> implements AuthFailures<T> {
  const factory ServerError() = _$ServerError<T>;
}

abstract class $UnexpectedCopyWith<T, $Res> {
  factory $UnexpectedCopyWith(
          Unexpected<T> value, $Res Function(Unexpected<T>) then) =
      _$UnexpectedCopyWithImpl<T, $Res>;
}

class _$UnexpectedCopyWithImpl<T, $Res>
    extends _$AuthFailuresCopyWithImpl<T, $Res>
    implements $UnexpectedCopyWith<T, $Res> {
  _$UnexpectedCopyWithImpl(
      Unexpected<T> _value, $Res Function(Unexpected<T>) _then)
      : super(_value, (v) => _then(v as Unexpected<T>));

  @override
  Unexpected<T> get _value => super._value as Unexpected<T>;
}

class _$Unexpected<T> implements Unexpected<T> {
  const _$Unexpected();

  @override
  String toString() {
    return 'AuthFailures<$T>.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unexpected<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidPassword(),
    @required Result emailNotFound(),
    @required Result serverError(),
    @required Result unexpected(),
  }) {
    assert(invalidPassword != null);
    assert(emailNotFound != null);
    assert(serverError != null);
    assert(unexpected != null);
    return unexpected();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidPassword(),
    Result emailNotFound(),
    Result serverError(),
    Result unexpected(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidPassword(InvalidPassword<T> value),
    @required Result emailNotFound(EmailNotFound<T> value),
    @required Result serverError(ServerError<T> value),
    @required Result unexpected(Unexpected<T> value),
  }) {
    assert(invalidPassword != null);
    assert(emailNotFound != null);
    assert(serverError != null);
    assert(unexpected != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidPassword(InvalidPassword<T> value),
    Result emailNotFound(EmailNotFound<T> value),
    Result serverError(ServerError<T> value),
    Result unexpected(Unexpected<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected<T> implements AuthFailures<T> {
  const factory Unexpected() = _$Unexpected<T>;
}
