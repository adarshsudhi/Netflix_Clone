// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'everyones_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EveryonesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEveryones,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEveryones,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEveryones,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEveryones value) getEveryones,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEveryones value)? getEveryones,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEveryones value)? getEveryones,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EveryonesEventCopyWith<$Res> {
  factory $EveryonesEventCopyWith(
          EveryonesEvent value, $Res Function(EveryonesEvent) then) =
      _$EveryonesEventCopyWithImpl<$Res, EveryonesEvent>;
}

/// @nodoc
class _$EveryonesEventCopyWithImpl<$Res, $Val extends EveryonesEvent>
    implements $EveryonesEventCopyWith<$Res> {
  _$EveryonesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetEveryonesCopyWith<$Res> {
  factory _$$_GetEveryonesCopyWith(
          _$_GetEveryones value, $Res Function(_$_GetEveryones) then) =
      __$$_GetEveryonesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetEveryonesCopyWithImpl<$Res>
    extends _$EveryonesEventCopyWithImpl<$Res, _$_GetEveryones>
    implements _$$_GetEveryonesCopyWith<$Res> {
  __$$_GetEveryonesCopyWithImpl(
      _$_GetEveryones _value, $Res Function(_$_GetEveryones) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetEveryones implements _GetEveryones {
  const _$_GetEveryones();

  @override
  String toString() {
    return 'EveryonesEvent.getEveryones()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetEveryones);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEveryones,
  }) {
    return getEveryones();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEveryones,
  }) {
    return getEveryones?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEveryones,
    required TResult orElse(),
  }) {
    if (getEveryones != null) {
      return getEveryones();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEveryones value) getEveryones,
  }) {
    return getEveryones(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEveryones value)? getEveryones,
  }) {
    return getEveryones?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEveryones value)? getEveryones,
    required TResult orElse(),
  }) {
    if (getEveryones != null) {
      return getEveryones(this);
    }
    return orElse();
  }
}

abstract class _GetEveryones implements EveryonesEvent {
  const factory _GetEveryones() = _$_GetEveryones;
}

/// @nodoc
mixin _$EveryonesState {
  bool get isloading => throw _privateConstructorUsedError;
  bool get erroroccured => throw _privateConstructorUsedError;
  List<EveryOnesmodel> get Everyones => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EveryonesStateCopyWith<EveryonesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EveryonesStateCopyWith<$Res> {
  factory $EveryonesStateCopyWith(
          EveryonesState value, $Res Function(EveryonesState) then) =
      _$EveryonesStateCopyWithImpl<$Res, EveryonesState>;
  @useResult
  $Res call(
      {bool isloading, bool erroroccured, List<EveryOnesmodel> Everyones});
}

/// @nodoc
class _$EveryonesStateCopyWithImpl<$Res, $Val extends EveryonesState>
    implements $EveryonesStateCopyWith<$Res> {
  _$EveryonesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? erroroccured = null,
    Object? Everyones = null,
  }) {
    return _then(_value.copyWith(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      erroroccured: null == erroroccured
          ? _value.erroroccured
          : erroroccured // ignore: cast_nullable_to_non_nullable
              as bool,
      Everyones: null == Everyones
          ? _value.Everyones
          : Everyones // ignore: cast_nullable_to_non_nullable
              as List<EveryOnesmodel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $EveryonesStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isloading, bool erroroccured, List<EveryOnesmodel> Everyones});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$EveryonesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? erroroccured = null,
    Object? Everyones = null,
  }) {
    return _then(_$_Initial(
      null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      null == erroroccured
          ? _value.erroroccured
          : erroroccured // ignore: cast_nullable_to_non_nullable
              as bool,
      null == Everyones
          ? _value._Everyones
          : Everyones // ignore: cast_nullable_to_non_nullable
              as List<EveryOnesmodel>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      this.isloading, this.erroroccured, final List<EveryOnesmodel> Everyones)
      : _Everyones = Everyones;

  @override
  final bool isloading;
  @override
  final bool erroroccured;
  final List<EveryOnesmodel> _Everyones;
  @override
  List<EveryOnesmodel> get Everyones {
    if (_Everyones is EqualUnmodifiableListView) return _Everyones;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_Everyones);
  }

  @override
  String toString() {
    return 'EveryonesState(isloading: $isloading, erroroccured: $erroroccured, Everyones: $Everyones)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.erroroccured, erroroccured) ||
                other.erroroccured == erroroccured) &&
            const DeepCollectionEquality()
                .equals(other._Everyones, _Everyones));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isloading, erroroccured,
      const DeepCollectionEquality().hash(_Everyones));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements EveryonesState {
  const factory _Initial(final bool isloading, final bool erroroccured,
      final List<EveryOnesmodel> Everyones) = _$_Initial;

  @override
  bool get isloading;
  @override
  bool get erroroccured;
  @override
  List<EveryOnesmodel> get Everyones;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
