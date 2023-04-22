import 'package:freezed_annotation/freezed_annotation.dart';
part 'VideoModel.freezed.dart';
part 'VideoModel.g.dart';

@freezed
class VideoModel with _$VideoModel {
  const factory VideoModel(
      final String username,
      final String email,
      final String uid,
      final String title,
      final String description,
      final String downloadurl,
      final List likes) = _VideoModel;

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);
}
