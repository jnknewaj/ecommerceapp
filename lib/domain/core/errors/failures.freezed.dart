// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailuresTearOff {
  const _$FailuresTearOff();

  _ServerFailure serverFailure() {
    return const _ServerFailure();
  }

  _NetworkFailure networkFailure() {
    return const _NetworkFailure();
  }

  _CacheFailure cacheFailure() {
    return const _CacheFailure();
  }

  _UnexpectedFailure unexpectedFailure(String msg) {
    return _UnexpectedFailure(
      msg,
    );
  }
}

/// @nodoc
const $Failures = _$FailuresTearOff();

/// @nodoc
mixin _$Failures {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() cacheFailure,
    required TResult Function(String msg) unexpectedFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? cacheFailure,
    TResult Function(String msg)? unexpectedFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_UnexpectedFailure value) unexpectedFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_UnexpectedFailure value)? unexpectedFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailuresCopyWith<$Res> {
  factory $FailuresCopyWith(Failures value, $Res Function(Failures) then) =
      _$FailuresCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailuresCopyWithImpl<$Res> implements $FailuresCopyWith<$Res> {
  _$FailuresCopyWithImpl(this._value, this._then);

  final Failures _value;
  // ignore: unused_field
  final $Res Function(Failures) _then;
}

/// @nodoc
abstract class _$ServerFailureCopyWith<$Res> {
  factory _$ServerFailureCopyWith(
          _ServerFailure value, $Res Function(_ServerFailure) then) =
      __$ServerFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServerFailureCopyWithImpl<$Res> extends _$FailuresCopyWithImpl<$Res>
    implements _$ServerFailureCopyWith<$Res> {
  __$ServerFailureCopyWithImpl(
      _ServerFailure _value, $Res Function(_ServerFailure) _then)
      : super(_value, (v) => _then(v as _ServerFailure));

  @override
  _ServerFailure get _value => super._value as _ServerFailure;
}

/// @nodoc

class _$_ServerFailure implements _ServerFailure {
  const _$_ServerFailure();

  @override
  String toString() {
    return 'Failures.serverFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ServerFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() cacheFailure,
    required TResult Function(String msg) unexpectedFailure,
  }) {
    return serverFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? cacheFailure,
    TResult Function(String msg)? unexpectedFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_UnexpectedFailure value) unexpectedFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_UnexpectedFailure value)? unexpectedFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements Failures {
  const factory _ServerFailure() = _$_ServerFailure;
}

/// @nodoc
abstract class _$NetworkFailureCopyWith<$Res> {
  factory _$NetworkFailureCopyWith(
          _NetworkFailure value, $Res Function(_NetworkFailure) then) =
      __$NetworkFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$NetworkFailureCopyWithImpl<$Res> extends _$FailuresCopyWithImpl<$Res>
    implements _$NetworkFailureCopyWith<$Res> {
  __$NetworkFailureCopyWithImpl(
      _NetworkFailure _value, $Res Function(_NetworkFailure) _then)
      : super(_value, (v) => _then(v as _NetworkFailure));

  @override
  _NetworkFailure get _value => super._value as _NetworkFailure;
}

/// @nodoc

class _$_NetworkFailure implements _NetworkFailure {
  const _$_NetworkFailure();

  @override
  String toString() {
    return 'Failures.networkFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NetworkFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() cacheFailure,
    required TResult Function(String msg) unexpectedFailure,
  }) {
    return networkFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? cacheFailure,
    TResult Function(String msg)? unexpectedFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_UnexpectedFailure value) unexpectedFailure,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_UnexpectedFailure value)? unexpectedFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class _NetworkFailure implements Failures {
  const factory _NetworkFailure() = _$_NetworkFailure;
}

/// @nodoc
abstract class _$CacheFailureCopyWith<$Res> {
  factory _$CacheFailureCopyWith(
          _CacheFailure value, $Res Function(_CacheFailure) then) =
      __$CacheFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$CacheFailureCopyWithImpl<$Res> extends _$FailuresCopyWithImpl<$Res>
    implements _$CacheFailureCopyWith<$Res> {
  __$CacheFailureCopyWithImpl(
      _CacheFailure _value, $Res Function(_CacheFailure) _then)
      : super(_value, (v) => _then(v as _CacheFailure));

  @override
  _CacheFailure get _value => super._value as _CacheFailure;
}

/// @nodoc

class _$_CacheFailure implements _CacheFailure {
  const _$_CacheFailure();

  @override
  String toString() {
    return 'Failures.cacheFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CacheFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() cacheFailure,
    required TResult Function(String msg) unexpectedFailure,
  }) {
    return cacheFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? cacheFailure,
    TResult Function(String msg)? unexpectedFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_UnexpectedFailure value) unexpectedFailure,
  }) {
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_UnexpectedFailure value)? unexpectedFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class _CacheFailure implements Failures {
  const factory _CacheFailure() = _$_CacheFailure;
}

/// @nodoc
abstract class _$UnexpectedFailureCopyWith<$Res> {
  factory _$UnexpectedFailureCopyWith(
          _UnexpectedFailure value, $Res Function(_UnexpectedFailure) then) =
      __$UnexpectedFailureCopyWithImpl<$Res>;
  $Res call({String msg});
}

/// @nodoc
class __$UnexpectedFailureCopyWithImpl<$Res>
    extends _$FailuresCopyWithImpl<$Res>
    implements _$UnexpectedFailureCopyWith<$Res> {
  __$UnexpectedFailureCopyWithImpl(
      _UnexpectedFailure _value, $Res Function(_UnexpectedFailure) _then)
      : super(_value, (v) => _then(v as _UnexpectedFailure));

  @override
  _UnexpectedFailure get _value => super._value as _UnexpectedFailure;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_UnexpectedFailure(
      msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UnexpectedFailure implements _UnexpectedFailure {
  const _$_UnexpectedFailure(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'Failures.unexpectedFailure(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnexpectedFailure &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$UnexpectedFailureCopyWith<_UnexpectedFailure> get copyWith =>
      __$UnexpectedFailureCopyWithImpl<_UnexpectedFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverFailure,
    required TResult Function() networkFailure,
    required TResult Function() cacheFailure,
    required TResult Function(String msg) unexpectedFailure,
  }) {
    return unexpectedFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverFailure,
    TResult Function()? networkFailure,
    TResult Function()? cacheFailure,
    TResult Function(String msg)? unexpectedFailure,
    required TResult orElse(),
  }) {
    if (unexpectedFailure != null) {
      return unexpectedFailure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_NetworkFailure value) networkFailure,
    required TResult Function(_CacheFailure value) cacheFailure,
    required TResult Function(_UnexpectedFailure value) unexpectedFailure,
  }) {
    return unexpectedFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_NetworkFailure value)? networkFailure,
    TResult Function(_CacheFailure value)? cacheFailure,
    TResult Function(_UnexpectedFailure value)? unexpectedFailure,
    required TResult orElse(),
  }) {
    if (unexpectedFailure != null) {
      return unexpectedFailure(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedFailure implements Failures {
  const factory _UnexpectedFailure(String msg) = _$_UnexpectedFailure;

  String get msg => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UnexpectedFailureCopyWith<_UnexpectedFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
