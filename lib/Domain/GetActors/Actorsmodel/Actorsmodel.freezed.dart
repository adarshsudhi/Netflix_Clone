// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'Actorsmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActorModel _$ActorModelFromJson(Map<String, dynamic> json) {
  return _ActorModel.fromJson(json);
}

/// @nodoc
mixin _$ActorModel {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_path")
  String get ProfilePic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActorModelCopyWith<ActorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorModelCopyWith<$Res> {
  factory $ActorModelCopyWith(
          ActorModel value, $Res Function(ActorModel) then) =
      _$ActorModelCopyWithImpl<$Res, ActorModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "profile_path") String ProfilePic});
}

/// @nodoc
class _$ActorModelCopyWithImpl<$Res, $Val extends ActorModel>
    implements $ActorModelCopyWith<$Res> {
  _$ActorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? ProfilePic = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ProfilePic: null == ProfilePic
          ? _value.ProfilePic
          : ProfilePic // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActorModelCopyWith<$Res>
    implements $ActorModelCopyWith<$Res> {
  factory _$$_ActorModelCopyWith(
          _$_ActorModel value, $Res Function(_$_ActorModel) then) =
      __$$_ActorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "profile_path") String ProfilePic});
}

/// @nodoc
class __$$_ActorModelCopyWithImpl<$Res>
    extends _$ActorModelCopyWithImpl<$Res, _$_ActorModel>
    implements _$$_ActorModelCopyWith<$Res> {
  __$$_ActorModelCopyWithImpl(
      _$_ActorModel _value, $Res Function(_$_ActorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? ProfilePic = null,
  }) {
    return _then(_$_ActorModel(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == ProfilePic
          ? _value.ProfilePic
          : ProfilePic // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActorModel implements _ActorModel {
  const _$_ActorModel(@JsonKey(name: "name") this.name,
      @JsonKey(name: "profile_path") this.ProfilePic);

  factory _$_ActorModel.fromJson(Map<String, dynamic> json) =>
      _$$_ActorModelFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "profile_path")
  final String ProfilePic;

  @override
  String toString() {
    return 'ActorModel(name: $name, ProfilePic: $ProfilePic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActorModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ProfilePic, ProfilePic) ||
                other.ProfilePic == ProfilePic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, ProfilePic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActorModelCopyWith<_$_ActorModel> get copyWith =>
      __$$_ActorModelCopyWithImpl<_$_ActorModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActorModelToJson(
      this,
    );
  }
}

abstract class _ActorModel implements ActorModel {
  const factory _ActorModel(@JsonKey(name: "name") final String name,
      @JsonKey(name: "profile_path") final String ProfilePic) = _$_ActorModel;

  factory _ActorModel.fromJson(Map<String, dynamic> json) =
      _$_ActorModel.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "profile_path")
  String get ProfilePic;
  @override
  @JsonKey(ignore: true)
  _$$_ActorModelCopyWith<_$_ActorModel> get copyWith =>
      throw _privateConstructorUsedError;
}
