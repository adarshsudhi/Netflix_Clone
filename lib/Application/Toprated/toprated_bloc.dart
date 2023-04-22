import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/Domain/Core/Failure.dart';
import 'package:netflix/Domain/TopRatedShows/Topratedabtract.dart';

import '../../Domain/TopRatedShows/models/Topratedshowsmodel.dart';

part 'toprated_event.dart';
part 'toprated_state.dart';
part 'toprated_bloc.freezed.dart';

@injectable
class TopratedBloc extends Bloc<TopratedEvent, TopratedState> {
  final TopratedRepo repo;
  TopratedBloc(this.repo) : super(TopratedState.initial()) {
    on<_GetToprated>((event, emit) async {
      if (state.Topratedlist.isNotEmpty) {
        state.copyWith(
            isloading: false, error: false, Topratedlist: state.Topratedlist);
        return;
      }
      emit(state.copyWith(isloading: true, error: false));
      final Either<MainFailure, List<TopratedModel>> response =
          await repo.Gettoprated();

      emit(response.fold(
          (fail) => state.copyWith(isloading: false, error: true),
          (Worked) => state.copyWith(
              isloading: false, error: false, Topratedlist: Worked)));
    });
  }
}
