// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Comingsoonmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Comingsoonmodel _$ComingsoonmodelFromJson(Map<String, dynamic> json) {
  return _Comingsoonmodel.fromJson(json);
}

/// @nodoc
mixin _$Comingsoonmodel {
  @JsonKey(name: "original_title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String? get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get Posterpath => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get backdropath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComingsoonmodelCopyWith<Comingsoonmodel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComingsoonmodelCopyWith<$Res> {
  factory $ComingsoonmodelCopyWith(
          Comingsoonmodel value, $Res Function(Comingsoonmodel) then) =
      _$ComingsoonmodelCopyWithImpl<$Res, Comingsoonmodel>;
  @useResult
  $Res call(
      {@JsonKey(name: "original_title") String? title,
      @JsonKey(name: "overview") String? overview,
      @JsonKey(name: "release_date") String? date,
      @JsonKey(name: "poster_path") String? Posterpath,
      @JsonKey(name: "backdrop_path") String? backdropath});
}

/// @nodoc
class _$ComingsoonmodelCopyWithImpl<$Res, $Val extends Comingsoonmodel>
    implements $ComingsoonmodelCopyWith<$Res> {
  _$ComingsoonmodelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? overview = freezed,
    Object? date = freezed,
    Object? Posterpath = freezed,
    Object? backdropath = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      overview: freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      Posterpath: freezed == Posterpath
          ? _value.Posterpath
          : Posterpath // ignore: cast_nullable_to_non_nullable
              as String?,
      backdropath: freezed == backdropath
          ? _value.backdropath
          : backdropath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ComingsoonmodelCopyWith<$Res>
    implements $ComingsoonmodelCopyWith<$Res> {
  factory _$$_ComingsoonmodelCopyWith(
          _$_Comingsoonmodel value, $Res Function(_$_Comingsoonmodel) then) =
      __$$_ComingsoonmodelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "original_title") String? title,
      @JsonKey(name: "overview") String? overview,
      @JsonKey(name: "release_date") String? date,
      @JsonKey(name: "poster_path") String? Posterpath,
      @JsonKey(name: "backdrop_path") String? backdropath});
}

/// @nodoc
class __$$_ComingsoonmodelCopyWithImpl<$Res>
    extends _$ComingsoonmodelCopyWithImpl<$Res, _$_Comingsoonmodel>
    implements _$$_ComingsoonmodelCopyWith<$Res> {
  __$$_ComingsoonmodelCopyWithImpl(
      _$_Comingsoonmodel _value, $Res Function(_$_Comingsoonmodel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? overview = freezed,
    Object? date = freezed,
    Object? Posterpath = freezed,
    Object? backdropath = freezed,
  }) {
    return _then(_$_Comingsoonmodel(
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == Posterpath
          ? _value.Posterpath
          : Posterpath // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == backdropath
          ? _value.backdropath
          : backdropath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Comingsoonmodel implements _Comingsoonmodel {
  const _$_Comingsoonmodel(
      @JsonKey(name: "original_title") this.title,
      @JsonKey(name: "overview") this.overview,
      @JsonKey(name: "release_date") this.date,
      @JsonKey(name: "poster_path") this.Posterpath,
      @JsonKey(name: "backdrop_path") this.backdropath);

  factory _$_Comingsoonmodel.fromJson(Map<String, dynamic> json) =>
      _$$_ComingsoonmodelFromJson(json);

  @override
  @JsonKey(name: "original_title")
  final String? title;
  @override
  @JsonKey(name: "overview")
  final String? overview;
  @override
  @JsonKey(name: "release_date")
  final String? date;
  @override
  @JsonKey(name: "poster_path")
  final String? Posterpath;
  @override
  @JsonKey(name: "backdrop_path")
  final String? backdropath;

  @override
  String toString() {
    return 'Comingsoonmodel(title: $title, overview: $overview, date: $date, Posterpath: $Posterpath, backdropath: $backdropath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Comingsoonmodel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.Posterpath, Posterpath) ||
                other.Posterpath == Posterpath) &&
            (identical(other.backdropath, backdropath) ||
                other.backdropath == backdropath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, overview, date, Posterpath, backdropath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ComingsoonmodelCopyWith<_$_Comingsoonmodel> get copyWith =>
      __$$_ComingsoonmodelCopyWithImpl<_$_Comingsoonmodel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComingsoonmodelToJson(
      this,
    );
  }
}

abstract class _Comingsoonmodel implements Comingsoonmodel {
  const factory _Comingsoonmodel(
          @JsonKey(name: "original_title") final String? title,
          @JsonKey(name: "overview") final String? overview,
          @JsonKey(name: "release_date") final String? date,
          @JsonKey(name: "poster_path") final String? Posterpath,
          @JsonKey(name: "backdrop_path") final String? backdropath) =
      _$_Comingsoonmodel;

  factory _Comingsoonmodel.fromJson(Map<String, dynamic> json) =
      _$_Comingsoonmodel.fromJson;

  @override
  @JsonKey(name: "original_title")
  String? get title;
  @override
  @JsonKey(name: "overview")
  String? get overview;
  @override
  @JsonKey(name: "release_date")
  String? get date;
  @override
  @JsonKey(name: "poster_path")
  String? get Posterpath;
  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropath;
  @override
  @JsonKey(ignore: true)
  _$$_ComingsoonmodelCopyWith<_$_Comingsoonmodel> get copyWith =>
      throw _privateConstructorUsedError;
}
