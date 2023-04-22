part of 'get_actors_bloc.dart';

@freezed
class GetActorsEvent with _$GetActorsEvent {
  const factory GetActorsEvent.getActorsImage(int id) = _GetActorsImage;
  const factory GetActorsEvent.getMovieActors(int id) = _GetMovieActors;
}
