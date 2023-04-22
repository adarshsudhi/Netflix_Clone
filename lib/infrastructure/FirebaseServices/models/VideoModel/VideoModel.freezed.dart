// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'VideoModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoModel _$VideoModelFromJson(Map<String, dynamic> json) {
  return _VideoModel.fromJson(json);
}

/// @nodoc
mixin _$VideoModel {
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get downloadurl => throw _privateConstructorUsedError;
  List<dynamic> get likes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoModelCopyWith<VideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoModelCopyWith<$Res> {
  factory $VideoModelCopyWith(
          VideoModel value, $Res Function(VideoModel) then) =
      _$VideoModelCopyWithImpl<$Res, VideoModel>;
  @useResult
  $Res call(
      {String username,
      String email,
      String uid,
      String title,
      String description,
      String downloadurl,
      List<dynamic> likes});
}

/// @nodoc
class _$VideoModelCopyWithImpl<$Res, $Val extends VideoModel>
    implements $VideoModelCopyWith<$Res> {
  _$VideoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? uid = null,
    Object? title = null,
    Object? description = null,
    Object? downloadurl = null,
    Object? likes = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      downloadurl: null == downloadurl
          ? _value.downloadurl
          : downloadurl // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideoModelCopyWith<$Res>
    implements $VideoModelCopyWith<$Res> {
  factory _$$_VideoModelCopyWith(
          _$_VideoModel value, $Res Function(_$_VideoModel) then) =
      __$$_VideoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String username,
      String email,
      String uid,
      String title,
      String description,
      String downloadurl,
      List<dynamic> likes});
}

/// @nodoc
class __$$_VideoModelCopyWithImpl<$Res>
    extends _$VideoModelCopyWithImpl<$Res, _$_VideoModel>
    implements _$$_VideoModelCopyWith<$Res> {
  __$$_VideoModelCopyWithImpl(
      _$_VideoModel _value, $Res Function(_$_VideoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? uid = null,
    Object? title = null,
    Object? description = null,
    Object? downloadurl = null,
    Object? likes = null,
  }) {
    return _then(_$_VideoModel(
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      null == downloadurl
          ? _value.downloadurl
          : downloadurl // ignore: cast_nullable_to_non_nullable
              as String,
      null == likes
          ? _value._likes
          : likes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoModel implements _VideoModel {
  const _$_VideoModel(this.username, this.email, this.uid, this.title,
      this.description, this.downloadurl, final List<dynamic> likes)
      : _likes = likes;

  factory _$_VideoModel.fromJson(Map<String, dynamic> json) =>
      _$$_VideoModelFromJson(json);

  @override
  final String username;
  @override
  final String email;
  @override
  final String uid;
  @override
  final String title;
  @override
  final String description;
  @override
  final String downloadurl;
  final List<dynamic> _likes;
  @override
  List<dynamic> get likes {
    if (_likes is EqualUnmodifiableListView) return _likes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likes);
  }

  @override
  String toString() {
    return 'VideoModel(username: $username, email: $email, uid: $uid, title: $title, description: $description, downloadurl: $downloadurl, likes: $likes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoModel &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.downloadurl, downloadurl) ||
                other.downloadurl == downloadurl) &&
            const DeepCollectionEquality().equals(other._likes, _likes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, email, uid, title,
      description, downloadurl, const DeepCollectionEquality().hash(_likes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoModelCopyWith<_$_VideoModel> get copyWith =>
      __$$_VideoModelCopyWithImpl<_$_VideoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoModelToJson(
      this,
    );
  }
}

abstract class _VideoModel implements VideoModel {
  const factory _VideoModel(
      final String username,
      final String email,
      final String uid,
      final String title,
      final String description,
      final String downloadurl,
      final List<dynamic> likes) = _$_VideoModel;

  factory _VideoModel.fromJson(Map<String, dynamic> json) =
      _$_VideoModel.fromJson;

  @override
  String get username;
  @override
  String get email;
  @override
  String get uid;
  @override
  String get title;
  @override
  String get description;
  @override
  String get downloadurl;
  @override
  List<dynamic> get likes;
  @override
  @JsonKey(ignore: true)
  _$$_VideoModelCopyWith<_$_VideoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
