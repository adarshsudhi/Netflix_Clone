part of 'topindianmovie_bloc.dart';

@freezed
class TopindianmovieState with _$TopindianmovieState {
  const factory TopindianmovieState(
    bool isloading,
    bool iserror,
    List<TopindianMovie> topmovies,
  ) = _Initial;

  factory TopindianmovieState.initial() {
    return TopindianmovieState(false, false, []);
  }
}
