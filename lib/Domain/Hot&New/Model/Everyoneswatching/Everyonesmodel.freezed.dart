// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Everyonesmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EveryOnesmodel _$EveryOnesmodelFromJson(Map<String, dynamic> json) {
  return _EveryOnesmodel.fromJson(json);
}

/// @nodoc
mixin _$EveryOnesmodel {
  @JsonKey(name: "original_title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String get backdropath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EveryOnesmodelCopyWith<EveryOnesmodel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EveryOnesmodelCopyWith<$Res> {
  factory $EveryOnesmodelCopyWith(
          EveryOnesmodel value, $Res Function(EveryOnesmodel) then) =
      _$EveryOnesmodelCopyWithImpl<$Res, EveryOnesmodel>;
  @useResult
  $Res call(
      {@JsonKey(name: "original_title") String title,
      @JsonKey(name: "overview") String overview,
      @JsonKey(name: "backdrop_path") String backdropath});
}

/// @nodoc
class _$EveryOnesmodelCopyWithImpl<$Res, $Val extends EveryOnesmodel>
    implements $EveryOnesmodelCopyWith<$Res> {
  _$EveryOnesmodelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? overview = null,
    Object? backdropath = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      backdropath: null == backdropath
          ? _value.backdropath
          : backdropath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EveryOnesmodelCopyWith<$Res>
    implements $EveryOnesmodelCopyWith<$Res> {
  factory _$$_EveryOnesmodelCopyWith(
          _$_EveryOnesmodel value, $Res Function(_$_EveryOnesmodel) then) =
      __$$_EveryOnesmodelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "original_title") String title,
      @JsonKey(name: "overview") String overview,
      @JsonKey(name: "backdrop_path") String backdropath});
}

/// @nodoc
class __$$_EveryOnesmodelCopyWithImpl<$Res>
    extends _$EveryOnesmodelCopyWithImpl<$Res, _$_EveryOnesmodel>
    implements _$$_EveryOnesmodelCopyWith<$Res> {
  __$$_EveryOnesmodelCopyWithImpl(
      _$_EveryOnesmodel _value, $Res Function(_$_EveryOnesmodel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? overview = null,
    Object? backdropath = null,
  }) {
    return _then(_$_EveryOnesmodel(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      null == backdropath
          ? _value.backdropath
          : backdropath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EveryOnesmodel implements _EveryOnesmodel {
  const _$_EveryOnesmodel(
      @JsonKey(name: "original_title") this.title,
      @JsonKey(name: "overview") this.overview,
      @JsonKey(name: "backdrop_path") this.backdropath);

  factory _$_EveryOnesmodel.fromJson(Map<String, dynamic> json) =>
      _$$_EveryOnesmodelFromJson(json);

  @override
  @JsonKey(name: "original_title")
  final String title;
  @override
  @JsonKey(name: "overview")
  final String overview;
  @override
  @JsonKey(name: "backdrop_path")
  final String backdropath;

  @override
  String toString() {
    return 'EveryOnesmodel(title: $title, overview: $overview, backdropath: $backdropath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EveryOnesmodel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.backdropath, backdropath) ||
                other.backdropath == backdropath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, overview, backdropath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EveryOnesmodelCopyWith<_$_EveryOnesmodel> get copyWith =>
      __$$_EveryOnesmodelCopyWithImpl<_$_EveryOnesmodel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EveryOnesmodelToJson(
      this,
    );
  }
}

abstract class _EveryOnesmodel implements EveryOnesmodel {
  const factory _EveryOnesmodel(
          @JsonKey(name: "original_title") final String title,
          @JsonKey(name: "overview") final String overview,
          @JsonKey(name: "backdrop_path") final String backdropath) =
      _$_EveryOnesmodel;

  factory _EveryOnesmodel.fromJson(Map<String, dynamic> json) =
      _$_EveryOnesmodel.fromJson;

  @override
  @JsonKey(name: "original_title")
  String get title;
  @override
  @JsonKey(name: "overview")
  String get overview;
  @override
  @JsonKey(name: "backdrop_path")
  String get backdropath;
  @override
  @JsonKey(ignore: true)
  _$$_EveryOnesmodelCopyWith<_$_EveryOnesmodel> get copyWith =>
      throw _privateConstructorUsedError;
}
