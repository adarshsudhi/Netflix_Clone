// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Topratedshowsmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TopratedModel _$$_TopratedModelFromJson(Map<String, dynamic> json) =>
    _$_TopratedModel(
      json['id'] as int?,
      (json['vote_average'] as num?)?.toDouble(),
      json['original_name'] as String?,
      json['poster_path'] as String?,
      json['backdrop_path'] as String?,
      json['overview'] as String?,
    );

Map<String, dynamic> _$$_TopratedModelToJson(_$_TopratedModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'vote_average': instance.popularity,
      'original_name': instance.title,
      'poster_path': instance.posterPath,
      'backdrop_path': instance.Backdrop,
      'overview': instance.overview,
    };
