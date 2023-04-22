import 'package:freezed_annotation/freezed_annotation.dart';
part 'Topratedshowsmodel.freezed.dart';
part 'Topratedshowsmodel.g.dart';

@freezed
class TopratedModel with _$TopratedModel {
  factory TopratedModel(
    @JsonKey(name: "id") final int? id,
    @JsonKey(name: "vote_average") final double? popularity,
    @JsonKey(name: "original_name") final String? title,
    @JsonKey(name: "poster_path") final String? posterPath,
    @JsonKey(name: "backdrop_path") final String? Backdrop,
    @JsonKey(name: "overview") final String? overview,
  ) = _TopratedModel;

  factory TopratedModel.fromJson(Map<String, dynamic> json) =>
      _$TopratedModelFromJson(json);
}
