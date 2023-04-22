import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/Domain/Core/Failure.dart';
import 'package:netflix/Domain/TopIndianmovies/Topindianabtract.dart';

import '../../Domain/TopIndianmovies/models/Topindianmoviemodels.dart';

part 'topindianmovie_event.dart';
part 'topindianmovie_state.dart';
part 'topindianmovie_bloc.freezed.dart';

@injectable
class TopindianmovieBloc
    extends Bloc<TopindianmovieEvent, TopindianmovieState> {
  final TopIndianRepo repo;
  TopindianmovieBloc(this.repo) : super(TopindianmovieState.initial()) {
    on<_GetTopIndianmovies>((event, emit) async {
      if (state.topmovies.isNotEmpty) {
        emit(state.copyWith(
            iserror: false, isloading: false, topmovies: state.topmovies));
        return;
      }
      emit(state.copyWith(
        iserror: false,
        isloading: true,
      ));
      final Either<MainFailure, List<TopindianMovie>> response =
          await repo.Gettopindianmovies();
      emit(response.fold(
          (fail) => state.copyWith(
                isloading: false,
                iserror: true,
              ),
          (Success) => state.copyWith(
              isloading: false, iserror: false, topmovies: Success)));
    });
  }
}
