import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/Domain/Core/Failure.dart';
import 'package:netflix/Domain/Downloads/DownloadRepo.dart';
import 'package:netflix/Domain/Downloads/Model/Downloadmodel.dart';

part 'download_event.dart';
part 'download_state.dart';
part 'download_bloc.freezed.dart';

@injectable
class DownloadBloc extends Bloc<DownloadEvent, DownloadState> {
  final DownloadRepo repo;
  DownloadBloc(this.repo) : super(DownloadState.initial()) {
    on<_GetDownloadImage>((event, emit) async {
      if (state.downloads.isNotEmpty) {
        emit(state.copyWith(
          isloading: false,
          downloads: state.downloads,
        ));
        return;
      }
      emit(
          state.copyWith(isloading: true, FailorSucess: None(), downloads: []));

      final Either<MainFailure, List<DownloadModel>> options =
          await repo.GetDownloadImages();

      emit(options.fold(
          (Fail) =>
              state.copyWith(FailorSucess: some(left(Fail)), isloading: false),
          (Success) => state.copyWith(
              FailorSucess: some(right(Success)),
              isloading: false,
              downloads: Success)));
    });
  }
}
