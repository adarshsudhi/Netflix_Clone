import 'package:freezed_annotation/freezed_annotation.dart';
part 'Topindianmoviemodels.g.dart';
part 'Topindianmoviemodels.freezed.dart';

@freezed
class TopindianMovie with _$TopindianMovie {
  const factory TopindianMovie(
    @JsonKey(name: "original_title") final String? title,
    @JsonKey(name: "poster_path") final String? posterpath,
  ) = _TopindianMovie;

  factory TopindianMovie.fromJson(Map<String, dynamic> json) =>
      _$TopindianMovieFromJson(json);
}
