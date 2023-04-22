// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverfail,
    required TResult Function() clientfail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverfail,
    TResult? Function()? clientfail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverfail,
    TResult Function()? clientfail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Serverfail value) serverfail,
    required TResult Function(_Clientfail value) clientfail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Serverfail value)? serverfail,
    TResult? Function(_Clientfail value)? clientfail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Serverfail value)? serverfail,
    TResult Function(_Clientfail value)? clientfail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainFailureCopyWith<$Res> {
  factory $MainFailureCopyWith(
          MainFailure value, $Res Function(MainFailure) then) =
      _$MainFailureCopyWithImpl<$Res, MainFailure>;
}

/// @nodoc
class _$MainFailureCopyWithImpl<$Res, $Val extends MainFailure>
    implements $MainFailureCopyWith<$Res> {
  _$MainFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ServerfailCopyWith<$Res> {
  factory _$$_ServerfailCopyWith(
          _$_Serverfail value, $Res Function(_$_Serverfail) then) =
      __$$_ServerfailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServerfailCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$_Serverfail>
    implements _$$_ServerfailCopyWith<$Res> {
  __$$_ServerfailCopyWithImpl(
      _$_Serverfail _value, $Res Function(_$_Serverfail) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Serverfail implements _Serverfail {
  const _$_Serverfail();

  @override
  String toString() {
    return 'MainFailure.serverfail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Serverfail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverfail,
    required TResult Function() clientfail,
  }) {
    return serverfail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverfail,
    TResult? Function()? clientfail,
  }) {
    return serverfail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverfail,
    TResult Function()? clientfail,
    required TResult orElse(),
  }) {
    if (serverfail != null) {
      return serverfail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Serverfail value) serverfail,
    required TResult Function(_Clientfail value) clientfail,
  }) {
    return serverfail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Serverfail value)? serverfail,
    TResult? Function(_Clientfail value)? clientfail,
  }) {
    return serverfail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Serverfail value)? serverfail,
    TResult Function(_Clientfail value)? clientfail,
    required TResult orElse(),
  }) {
    if (serverfail != null) {
      return serverfail(this);
    }
    return orElse();
  }
}

abstract class _Serverfail implements MainFailure {
  const factory _Serverfail() = _$_Serverfail;
}

/// @nodoc
abstract class _$$_ClientfailCopyWith<$Res> {
  factory _$$_ClientfailCopyWith(
          _$_Clientfail value, $Res Function(_$_Clientfail) then) =
      __$$_ClientfailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClientfailCopyWithImpl<$Res>
    extends _$MainFailureCopyWithImpl<$Res, _$_Clientfail>
    implements _$$_ClientfailCopyWith<$Res> {
  __$$_ClientfailCopyWithImpl(
      _$_Clientfail _value, $Res Function(_$_Clientfail) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Clientfail implements _Clientfail {
  const _$_Clientfail();

  @override
  String toString() {
    return 'MainFailure.clientfail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Clientfail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverfail,
    required TResult Function() clientfail,
  }) {
    return clientfail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverfail,
    TResult? Function()? clientfail,
  }) {
    return clientfail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverfail,
    TResult Function()? clientfail,
    required TResult orElse(),
  }) {
    if (clientfail != null) {
      return clientfail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Serverfail value) serverfail,
    required TResult Function(_Clientfail value) clientfail,
  }) {
    return clientfail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Serverfail value)? serverfail,
    TResult? Function(_Clientfail value)? clientfail,
  }) {
    return clientfail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Serverfail value)? serverfail,
    TResult Function(_Clientfail value)? clientfail,
    required TResult orElse(),
  }) {
    if (clientfail != null) {
      return clientfail(this);
    }
    return orElse();
  }
}

abstract class _Clientfail implements MainFailure {
  const factory _Clientfail() = _$_Clientfail;
}
