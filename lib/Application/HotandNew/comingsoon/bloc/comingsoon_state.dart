part of 'comingsoon_bloc.dart';

@freezed
class ComingsoonState with _$ComingsoonState {
  const factory ComingsoonState(
    bool isloading,
    bool iserror,
    List<Comingsoonmodel> comingsoon,
  ) = _Initial;

  factory ComingsoonState.initial() {
    return ComingsoonState(false, false, []);
  }
}
