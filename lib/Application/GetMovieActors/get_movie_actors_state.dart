part of 'get_movie_actors_bloc.dart';

@freezed
class GetMovieActorsState with _$GetMovieActorsState {
  const factory GetMovieActorsState(
    bool Isloading,
    bool Iserror,
    List<GetMovieActorModel> Actors,
  ) = _Initial;

  factory GetMovieActorsState.initial() {
    return GetMovieActorsState(false, false, []);
  }
}
