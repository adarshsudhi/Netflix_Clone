import 'package:json_annotation/json_annotation.dart';

part 'searchres.g.dart';

@JsonSerializable()
class Searchres {
  int? page;
  List<SearchResul>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  Searchres({this.page, this.results, this.totalPages, this.totalResults});

  factory Searchres.fromJson(Map<String, dynamic> json) {
    return _$SearchresFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchresToJson(this);
}

@JsonSerializable()
class SearchResul {
  int? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: "original_name")
  String? orginalname;

  @JsonKey(name: "backdrop_path")
  String? backdroppath;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: "vote_average")
  double? rating;

  @JsonKey(name: "overview")
  String? overview;

  SearchResul(
      {this.id, this.originalTitle, this.posterPath, this.backdroppath});

  factory SearchResul.fromJson(Map<String, dynamic> json) {
    return _$SearchResulFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResulToJson(this);
}
