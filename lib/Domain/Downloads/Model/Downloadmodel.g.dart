// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Downloadmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DownloadModel _$$_DownloadModelFromJson(Map<String, dynamic> json) =>
    _$_DownloadModel(
      json['title'] as String?,
      json['poster_path'] as String?,
      json['name'] as String?,
      json['id'] as int?,
      json['backdrop_path'] as String,
      json['overview'] as String?,
      (json['vote_average'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_DownloadModelToJson(_$_DownloadModel instance) =>
    <String, dynamic>{
      'title': instance.postertitle,
      'poster_path': instance.posterPath,
      'name': instance.postername,
      'id': instance.id,
      'backdrop_path': instance.backdrop,
      'overview': instance.overview,
      'vote_average': instance.Rating,
    };
