import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/Domain/Core/Failure.dart';
import 'package:netflix/Domain/Hot&New/EveryOnesabstract.dart';

import '../../../../Domain/Hot&New/Model/Everyoneswatching/Everyonesmodel.dart';

part 'everyones_event.dart';
part 'everyones_state.dart';
part 'everyones_bloc.freezed.dart';

@injectable
class EveryonesBloc extends Bloc<EveryonesEvent, EveryonesState> {
  final EveryonesRepo repo;
  EveryonesBloc(this.repo) : super(EveryonesState.initial()) {
    on<_GetEveryones>((event, emit) async {
      if (state.Everyones.isNotEmpty) {
        emit(state.copyWith(
          isloading: true,
          erroroccured: false,
        ));
        return;
      }
      emit(state.copyWith(
        isloading: true,
        erroroccured: false,
      ));
      final Either<MainFailure, List<EveryOnesmodel>> result =
          await repo.GetEveryone();

      emit(result.fold(
          (fail) => state.copyWith(isloading: false, erroroccured: true),
          (Done) => state.copyWith(
              isloading: false, erroroccured: false, Everyones: Done)));
    });
  }
}
