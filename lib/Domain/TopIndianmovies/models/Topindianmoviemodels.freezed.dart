// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Topindianmoviemodels.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopindianMovie _$TopindianMovieFromJson(Map<String, dynamic> json) {
  return _TopindianMovie.fromJson(json);
}

/// @nodoc
mixin _$TopindianMovie {
  @JsonKey(name: "original_title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterpath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopindianMovieCopyWith<TopindianMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopindianMovieCopyWith<$Res> {
  factory $TopindianMovieCopyWith(
          TopindianMovie value, $Res Function(TopindianMovie) then) =
      _$TopindianMovieCopyWithImpl<$Res, TopindianMovie>;
  @useResult
  $Res call(
      {@JsonKey(name: "original_title") String? title,
      @JsonKey(name: "poster_path") String? posterpath});
}

/// @nodoc
class _$TopindianMovieCopyWithImpl<$Res, $Val extends TopindianMovie>
    implements $TopindianMovieCopyWith<$Res> {
  _$TopindianMovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? posterpath = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      posterpath: freezed == posterpath
          ? _value.posterpath
          : posterpath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopindianMovieCopyWith<$Res>
    implements $TopindianMovieCopyWith<$Res> {
  factory _$$_TopindianMovieCopyWith(
          _$_TopindianMovie value, $Res Function(_$_TopindianMovie) then) =
      __$$_TopindianMovieCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "original_title") String? title,
      @JsonKey(name: "poster_path") String? posterpath});
}

/// @nodoc
class __$$_TopindianMovieCopyWithImpl<$Res>
    extends _$TopindianMovieCopyWithImpl<$Res, _$_TopindianMovie>
    implements _$$_TopindianMovieCopyWith<$Res> {
  __$$_TopindianMovieCopyWithImpl(
      _$_TopindianMovie _value, $Res Function(_$_TopindianMovie) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? posterpath = freezed,
  }) {
    return _then(_$_TopindianMovie(
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == posterpath
          ? _value.posterpath
          : posterpath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopindianMovie implements _TopindianMovie {
  const _$_TopindianMovie(@JsonKey(name: "original_title") this.title,
      @JsonKey(name: "poster_path") this.posterpath);

  factory _$_TopindianMovie.fromJson(Map<String, dynamic> json) =>
      _$$_TopindianMovieFromJson(json);

  @override
  @JsonKey(name: "original_title")
  final String? title;
  @override
  @JsonKey(name: "poster_path")
  final String? posterpath;

  @override
  String toString() {
    return 'TopindianMovie(title: $title, posterpath: $posterpath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopindianMovie &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.posterpath, posterpath) ||
                other.posterpath == posterpath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, posterpath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopindianMovieCopyWith<_$_TopindianMovie> get copyWith =>
      __$$_TopindianMovieCopyWithImpl<_$_TopindianMovie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopindianMovieToJson(
      this,
    );
  }
}

abstract class _TopindianMovie implements TopindianMovie {
  const factory _TopindianMovie(
          @JsonKey(name: "original_title") final String? title,
          @JsonKey(name: "poster_path") final String? posterpath) =
      _$_TopindianMovie;

  factory _TopindianMovie.fromJson(Map<String, dynamic> json) =
      _$_TopindianMovie.fromJson;

  @override
  @JsonKey(name: "original_title")
  String? get title;
  @override
  @JsonKey(name: "poster_path")
  String? get posterpath;
  @override
  @JsonKey(ignore: true)
  _$$_TopindianMovieCopyWith<_$_TopindianMovie> get copyWith =>
      throw _privateConstructorUsedError;
}
