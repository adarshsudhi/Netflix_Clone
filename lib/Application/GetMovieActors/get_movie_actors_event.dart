part of 'get_movie_actors_bloc.dart';

@freezed
class GetMovieActorsEvent with _$GetMovieActorsEvent {
  const factory GetMovieActorsEvent.getmovieactors(int id) = _Getmovieactors;
}
