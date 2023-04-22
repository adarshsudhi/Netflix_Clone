import 'package:freezed_annotation/freezed_annotation.dart';
part 'Comingsoonmodel.freezed.dart';
part 'Comingsoonmodel.g.dart';

@freezed
class Comingsoonmodel with _$Comingsoonmodel {
  const factory Comingsoonmodel(
    @JsonKey(name: "original_title") final String? title,
    @JsonKey(name: "overview") final String? overview,
    @JsonKey(name: "release_date") final String? date,
    @JsonKey(name: "poster_path") final String? Posterpath,
    @JsonKey(name: "backdrop_path") final String? backdropath,
  ) = _Comingsoonmodel;

  factory Comingsoonmodel.fromJson(Map<String, dynamic> json) =>
      _$ComingsoonmodelFromJson(json);
}
