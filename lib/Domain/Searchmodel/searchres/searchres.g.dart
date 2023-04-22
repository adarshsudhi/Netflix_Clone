// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchres.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Searchres _$SearchresFromJson(Map<String, dynamic> json) => Searchres(
      page: json['page'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => SearchResul.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json['total_pages'] as int?,
      totalResults: json['total_results'] as int?,
    );

Map<String, dynamic> _$SearchresToJson(Searchres instance) => <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

SearchResul _$SearchResulFromJson(Map<String, dynamic> json) => SearchResul(
      id: json['id'] as int?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
      backdroppath: json['backdrop_path'] as String?,
    )
      ..orginalname = json['original_name'] as String?
      ..rating = (json['vote_average'] as num?)?.toDouble()
      ..overview = json['overview'] as String?;

Map<String, dynamic> _$SearchResulToJson(SearchResul instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_title': instance.originalTitle,
      'original_name': instance.orginalname,
      'backdrop_path': instance.backdroppath,
      'poster_path': instance.posterPath,
      'vote_average': instance.rating,
      'overview': instance.overview,
    };
