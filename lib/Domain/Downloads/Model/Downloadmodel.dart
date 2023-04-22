import 'package:freezed_annotation/freezed_annotation.dart';
part 'Downloadmodel.freezed.dart';
part 'Downloadmodel.g.dart';

@freezed
class DownloadModel with _$DownloadModel {
  const factory DownloadModel(
    @JsonKey(name: "title") String? postertitle,
    @JsonKey(name: "poster_path") String? posterPath,
    @JsonKey(name: "name") String? postername,
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "backdrop_path") String backdrop,
    @JsonKey(name: "overview") String? overview,
    @JsonKey(name: "vote_average") double? Rating,
  ) = _DownloadModel;

  factory DownloadModel.fromJson(Map<String, dynamic> json) =>
      _$DownloadModelFromJson(json);
}
