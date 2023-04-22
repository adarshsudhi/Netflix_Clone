// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comingsoon_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ComingsoonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getComingsoon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getComingsoon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getComingsoon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetComingsoon value) getComingsoon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetComingsoon value)? getComingsoon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetComingsoon value)? getComingsoon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComingsoonEventCopyWith<$Res> {
  factory $ComingsoonEventCopyWith(
          ComingsoonEvent value, $Res Function(ComingsoonEvent) then) =
      _$ComingsoonEventCopyWithImpl<$Res, ComingsoonEvent>;
}

/// @nodoc
class _$ComingsoonEventCopyWithImpl<$Res, $Val extends ComingsoonEvent>
    implements $ComingsoonEventCopyWith<$Res> {
  _$ComingsoonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetComingsoonCopyWith<$Res> {
  factory _$$_GetComingsoonCopyWith(
          _$_GetComingsoon value, $Res Function(_$_GetComingsoon) then) =
      __$$_GetComingsoonCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetComingsoonCopyWithImpl<$Res>
    extends _$ComingsoonEventCopyWithImpl<$Res, _$_GetComingsoon>
    implements _$$_GetComingsoonCopyWith<$Res> {
  __$$_GetComingsoonCopyWithImpl(
      _$_GetComingsoon _value, $Res Function(_$_GetComingsoon) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetComingsoon implements _GetComingsoon {
  const _$_GetComingsoon();

  @override
  String toString() {
    return 'ComingsoonEvent.getComingsoon()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetComingsoon);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getComingsoon,
  }) {
    return getComingsoon();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getComingsoon,
  }) {
    return getComingsoon?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getComingsoon,
    required TResult orElse(),
  }) {
    if (getComingsoon != null) {
      return getComingsoon();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetComingsoon value) getComingsoon,
  }) {
    return getComingsoon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetComingsoon value)? getComingsoon,
  }) {
    return getComingsoon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetComingsoon value)? getComingsoon,
    required TResult orElse(),
  }) {
    if (getComingsoon != null) {
      return getComingsoon(this);
    }
    return orElse();
  }
}

abstract class _GetComingsoon implements ComingsoonEvent {
  const factory _GetComingsoon() = _$_GetComingsoon;
}

/// @nodoc
mixin _$ComingsoonState {
  bool get isloading => throw _privateConstructorUsedError;
  bool get iserror => throw _privateConstructorUsedError;
  List<Comingsoonmodel> get comingsoon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComingsoonStateCopyWith<ComingsoonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComingsoonStateCopyWith<$Res> {
  factory $ComingsoonStateCopyWith(
          ComingsoonState value, $Res Function(ComingsoonState) then) =
      _$ComingsoonStateCopyWithImpl<$Res, ComingsoonState>;
  @useResult
  $Res call({bool isloading, bool iserror, List<Comingsoonmodel> comingsoon});
}

/// @nodoc
class _$ComingsoonStateCopyWithImpl<$Res, $Val extends ComingsoonState>
    implements $ComingsoonStateCopyWith<$Res> {
  _$ComingsoonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? iserror = null,
    Object? comingsoon = null,
  }) {
    return _then(_value.copyWith(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      iserror: null == iserror
          ? _value.iserror
          : iserror // ignore: cast_nullable_to_non_nullable
              as bool,
      comingsoon: null == comingsoon
          ? _value.comingsoon
          : comingsoon // ignore: cast_nullable_to_non_nullable
              as List<Comingsoonmodel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ComingsoonStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isloading, bool iserror, List<Comingsoonmodel> comingsoon});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ComingsoonStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? iserror = null,
    Object? comingsoon = null,
  }) {
    return _then(_$_Initial(
      null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      null == iserror
          ? _value.iserror
          : iserror // ignore: cast_nullable_to_non_nullable
              as bool,
      null == comingsoon
          ? _value._comingsoon
          : comingsoon // ignore: cast_nullable_to_non_nullable
              as List<Comingsoonmodel>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      this.isloading, this.iserror, final List<Comingsoonmodel> comingsoon)
      : _comingsoon = comingsoon;

  @override
  final bool isloading;
  @override
  final bool iserror;
  final List<Comingsoonmodel> _comingsoon;
  @override
  List<Comingsoonmodel> get comingsoon {
    if (_comingsoon is EqualUnmodifiableListView) return _comingsoon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comingsoon);
  }

  @override
  String toString() {
    return 'ComingsoonState(isloading: $isloading, iserror: $iserror, comingsoon: $comingsoon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.iserror, iserror) || other.iserror == iserror) &&
            const DeepCollectionEquality()
                .equals(other._comingsoon, _comingsoon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isloading, iserror,
      const DeepCollectionEquality().hash(_comingsoon));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements ComingsoonState {
  const factory _Initial(final bool isloading, final bool iserror,
      final List<Comingsoonmodel> comingsoon) = _$_Initial;

  @override
  bool get isloading;
  @override
  bool get iserror;
  @override
  List<Comingsoonmodel> get comingsoon;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
