import 'package:freezed_annotation/freezed_annotation.dart';
part 'Actorsmodel.freezed.dart';
part 'Actorsmodel.g.dart';

@freezed
class ActorModel with _$ActorModel {
  const factory ActorModel(
    @JsonKey(name: "name") final String name,
    @JsonKey(name: "profile_path") final String ProfilePic,
  ) = _ActorModel;

  factory ActorModel.fromJson(Map<String, dynamic> json) =>
      _$ActorModelFromJson(json);
}
