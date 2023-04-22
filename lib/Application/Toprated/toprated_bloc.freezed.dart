// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toprated_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TopratedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getToprated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getToprated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getToprated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetToprated value) getToprated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetToprated value)? getToprated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetToprated value)? getToprated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopratedEventCopyWith<$Res> {
  factory $TopratedEventCopyWith(
          TopratedEvent value, $Res Function(TopratedEvent) then) =
      _$TopratedEventCopyWithImpl<$Res, TopratedEvent>;
}

/// @nodoc
class _$TopratedEventCopyWithImpl<$Res, $Val extends TopratedEvent>
    implements $TopratedEventCopyWith<$Res> {
  _$TopratedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetTopratedCopyWith<$Res> {
  factory _$$_GetTopratedCopyWith(
          _$_GetToprated value, $Res Function(_$_GetToprated) then) =
      __$$_GetTopratedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetTopratedCopyWithImpl<$Res>
    extends _$TopratedEventCopyWithImpl<$Res, _$_GetToprated>
    implements _$$_GetTopratedCopyWith<$Res> {
  __$$_GetTopratedCopyWithImpl(
      _$_GetToprated _value, $Res Function(_$_GetToprated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetToprated implements _GetToprated {
  const _$_GetToprated();

  @override
  String toString() {
    return 'TopratedEvent.getToprated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetToprated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getToprated,
  }) {
    return getToprated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getToprated,
  }) {
    return getToprated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getToprated,
    required TResult orElse(),
  }) {
    if (getToprated != null) {
      return getToprated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetToprated value) getToprated,
  }) {
    return getToprated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetToprated value)? getToprated,
  }) {
    return getToprated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetToprated value)? getToprated,
    required TResult orElse(),
  }) {
    if (getToprated != null) {
      return getToprated(this);
    }
    return orElse();
  }
}

abstract class _GetToprated implements TopratedEvent {
  const factory _GetToprated() = _$_GetToprated;
}

/// @nodoc
mixin _$TopratedState {
  bool get isloading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  List<TopratedModel> get Topratedlist => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopratedStateCopyWith<TopratedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopratedStateCopyWith<$Res> {
  factory $TopratedStateCopyWith(
          TopratedState value, $Res Function(TopratedState) then) =
      _$TopratedStateCopyWithImpl<$Res, TopratedState>;
  @useResult
  $Res call({bool isloading, bool error, List<TopratedModel> Topratedlist});
}

/// @nodoc
class _$TopratedStateCopyWithImpl<$Res, $Val extends TopratedState>
    implements $TopratedStateCopyWith<$Res> {
  _$TopratedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? error = null,
    Object? Topratedlist = null,
  }) {
    return _then(_value.copyWith(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      Topratedlist: null == Topratedlist
          ? _value.Topratedlist
          : Topratedlist // ignore: cast_nullable_to_non_nullable
              as List<TopratedModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $TopratedStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isloading, bool error, List<TopratedModel> Topratedlist});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$TopratedStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? error = null,
    Object? Topratedlist = null,
  }) {
    return _then(_$_Initial(
      null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      null == Topratedlist
          ? _value._Topratedlist
          : Topratedlist // ignore: cast_nullable_to_non_nullable
              as List<TopratedModel>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      this.isloading, this.error, final List<TopratedModel> Topratedlist)
      : _Topratedlist = Topratedlist;

  @override
  final bool isloading;
  @override
  final bool error;
  final List<TopratedModel> _Topratedlist;
  @override
  List<TopratedModel> get Topratedlist {
    if (_Topratedlist is EqualUnmodifiableListView) return _Topratedlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_Topratedlist);
  }

  @override
  String toString() {
    return 'TopratedState(isloading: $isloading, error: $error, Topratedlist: $Topratedlist)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality()
                .equals(other._Topratedlist, _Topratedlist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isloading, error,
      const DeepCollectionEquality().hash(_Topratedlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements TopratedState {
  const factory _Initial(final bool isloading, final bool error,
      final List<TopratedModel> Topratedlist) = _$_Initial;

  @override
  bool get isloading;
  @override
  bool get error;
  @override
  List<TopratedModel> get Topratedlist;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
