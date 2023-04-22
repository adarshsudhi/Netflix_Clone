// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'VideoModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoModel _$$_VideoModelFromJson(Map<String, dynamic> json) =>
    _$_VideoModel(
      json['username'] as String,
      json['email'] as String,
      json['uid'] as String,
      json['title'] as String,
      json['description'] as String,
      json['downloadurl'] as String,
      json['likes'] as List<dynamic>,
    );

Map<String, dynamic> _$$_VideoModelToJson(_$_VideoModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'uid': instance.uid,
      'title': instance.title,
      'description': instance.description,
      'downloadurl': instance.downloadurl,
      'likes': instance.likes,
    };
