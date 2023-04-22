part of 'toprated_bloc.dart';

@freezed
class TopratedState with _$TopratedState {
  const factory TopratedState(
    bool isloading,
    bool error,
    List<TopratedModel> Topratedlist,
  ) = _Initial;

  factory TopratedState.initial() {
    return TopratedState(false, false, []);
  }
}
