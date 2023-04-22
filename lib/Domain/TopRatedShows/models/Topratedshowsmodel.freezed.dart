// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Topratedshowsmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TopratedModel _$TopratedModelFromJson(Map<String, dynamic> json) {
  return _TopratedModel.fromJson(json);
}

/// @nodoc
mixin _$TopratedModel {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double? get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: "original_name")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get Backdrop => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String? get overview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopratedModelCopyWith<TopratedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopratedModelCopyWith<$Res> {
  factory $TopratedModelCopyWith(
          TopratedModel value, $Res Function(TopratedModel) then) =
      _$TopratedModelCopyWithImpl<$Res, TopratedModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "vote_average") double? popularity,
      @JsonKey(name: "original_name") String? title,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "backdrop_path") String? Backdrop,
      @JsonKey(name: "overview") String? overview});
}

/// @nodoc
class _$TopratedModelCopyWithImpl<$Res, $Val extends TopratedModel>
    implements $TopratedModelCopyWith<$Res> {
  _$TopratedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? popularity = freezed,
    Object? title = freezed,
    Object? posterPath = freezed,
    Object? Backdrop = freezed,
    Object? overview = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      popularity: freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      Backdrop: freezed == Backdrop
          ? _value.Backdrop
          : Backdrop // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopratedModelCopyWith<$Res>
    implements $TopratedModelCopyWith<$Res> {
  factory _$$_TopratedModelCopyWith(
          _$_TopratedModel value, $Res Function(_$_TopratedModel) then) =
      __$$_TopratedModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "vote_average") double? popularity,
      @JsonKey(name: "original_name") String? title,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "backdrop_path") String? Backdrop,
      @JsonKey(name: "overview") String? overview});
}

/// @nodoc
class __$$_TopratedModelCopyWithImpl<$Res>
    extends _$TopratedModelCopyWithImpl<$Res, _$_TopratedModel>
    implements _$$_TopratedModelCopyWith<$Res> {
  __$$_TopratedModelCopyWithImpl(
      _$_TopratedModel _value, $Res Function(_$_TopratedModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? popularity = freezed,
    Object? title = freezed,
    Object? posterPath = freezed,
    Object? Backdrop = freezed,
    Object? overview = freezed,
  }) {
    return _then(_$_TopratedModel(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double?,
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == Backdrop
          ? _value.Backdrop
          : Backdrop // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopratedModel implements _TopratedModel {
  _$_TopratedModel(
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "vote_average") this.popularity,
      @JsonKey(name: "original_name") this.title,
      @JsonKey(name: "poster_path") this.posterPath,
      @JsonKey(name: "backdrop_path") this.Backdrop,
      @JsonKey(name: "overview") this.overview);

  factory _$_TopratedModel.fromJson(Map<String, dynamic> json) =>
      _$$_TopratedModelFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "vote_average")
  final double? popularity;
  @override
  @JsonKey(name: "original_name")
  final String? title;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "backdrop_path")
  final String? Backdrop;
  @override
  @JsonKey(name: "overview")
  final String? overview;

  @override
  String toString() {
    return 'TopratedModel(id: $id, popularity: $popularity, title: $title, posterPath: $posterPath, Backdrop: $Backdrop, overview: $overview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopratedModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.Backdrop, Backdrop) ||
                other.Backdrop == Backdrop) &&
            (identical(other.overview, overview) ||
                other.overview == overview));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, popularity, title, posterPath, Backdrop, overview);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopratedModelCopyWith<_$_TopratedModel> get copyWith =>
      __$$_TopratedModelCopyWithImpl<_$_TopratedModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopratedModelToJson(
      this,
    );
  }
}

abstract class _TopratedModel implements TopratedModel {
  factory _TopratedModel(
      @JsonKey(name: "id") final int? id,
      @JsonKey(name: "vote_average") final double? popularity,
      @JsonKey(name: "original_name") final String? title,
      @JsonKey(name: "poster_path") final String? posterPath,
      @JsonKey(name: "backdrop_path") final String? Backdrop,
      @JsonKey(name: "overview") final String? overview) = _$_TopratedModel;

  factory _TopratedModel.fromJson(Map<String, dynamic> json) =
      _$_TopratedModel.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "vote_average")
  double? get popularity;
  @override
  @JsonKey(name: "original_name")
  String? get title;
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "backdrop_path")
  String? get Backdrop;
  @override
  @JsonKey(name: "overview")
  String? get overview;
  @override
  @JsonKey(ignore: true)
  _$$_TopratedModelCopyWith<_$_TopratedModel> get copyWith =>
      throw _privateConstructorUsedError;
}
