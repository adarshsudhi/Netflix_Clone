import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/Application/Download/download_bloc.dart';
import 'package:netflix/Domain/Core/Failure.dart';
import 'package:netflix/Domain/Downloads/DownloadRepo.dart';
import 'package:netflix/Domain/Searchmodel/Searchabstract.dart';
import 'package:netflix/presentation/Fast_laugh/Fast_Laugh.dart';
import 'package:netflix/presentation/Search/SearchResultScreen.dart';

import '../../Domain/Downloads/Model/Downloadmodel.dart';
import '../../Domain/Searchmodel/searchres/searchres.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final DownloadRepo downloadRepo;
  final SearchRepo searchrepo;
  SearchBloc(this.downloadRepo, this.searchrepo)
      : super(SearchState.initial()) {
    on<_Initialize>((event, emit) async {
      if (state.downloads.isNotEmpty) {
        emit(state.copyWith(
            isloading: false, iserror: false, downloads: state.downloads));
        return;
      }
      emit(state.copyWith(
          isloading: true, downloads: [], iserror: false, result: []));
      final Either<MainFailure, List<DownloadModel>> option =
          await downloadRepo.GetDownloadImages();

      emit(option.fold(
          (Fail) => state.copyWith(
              isloading: false, downloads: [], iserror: true, result: []),
          (Sucess) => state.copyWith(
              isloading: false,
              iserror: false,
              downloads: Sucess,
              result: [])));
    });
    on<_Searchmovie>((event, emit) async {
      emit(state.copyWith(isloading: true, iserror: false, result: []));
      final result = await searchrepo.GetSearchresult(event.moviequery);

      emit(result.fold(
          (l) => state.copyWith(isloading: false, iserror: true, result: []),
          (r) => state.copyWith(
              isloading: false, iserror: false, result: r.results!)));
    });
  }
}
