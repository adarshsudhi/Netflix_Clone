part of 'everyones_bloc.dart';

@freezed
class EveryonesState with _$EveryonesState {
  const factory EveryonesState(
    bool isloading,
    bool erroroccured,
    List<EveryOnesmodel> Everyones,
  ) = _Initial;

  factory EveryonesState.initial() {
    return EveryonesState(false, false, []);
  }
}
