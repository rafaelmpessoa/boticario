// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginFormEventTearOff {
  const _$LoginFormEventTearOff();

// ignore: unused_element
  _OnSubmit onSubmit({@required String email, @required String password}) {
    return _OnSubmit(
      email: email,
      password: password,
    );
  }

// ignore: unused_element
  _OnChangeInput onChangeInput() {
    return const _OnChangeInput();
  }
}

// ignore: unused_element
const $LoginFormEvent = _$LoginFormEventTearOff();

mixin _$LoginFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onSubmit(String email, String password),
    @required Result onChangeInput(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onSubmit(String email, String password),
    Result onChangeInput(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onSubmit(_OnSubmit value),
    @required Result onChangeInput(_OnChangeInput value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onSubmit(_OnSubmit value),
    Result onChangeInput(_OnChangeInput value),
    @required Result orElse(),
  });
}

abstract class $LoginFormEventCopyWith<$Res> {
  factory $LoginFormEventCopyWith(
          LoginFormEvent value, $Res Function(LoginFormEvent) then) =
      _$LoginFormEventCopyWithImpl<$Res>;
}

class _$LoginFormEventCopyWithImpl<$Res>
    implements $LoginFormEventCopyWith<$Res> {
  _$LoginFormEventCopyWithImpl(this._value, this._then);

  final LoginFormEvent _value;
  // ignore: unused_field
  final $Res Function(LoginFormEvent) _then;
}

abstract class _$OnSubmitCopyWith<$Res> {
  factory _$OnSubmitCopyWith(_OnSubmit value, $Res Function(_OnSubmit) then) =
      __$OnSubmitCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

class __$OnSubmitCopyWithImpl<$Res> extends _$LoginFormEventCopyWithImpl<$Res>
    implements _$OnSubmitCopyWith<$Res> {
  __$OnSubmitCopyWithImpl(_OnSubmit _value, $Res Function(_OnSubmit) _then)
      : super(_value, (v) => _then(v as _OnSubmit));

  @override
  _OnSubmit get _value => super._value as _OnSubmit;

  @override
  $Res call({
    Object email = freezed,
    Object password = freezed,
  }) {
    return _then(_OnSubmit(
      email: email == freezed ? _value.email : email as String,
      password: password == freezed ? _value.password : password as String,
    ));
  }
}

class _$_OnSubmit implements _OnSubmit {
  const _$_OnSubmit({@required this.email, @required this.password})
      : assert(email != null),
        assert(password != null);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginFormEvent.onSubmit(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnSubmit &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @override
  _$OnSubmitCopyWith<_OnSubmit> get copyWith =>
      __$OnSubmitCopyWithImpl<_OnSubmit>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onSubmit(String email, String password),
    @required Result onChangeInput(),
  }) {
    assert(onSubmit != null);
    assert(onChangeInput != null);
    return onSubmit(email, password);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onSubmit(String email, String password),
    Result onChangeInput(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onSubmit != null) {
      return onSubmit(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onSubmit(_OnSubmit value),
    @required Result onChangeInput(_OnChangeInput value),
  }) {
    assert(onSubmit != null);
    assert(onChangeInput != null);
    return onSubmit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onSubmit(_OnSubmit value),
    Result onChangeInput(_OnChangeInput value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onSubmit != null) {
      return onSubmit(this);
    }
    return orElse();
  }
}

abstract class _OnSubmit implements LoginFormEvent {
  const factory _OnSubmit({@required String email, @required String password}) =
      _$_OnSubmit;

  String get email;
  String get password;
  _$OnSubmitCopyWith<_OnSubmit> get copyWith;
}

abstract class _$OnChangeInputCopyWith<$Res> {
  factory _$OnChangeInputCopyWith(
          _OnChangeInput value, $Res Function(_OnChangeInput) then) =
      __$OnChangeInputCopyWithImpl<$Res>;
}

class __$OnChangeInputCopyWithImpl<$Res>
    extends _$LoginFormEventCopyWithImpl<$Res>
    implements _$OnChangeInputCopyWith<$Res> {
  __$OnChangeInputCopyWithImpl(
      _OnChangeInput _value, $Res Function(_OnChangeInput) _then)
      : super(_value, (v) => _then(v as _OnChangeInput));

  @override
  _OnChangeInput get _value => super._value as _OnChangeInput;
}

class _$_OnChangeInput implements _OnChangeInput {
  const _$_OnChangeInput();

  @override
  String toString() {
    return 'LoginFormEvent.onChangeInput()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnChangeInput);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result onSubmit(String email, String password),
    @required Result onChangeInput(),
  }) {
    assert(onSubmit != null);
    assert(onChangeInput != null);
    return onChangeInput();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result onSubmit(String email, String password),
    Result onChangeInput(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onChangeInput != null) {
      return onChangeInput();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result onSubmit(_OnSubmit value),
    @required Result onChangeInput(_OnChangeInput value),
  }) {
    assert(onSubmit != null);
    assert(onChangeInput != null);
    return onChangeInput(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result onSubmit(_OnSubmit value),
    Result onChangeInput(_OnChangeInput value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onChangeInput != null) {
      return onChangeInput(this);
    }
    return orElse();
  }
}

abstract class _OnChangeInput implements LoginFormEvent {
  const factory _OnChangeInput() = _$_OnChangeInput;
}

class _$LoginFormStateTearOff {
  const _$LoginFormStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Success success(User user) {
    return _Success(
      user,
    );
  }

// ignore: unused_element
  _Error error(AuthFailures<dynamic> failures) {
    return _Error(
      failures,
    );
  }
}

// ignore: unused_element
const $LoginFormState = _$LoginFormStateTearOff();

mixin _$LoginFormState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result success(User user),
    @required Result error(AuthFailures<dynamic> failures),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result success(User user),
    Result error(AuthFailures<dynamic> failures),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result success(_Success value),
    Result error(_Error value),
    @required Result orElse(),
  });
}

abstract class $LoginFormStateCopyWith<$Res> {
  factory $LoginFormStateCopyWith(
          LoginFormState value, $Res Function(LoginFormState) then) =
      _$LoginFormStateCopyWithImpl<$Res>;
}

class _$LoginFormStateCopyWithImpl<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  _$LoginFormStateCopyWithImpl(this._value, this._then);

  final LoginFormState _value;
  // ignore: unused_field
  final $Res Function(LoginFormState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$LoginFormStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'LoginFormState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result success(User user),
    @required Result error(AuthFailures<dynamic> failures),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result success(User user),
    Result error(AuthFailures<dynamic> failures),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result success(_Success value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginFormState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

class __$LoadingCopyWithImpl<$Res> extends _$LoginFormStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'LoginFormState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result success(User user),
    @required Result error(AuthFailures<dynamic> failures),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result success(User user),
    Result error(AuthFailures<dynamic> failures),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result success(_Success value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LoginFormState {
  const factory _Loading() = _$_Loading;
}

abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

class __$SuccessCopyWithImpl<$Res> extends _$LoginFormStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_Success(
      user == freezed ? _value.user : user as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

class _$_Success implements _Success {
  const _$_Success(this.user) : assert(user != null);

  @override
  final User user;

  @override
  String toString() {
    return 'LoginFormState.success(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result success(User user),
    @required Result error(AuthFailures<dynamic> failures),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result success(User user),
    Result error(AuthFailures<dynamic> failures),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result success(_Success value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements LoginFormState {
  const factory _Success(User user) = _$_Success;

  User get user;
  _$SuccessCopyWith<_Success> get copyWith;
}

abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({AuthFailures<dynamic> failures});

  $AuthFailuresCopyWith<dynamic, $Res> get failures;
}

class __$ErrorCopyWithImpl<$Res> extends _$LoginFormStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object failures = freezed,
  }) {
    return _then(_Error(
      failures == freezed ? _value.failures : failures as AuthFailures<dynamic>,
    ));
  }

  @override
  $AuthFailuresCopyWith<dynamic, $Res> get failures {
    if (_value.failures == null) {
      return null;
    }
    return $AuthFailuresCopyWith<dynamic, $Res>(_value.failures, (value) {
      return _then(_value.copyWith(failures: value));
    });
  }
}

class _$_Error implements _Error {
  const _$_Error(this.failures) : assert(failures != null);

  @override
  final AuthFailures<dynamic> failures;

  @override
  String toString() {
    return 'LoginFormState.error(failures: $failures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.failures, failures) ||
                const DeepCollectionEquality()
                    .equals(other.failures, failures)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failures);

  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result success(User user),
    @required Result error(AuthFailures<dynamic> failures),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error(failures);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result success(User user),
    Result error(AuthFailures<dynamic> failures),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(failures);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result success(_Success value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result success(_Success value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LoginFormState {
  const factory _Error(AuthFailures<dynamic> failures) = _$_Error;

  AuthFailures<dynamic> get failures;
  _$ErrorCopyWith<_Error> get copyWith;
}
