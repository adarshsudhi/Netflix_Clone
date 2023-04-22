part of 'getvideos_bloc.dart';

@freezed
class GetvideosState with _$GetvideosState {
  factory GetvideosState(bool isloading, List<String> Vidoes) = _Initial;
  factory GetvideosState.initial() {
    return GetvideosState(false, []);
  }
}
