// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Downloadmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DownloadModel _$DownloadModelFromJson(Map<String, dynamic> json) {
  return _DownloadModel.fromJson(json);
}

/// @nodoc
mixin _$DownloadModel {
  @JsonKey(name: "title")
  String? get postertitle => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get postername => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String get backdrop => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String? get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double? get Rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadModelCopyWith<DownloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadModelCopyWith<$Res> {
  factory $DownloadModelCopyWith(
          DownloadModel value, $Res Function(DownloadModel) then) =
      _$DownloadModelCopyWithImpl<$Res, DownloadModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "title") String? postertitle,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "name") String? postername,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "backdrop_path") String backdrop,
      @JsonKey(name: "overview") String? overview,
      @JsonKey(name: "vote_average") double? Rating});
}

/// @nodoc
class _$DownloadModelCopyWithImpl<$Res, $Val extends DownloadModel>
    implements $DownloadModelCopyWith<$Res> {
  _$DownloadModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postertitle = freezed,
    Object? posterPath = freezed,
    Object? postername = freezed,
    Object? id = freezed,
    Object? backdrop = null,
    Object? overview = freezed,
    Object? Rating = freezed,
  }) {
    return _then(_value.copyWith(
      postertitle: freezed == postertitle
          ? _value.postertitle
          : postertitle // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      postername: freezed == postername
          ? _value.postername
          : postername // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      backdrop: null == backdrop
          ? _value.backdrop
          : backdrop // ignore: cast_nullable_to_non_nullable
              as String,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      Rating: freezed == Rating
          ? _value.Rating
          : Rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DownloadModelCopyWith<$Res>
    implements $DownloadModelCopyWith<$Res> {
  factory _$$_DownloadModelCopyWith(
          _$_DownloadModel value, $Res Function(_$_DownloadModel) then) =
      __$$_DownloadModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "title") String? postertitle,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "name") String? postername,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "backdrop_path") String backdrop,
      @JsonKey(name: "overview") String? overview,
      @JsonKey(name: "vote_average") double? Rating});
}

/// @nodoc
class __$$_DownloadModelCopyWithImpl<$Res>
    extends _$DownloadModelCopyWithImpl<$Res, _$_DownloadModel>
    implements _$$_DownloadModelCopyWith<$Res> {
  __$$_DownloadModelCopyWithImpl(
      _$_DownloadModel _value, $Res Function(_$_DownloadModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postertitle = freezed,
    Object? posterPath = freezed,
    Object? postername = freezed,
    Object? id = freezed,
    Object? backdrop = null,
    Object? overview = freezed,
    Object? Rating = freezed,
  }) {
    return _then(_$_DownloadModel(
      freezed == postertitle
          ? _value.postertitle
          : postertitle // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == postername
          ? _value.postername
          : postername // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      null == backdrop
          ? _value.backdrop
          : backdrop // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == Rating
          ? _value.Rating
          : Rating // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DownloadModel implements _DownloadModel {
  const _$_DownloadModel(
      @JsonKey(name: "title") this.postertitle,
      @JsonKey(name: "poster_path") this.posterPath,
      @JsonKey(name: "name") this.postername,
      @JsonKey(name: "id") this.id,
      @JsonKey(name: "backdrop_path") this.backdrop,
      @JsonKey(name: "overview") this.overview,
      @JsonKey(name: "vote_average") this.Rating);

  factory _$_DownloadModel.fromJson(Map<String, dynamic> json) =>
      _$$_DownloadModelFromJson(json);

  @override
  @JsonKey(name: "title")
  final String? postertitle;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "name")
  final String? postername;
  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "backdrop_path")
  final String backdrop;
  @override
  @JsonKey(name: "overview")
  final String? overview;
  @override
  @JsonKey(name: "vote_average")
  final double? Rating;

  @override
  String toString() {
    return 'DownloadModel(postertitle: $postertitle, posterPath: $posterPath, postername: $postername, id: $id, backdrop: $backdrop, overview: $overview, Rating: $Rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadModel &&
            (identical(other.postertitle, postertitle) ||
                other.postertitle == postertitle) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.postername, postername) ||
                other.postername == postername) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.backdrop, backdrop) ||
                other.backdrop == backdrop) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.Rating, Rating) || other.Rating == Rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, postertitle, posterPath,
      postername, id, backdrop, overview, Rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownloadModelCopyWith<_$_DownloadModel> get copyWith =>
      __$$_DownloadModelCopyWithImpl<_$_DownloadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DownloadModelToJson(
      this,
    );
  }
}

abstract class _DownloadModel implements DownloadModel {
  const factory _DownloadModel(
      @JsonKey(name: "title") final String? postertitle,
      @JsonKey(name: "poster_path") final String? posterPath,
      @JsonKey(name: "name") final String? postername,
      @JsonKey(name: "id") final int? id,
      @JsonKey(name: "backdrop_path") final String backdrop,
      @JsonKey(name: "overview") final String? overview,
      @JsonKey(name: "vote_average") final double? Rating) = _$_DownloadModel;

  factory _DownloadModel.fromJson(Map<String, dynamic> json) =
      _$_DownloadModel.fromJson;

  @override
  @JsonKey(name: "title")
  String? get postertitle;
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "name")
  String? get postername;
  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "backdrop_path")
  String get backdrop;
  @override
  @JsonKey(name: "overview")
  String? get overview;
  @override
  @JsonKey(name: "vote_average")
  double? get Rating;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadModelCopyWith<_$_DownloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}
