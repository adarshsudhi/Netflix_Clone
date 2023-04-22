// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_actors_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetActorsEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getActorsImage,
    required TResult Function(int id) getMovieActors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getActorsImage,
    TResult? Function(int id)? getMovieActors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getActorsImage,
    TResult Function(int id)? getMovieActors,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetActorsImage value) getActorsImage,
    required TResult Function(_GetMovieActors value) getMovieActors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetActorsImage value)? getActorsImage,
    TResult? Function(_GetMovieActors value)? getMovieActors,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetActorsImage value)? getActorsImage,
    TResult Function(_GetMovieActors value)? getMovieActors,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetActorsEventCopyWith<GetActorsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetActorsEventCopyWith<$Res> {
  factory $GetActorsEventCopyWith(
          GetActorsEvent value, $Res Function(GetActorsEvent) then) =
      _$GetActorsEventCopyWithImpl<$Res, GetActorsEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$GetActorsEventCopyWithImpl<$Res, $Val extends GetActorsEvent>
    implements $GetActorsEventCopyWith<$Res> {
  _$GetActorsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetActorsImageCopyWith<$Res>
    implements $GetActorsEventCopyWith<$Res> {
  factory _$$_GetActorsImageCopyWith(
          _$_GetActorsImage value, $Res Function(_$_GetActorsImage) then) =
      __$$_GetActorsImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_GetActorsImageCopyWithImpl<$Res>
    extends _$GetActorsEventCopyWithImpl<$Res, _$_GetActorsImage>
    implements _$$_GetActorsImageCopyWith<$Res> {
  __$$_GetActorsImageCopyWithImpl(
      _$_GetActorsImage _value, $Res Function(_$_GetActorsImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_GetActorsImage(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetActorsImage implements _GetActorsImage {
  const _$_GetActorsImage(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'GetActorsEvent.getActorsImage(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetActorsImage &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetActorsImageCopyWith<_$_GetActorsImage> get copyWith =>
      __$$_GetActorsImageCopyWithImpl<_$_GetActorsImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getActorsImage,
    required TResult Function(int id) getMovieActors,
  }) {
    return getActorsImage(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getActorsImage,
    TResult? Function(int id)? getMovieActors,
  }) {
    return getActorsImage?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getActorsImage,
    TResult Function(int id)? getMovieActors,
    required TResult orElse(),
  }) {
    if (getActorsImage != null) {
      return getActorsImage(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetActorsImage value) getActorsImage,
    required TResult Function(_GetMovieActors value) getMovieActors,
  }) {
    return getActorsImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetActorsImage value)? getActorsImage,
    TResult? Function(_GetMovieActors value)? getMovieActors,
  }) {
    return getActorsImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetActorsImage value)? getActorsImage,
    TResult Function(_GetMovieActors value)? getMovieActors,
    required TResult orElse(),
  }) {
    if (getActorsImage != null) {
      return getActorsImage(this);
    }
    return orElse();
  }
}

abstract class _GetActorsImage implements GetActorsEvent {
  const factory _GetActorsImage(final int id) = _$_GetActorsImage;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_GetActorsImageCopyWith<_$_GetActorsImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetMovieActorsCopyWith<$Res>
    implements $GetActorsEventCopyWith<$Res> {
  factory _$$_GetMovieActorsCopyWith(
          _$_GetMovieActors value, $Res Function(_$_GetMovieActors) then) =
      __$$_GetMovieActorsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_GetMovieActorsCopyWithImpl<$Res>
    extends _$GetActorsEventCopyWithImpl<$Res, _$_GetMovieActors>
    implements _$$_GetMovieActorsCopyWith<$Res> {
  __$$_GetMovieActorsCopyWithImpl(
      _$_GetMovieActors _value, $Res Function(_$_GetMovieActors) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_GetMovieActors(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetMovieActors implements _GetMovieActors {
  const _$_GetMovieActors(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'GetActorsEvent.getMovieActors(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMovieActors &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMovieActorsCopyWith<_$_GetMovieActors> get copyWith =>
      __$$_GetMovieActorsCopyWithImpl<_$_GetMovieActors>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getActorsImage,
    required TResult Function(int id) getMovieActors,
  }) {
    return getMovieActors(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getActorsImage,
    TResult? Function(int id)? getMovieActors,
  }) {
    return getMovieActors?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getActorsImage,
    TResult Function(int id)? getMovieActors,
    required TResult orElse(),
  }) {
    if (getMovieActors != null) {
      return getMovieActors(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetActorsImage value) getActorsImage,
    required TResult Function(_GetMovieActors value) getMovieActors,
  }) {
    return getMovieActors(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetActorsImage value)? getActorsImage,
    TResult? Function(_GetMovieActors value)? getMovieActors,
  }) {
    return getMovieActors?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetActorsImage value)? getActorsImage,
    TResult Function(_GetMovieActors value)? getMovieActors,
    required TResult orElse(),
  }) {
    if (getMovieActors != null) {
      return getMovieActors(this);
    }
    return orElse();
  }
}

abstract class _GetMovieActors implements GetActorsEvent {
  const factory _GetMovieActors(final int id) = _$_GetMovieActors;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_GetMovieActorsCopyWith<_$_GetMovieActors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetActorsState {
  bool get Isloading => throw _privateConstructorUsedError;
  bool get Iserror => throw _privateConstructorUsedError;
  List<ActorModel> get Actors => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetActorsStateCopyWith<GetActorsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetActorsStateCopyWith<$Res> {
  factory $GetActorsStateCopyWith(
          GetActorsState value, $Res Function(GetActorsState) then) =
      _$GetActorsStateCopyWithImpl<$Res, GetActorsState>;
  @useResult
  $Res call({bool Isloading, bool Iserror, List<ActorModel> Actors});
}

/// @nodoc
class _$GetActorsStateCopyWithImpl<$Res, $Val extends GetActorsState>
    implements $GetActorsStateCopyWith<$Res> {
  _$GetActorsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Isloading = null,
    Object? Iserror = null,
    Object? Actors = null,
  }) {
    return _then(_value.copyWith(
      Isloading: null == Isloading
          ? _value.Isloading
          : Isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      Iserror: null == Iserror
          ? _value.Iserror
          : Iserror // ignore: cast_nullable_to_non_nullable
              as bool,
      Actors: null == Actors
          ? _value.Actors
          : Actors // ignore: cast_nullable_to_non_nullable
              as List<ActorModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $GetActorsStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool Isloading, bool Iserror, List<ActorModel> Actors});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$GetActorsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Isloading = null,
    Object? Iserror = null,
    Object? Actors = null,
  }) {
    return _then(_$_Initial(
      null == Isloading
          ? _value.Isloading
          : Isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      null == Iserror
          ? _value.Iserror
          : Iserror // ignore: cast_nullable_to_non_nullable
              as bool,
      null == Actors
          ? _value._Actors
          : Actors // ignore: cast_nullable_to_non_nullable
              as List<ActorModel>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(this.Isloading, this.Iserror, final List<ActorModel> Actors)
      : _Actors = Actors;

  @override
  final bool Isloading;
  @override
  final bool Iserror;
  final List<ActorModel> _Actors;
  @override
  List<ActorModel> get Actors {
    if (_Actors is EqualUnmodifiableListView) return _Actors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_Actors);
  }

  @override
  String toString() {
    return 'GetActorsState(Isloading: $Isloading, Iserror: $Iserror, Actors: $Actors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.Isloading, Isloading) ||
                other.Isloading == Isloading) &&
            (identical(other.Iserror, Iserror) || other.Iserror == Iserror) &&
            const DeepCollectionEquality().equals(other._Actors, _Actors));
  }

  @override
  int get hashCode => Object.hash(runtimeType, Isloading, Iserror,
      const DeepCollectionEquality().hash(_Actors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements GetActorsState {
  const factory _Initial(final bool Isloading, final bool Iserror,
      final List<ActorModel> Actors) = _$_Initial;

  @override
  bool get Isloading;
  @override
  bool get Iserror;
  @override
  List<ActorModel> get Actors;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
