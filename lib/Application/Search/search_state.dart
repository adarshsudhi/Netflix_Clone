part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState(
    List<DownloadModel> downloads,
    List<SearchResul> result,
    bool isloading,
    bool iserror,
  ) = _Initial;

  factory SearchState.initial() {
    return SearchState([], [], false, false);
  }
}
