part of 'getcurrentuser_bloc.dart';

@freezed
class GetcurrentuserState with _$GetcurrentuserState {
  const factory GetcurrentuserState(
    bool isloading,
    Usermode model,
  ) = _Initial;

  factory GetcurrentuserState.initial() {
    return GetcurrentuserState(
        false, Usermode(Username: '', email: '', Date: '', UID: ''));
  }
}
