import 'package:freezed_annotation/freezed_annotation.dart';
part 'GetMovieActormodel.freezed.dart';
part 'GetMovieActormodel.g.dart';

@freezed
class GetMovieActorModel with _$GetMovieActorModel {
  const factory GetMovieActorModel(
    @JsonKey(name: "original_name") String? Name,
    @JsonKey(name: "profile_path") String? Profilepic,
  ) = _GetMovieActorModel;

  factory GetMovieActorModel.fromJson(Map<String, dynamic> json) =>
      _$GetMovieActorModelFromJson(json);
}
