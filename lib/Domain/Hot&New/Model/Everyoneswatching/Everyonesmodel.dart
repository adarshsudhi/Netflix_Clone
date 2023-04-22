import 'package:freezed_annotation/freezed_annotation.dart';
part 'Everyonesmodel.freezed.dart';
part 'Everyonesmodel.g.dart';

@freezed
class EveryOnesmodel with _$EveryOnesmodel {
  const factory EveryOnesmodel(
    @JsonKey(name: "original_title") final String title,
    @JsonKey(name: "overview") final String overview,
    @JsonKey(name: "backdrop_path") final String backdropath,
  ) = _EveryOnesmodel;

  factory EveryOnesmodel.fromJson(Map<String, dynamic> json) =>
      _$EveryOnesmodelFromJson(json);
}
