// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'GetMovieActormodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetMovieActorModel _$GetMovieActorModelFromJson(Map<String, dynamic> json) {
  return _GetMovieActorModel.fromJson(json);
}

/// @nodoc
mixin _$GetMovieActorModel {
  @JsonKey(name: "original_name")
  String? get Name => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_path")
  String? get Profilepic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetMovieActorModelCopyWith<GetMovieActorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetMovieActorModelCopyWith<$Res> {
  factory $GetMovieActorModelCopyWith(
          GetMovieActorModel value, $Res Function(GetMovieActorModel) then) =
      _$GetMovieActorModelCopyWithImpl<$Res, GetMovieActorModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "original_name") String? Name,
      @JsonKey(name: "profile_path") String? Profilepic});
}

/// @nodoc
class _$GetMovieActorModelCopyWithImpl<$Res, $Val extends GetMovieActorModel>
    implements $GetMovieActorModelCopyWith<$Res> {
  _$GetMovieActorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Name = freezed,
    Object? Profilepic = freezed,
  }) {
    return _then(_value.copyWith(
      Name: freezed == Name
          ? _value.Name
          : Name // ignore: cast_nullable_to_non_nullable
              as String?,
      Profilepic: freezed == Profilepic
          ? _value.Profilepic
          : Profilepic // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetMovieActorModelCopyWith<$Res>
    implements $GetMovieActorModelCopyWith<$Res> {
  factory _$$_GetMovieActorModelCopyWith(_$_GetMovieActorModel value,
          $Res Function(_$_GetMovieActorModel) then) =
      __$$_GetMovieActorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "original_name") String? Name,
      @JsonKey(name: "profile_path") String? Profilepic});
}

/// @nodoc
class __$$_GetMovieActorModelCopyWithImpl<$Res>
    extends _$GetMovieActorModelCopyWithImpl<$Res, _$_GetMovieActorModel>
    implements _$$_GetMovieActorModelCopyWith<$Res> {
  __$$_GetMovieActorModelCopyWithImpl(
      _$_GetMovieActorModel _value, $Res Function(_$_GetMovieActorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Name = freezed,
    Object? Profilepic = freezed,
  }) {
    return _then(_$_GetMovieActorModel(
      freezed == Name
          ? _value.Name
          : Name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == Profilepic
          ? _value.Profilepic
          : Profilepic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetMovieActorModel implements _GetMovieActorModel {
  const _$_GetMovieActorModel(@JsonKey(name: "original_name") this.Name,
      @JsonKey(name: "profile_path") this.Profilepic);

  factory _$_GetMovieActorModel.fromJson(Map<String, dynamic> json) =>
      _$$_GetMovieActorModelFromJson(json);

  @override
  @JsonKey(name: "original_name")
  final String? Name;
  @override
  @JsonKey(name: "profile_path")
  final String? Profilepic;

  @override
  String toString() {
    return 'GetMovieActorModel(Name: $Name, Profilepic: $Profilepic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetMovieActorModel &&
            (identical(other.Name, Name) || other.Name == Name) &&
            (identical(other.Profilepic, Profilepic) ||
                other.Profilepic == Profilepic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, Name, Profilepic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetMovieActorModelCopyWith<_$_GetMovieActorModel> get copyWith =>
      __$$_GetMovieActorModelCopyWithImpl<_$_GetMovieActorModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetMovieActorModelToJson(
      this,
    );
  }
}

abstract class _GetMovieActorModel implements GetMovieActorModel {
  const factory _GetMovieActorModel(
          @JsonKey(name: "original_name") final String? Name,
          @JsonKey(name: "profile_path") final String? Profilepic) =
      _$_GetMovieActorModel;

  factory _GetMovieActorModel.fromJson(Map<String, dynamic> json) =
      _$_GetMovieActorModel.fromJson;

  @override
  @JsonKey(name: "original_name")
  String? get Name;
  @override
  @JsonKey(name: "profile_path")
  String? get Profilepic;
  @override
  @JsonKey(ignore: true)
  _$$_GetMovieActorModelCopyWith<_$_GetMovieActorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
