// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadImage value) getDownloadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadImage value)? getDownloadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadImage value)? getDownloadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadEventCopyWith<$Res> {
  factory $DownloadEventCopyWith(
          DownloadEvent value, $Res Function(DownloadEvent) then) =
      _$DownloadEventCopyWithImpl<$Res, DownloadEvent>;
}

/// @nodoc
class _$DownloadEventCopyWithImpl<$Res, $Val extends DownloadEvent>
    implements $DownloadEventCopyWith<$Res> {
  _$DownloadEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetDownloadImageCopyWith<$Res> {
  factory _$$_GetDownloadImageCopyWith(
          _$_GetDownloadImage value, $Res Function(_$_GetDownloadImage) then) =
      __$$_GetDownloadImageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetDownloadImageCopyWithImpl<$Res>
    extends _$DownloadEventCopyWithImpl<$Res, _$_GetDownloadImage>
    implements _$$_GetDownloadImageCopyWith<$Res> {
  __$$_GetDownloadImageCopyWithImpl(
      _$_GetDownloadImage _value, $Res Function(_$_GetDownloadImage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetDownloadImage implements _GetDownloadImage {
  const _$_GetDownloadImage();

  @override
  String toString() {
    return 'DownloadEvent.getDownloadImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetDownloadImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadImage,
  }) {
    return getDownloadImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadImage,
  }) {
    return getDownloadImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadImage,
    required TResult orElse(),
  }) {
    if (getDownloadImage != null) {
      return getDownloadImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadImage value) getDownloadImage,
  }) {
    return getDownloadImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadImage value)? getDownloadImage,
  }) {
    return getDownloadImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadImage value)? getDownloadImage,
    required TResult orElse(),
  }) {
    if (getDownloadImage != null) {
      return getDownloadImage(this);
    }
    return orElse();
  }
}

abstract class _GetDownloadImage implements DownloadEvent {
  const factory _GetDownloadImage() = _$_GetDownloadImage;
}

/// @nodoc
mixin _$DownloadState {
  bool get isloading => throw _privateConstructorUsedError;
  List<DownloadModel> get downloads => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<DownloadModel>>> get FailorSucess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadStateCopyWith<DownloadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadStateCopyWith<$Res> {
  factory $DownloadStateCopyWith(
          DownloadState value, $Res Function(DownloadState) then) =
      _$DownloadStateCopyWithImpl<$Res, DownloadState>;
  @useResult
  $Res call(
      {bool isloading,
      List<DownloadModel> downloads,
      Option<Either<MainFailure, List<DownloadModel>>> FailorSucess});
}

/// @nodoc
class _$DownloadStateCopyWithImpl<$Res, $Val extends DownloadState>
    implements $DownloadStateCopyWith<$Res> {
  _$DownloadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? downloads = null,
    Object? FailorSucess = null,
  }) {
    return _then(_value.copyWith(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: null == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<DownloadModel>,
      FailorSucess: null == FailorSucess
          ? _value.FailorSucess
          : FailorSucess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<DownloadModel>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DownloadStateCopyWith<$Res>
    implements $DownloadStateCopyWith<$Res> {
  factory _$$_DownloadStateCopyWith(
          _$_DownloadState value, $Res Function(_$_DownloadState) then) =
      __$$_DownloadStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isloading,
      List<DownloadModel> downloads,
      Option<Either<MainFailure, List<DownloadModel>>> FailorSucess});
}

/// @nodoc
class __$$_DownloadStateCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res, _$_DownloadState>
    implements _$$_DownloadStateCopyWith<$Res> {
  __$$_DownloadStateCopyWithImpl(
      _$_DownloadState _value, $Res Function(_$_DownloadState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? downloads = null,
    Object? FailorSucess = null,
  }) {
    return _then(_$_DownloadState(
      null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      null == downloads
          ? _value._downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<DownloadModel>,
      null == FailorSucess
          ? _value.FailorSucess
          : FailorSucess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<DownloadModel>>>,
    ));
  }
}

/// @nodoc

class _$_DownloadState implements _DownloadState {
  const _$_DownloadState(
      this.isloading, final List<DownloadModel> downloads, this.FailorSucess)
      : _downloads = downloads;

  @override
  final bool isloading;
  final List<DownloadModel> _downloads;
  @override
  List<DownloadModel> get downloads {
    if (_downloads is EqualUnmodifiableListView) return _downloads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_downloads);
  }

  @override
  final Option<Either<MainFailure, List<DownloadModel>>> FailorSucess;

  @override
  String toString() {
    return 'DownloadState(isloading: $isloading, downloads: $downloads, FailorSucess: $FailorSucess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadState &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            const DeepCollectionEquality()
                .equals(other._downloads, _downloads) &&
            (identical(other.FailorSucess, FailorSucess) ||
                other.FailorSucess == FailorSucess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isloading,
      const DeepCollectionEquality().hash(_downloads), FailorSucess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownloadStateCopyWith<_$_DownloadState> get copyWith =>
      __$$_DownloadStateCopyWithImpl<_$_DownloadState>(this, _$identity);
}

abstract class _DownloadState implements DownloadState {
  const factory _DownloadState(
          final bool isloading,
          final List<DownloadModel> downloads,
          final Option<Either<MainFailure, List<DownloadModel>>> FailorSucess) =
      _$_DownloadState;

  @override
  bool get isloading;
  @override
  List<DownloadModel> get downloads;
  @override
  Option<Either<MainFailure, List<DownloadModel>>> get FailorSucess;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadStateCopyWith<_$_DownloadState> get copyWith =>
      throw _privateConstructorUsedError;
}
