// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'new_shops_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewShopsWatcherEventTearOff {
  const _$NewShopsWatcherEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $NewShopsWatcherEvent = _$NewShopsWatcherEventTearOff();

/// @nodoc
mixin _$NewShopsWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewShopsWatcherEventCopyWith<$Res> {
  factory $NewShopsWatcherEventCopyWith(NewShopsWatcherEvent value,
          $Res Function(NewShopsWatcherEvent) then) =
      _$NewShopsWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewShopsWatcherEventCopyWithImpl<$Res>
    implements $NewShopsWatcherEventCopyWith<$Res> {
  _$NewShopsWatcherEventCopyWithImpl(this._value, this._then);

  final NewShopsWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(NewShopsWatcherEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$NewShopsWatcherEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'NewShopsWatcherEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements NewShopsWatcherEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$NewShopsWatcherStateTearOff {
  const _$NewShopsWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(List<Shop> shops) {
    return _Loaded(
      shops,
    );
  }

  _FailedToLoad failedToLoad(Failures failures) {
    return _FailedToLoad(
      failures,
    );
  }
}

/// @nodoc
const $NewShopsWatcherState = _$NewShopsWatcherStateTearOff();

/// @nodoc
mixin _$NewShopsWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Shop> shops) loaded,
    required TResult Function(Failures failures) failedToLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Shop> shops)? loaded,
    TResult Function(Failures failures)? failedToLoad,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_FailedToLoad value) failedToLoad,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_FailedToLoad value)? failedToLoad,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewShopsWatcherStateCopyWith<$Res> {
  factory $NewShopsWatcherStateCopyWith(NewShopsWatcherState value,
          $Res Function(NewShopsWatcherState) then) =
      _$NewShopsWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewShopsWatcherStateCopyWithImpl<$Res>
    implements $NewShopsWatcherStateCopyWith<$Res> {
  _$NewShopsWatcherStateCopyWithImpl(this._value, this._then);

  final NewShopsWatcherState _value;
  // ignore: unused_field
  final $Res Function(NewShopsWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$NewShopsWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NewShopsWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Shop> shops) loaded,
    required TResult Function(Failures failures) failedToLoad,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Shop> shops)? loaded,
    TResult Function(Failures failures)? failedToLoad,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_FailedToLoad value) failedToLoad,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_FailedToLoad value)? failedToLoad,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NewShopsWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$NewShopsWatcherStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'NewShopsWatcherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Shop> shops) loaded,
    required TResult Function(Failures failures) failedToLoad,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Shop> shops)? loaded,
    TResult Function(Failures failures)? failedToLoad,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_FailedToLoad value) failedToLoad,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_FailedToLoad value)? failedToLoad,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NewShopsWatcherState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<Shop> shops});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    extends _$NewShopsWatcherStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? shops = freezed,
  }) {
    return _then(_Loaded(
      shops == freezed
          ? _value.shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<Shop>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.shops);

  @override
  final List<Shop> shops;

  @override
  String toString() {
    return 'NewShopsWatcherState.loaded(shops: $shops)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.shops, shops) ||
                const DeepCollectionEquality().equals(other.shops, shops)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(shops);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Shop> shops) loaded,
    required TResult Function(Failures failures) failedToLoad,
  }) {
    return loaded(shops);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Shop> shops)? loaded,
    TResult Function(Failures failures)? failedToLoad,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(shops);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_FailedToLoad value) failedToLoad,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_FailedToLoad value)? failedToLoad,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements NewShopsWatcherState {
  const factory _Loaded(List<Shop> shops) = _$_Loaded;

  List<Shop> get shops => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailedToLoadCopyWith<$Res> {
  factory _$FailedToLoadCopyWith(
          _FailedToLoad value, $Res Function(_FailedToLoad) then) =
      __$FailedToLoadCopyWithImpl<$Res>;
  $Res call({Failures failures});

  $FailuresCopyWith<$Res> get failures;
}

/// @nodoc
class __$FailedToLoadCopyWithImpl<$Res>
    extends _$NewShopsWatcherStateCopyWithImpl<$Res>
    implements _$FailedToLoadCopyWith<$Res> {
  __$FailedToLoadCopyWithImpl(
      _FailedToLoad _value, $Res Function(_FailedToLoad) _then)
      : super(_value, (v) => _then(v as _FailedToLoad));

  @override
  _FailedToLoad get _value => super._value as _FailedToLoad;

  @override
  $Res call({
    Object? failures = freezed,
  }) {
    return _then(_FailedToLoad(
      failures == freezed
          ? _value.failures
          : failures // ignore: cast_nullable_to_non_nullable
              as Failures,
    ));
  }

  @override
  $FailuresCopyWith<$Res> get failures {
    return $FailuresCopyWith<$Res>(_value.failures, (value) {
      return _then(_value.copyWith(failures: value));
    });
  }
}

/// @nodoc

class _$_FailedToLoad implements _FailedToLoad {
  const _$_FailedToLoad(this.failures);

  @override
  final Failures failures;

  @override
  String toString() {
    return 'NewShopsWatcherState.failedToLoad(failures: $failures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FailedToLoad &&
            (identical(other.failures, failures) ||
                const DeepCollectionEquality()
                    .equals(other.failures, failures)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failures);

  @JsonKey(ignore: true)
  @override
  _$FailedToLoadCopyWith<_FailedToLoad> get copyWith =>
      __$FailedToLoadCopyWithImpl<_FailedToLoad>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Shop> shops) loaded,
    required TResult Function(Failures failures) failedToLoad,
  }) {
    return failedToLoad(failures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Shop> shops)? loaded,
    TResult Function(Failures failures)? failedToLoad,
    required TResult orElse(),
  }) {
    if (failedToLoad != null) {
      return failedToLoad(failures);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_FailedToLoad value) failedToLoad,
  }) {
    return failedToLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_FailedToLoad value)? failedToLoad,
    required TResult orElse(),
  }) {
    if (failedToLoad != null) {
      return failedToLoad(this);
    }
    return orElse();
  }
}

abstract class _FailedToLoad implements NewShopsWatcherState {
  const factory _FailedToLoad(Failures failures) = _$_FailedToLoad;

  Failures get failures => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailedToLoadCopyWith<_FailedToLoad> get copyWith =>
      throw _privateConstructorUsedError;
}
