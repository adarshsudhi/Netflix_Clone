part of 'download_bloc.dart';

@freezed
class DownloadState with _$DownloadState {
  const factory DownloadState(
    bool isloading,
    List<DownloadModel> downloads,
    Option<Either<MainFailure, List<DownloadModel>>> FailorSucess,
  ) = _DownloadState;

  factory DownloadState.initial() {
    return DownloadState(false, [], none());
  }
}
