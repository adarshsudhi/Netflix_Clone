part of 'get_actors_bloc.dart';

@freezed
class GetActorsState with _$GetActorsState {
  const factory GetActorsState(
    bool Isloading,
    bool Iserror,
    List<ActorModel> Actors,
  ) = _Initial;

  factory GetActorsState.initial() {
    return GetActorsState(false, false, []);
  }
}
