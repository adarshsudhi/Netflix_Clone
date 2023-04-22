import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/Domain/Core/Failure.dart';
import 'package:netflix/Domain/Hot&New/ComingsoonAbstract.dart';

import '../../../../Domain/Hot&New/Model/Comingsoon/Comingsoonmodel.dart';

part 'comingsoon_event.dart';
part 'comingsoon_state.dart';
part 'comingsoon_bloc.freezed.dart';

@injectable
class ComingsoonBloc extends Bloc<ComingsoonEvent, ComingsoonState> {
  final ComingsoonRepo repo;
  ComingsoonBloc(this.repo) : super(ComingsoonState.initial()) {
    on<_GetComingsoon>((event, emit) async {
      if (state.comingsoon.isNotEmpty) {
        emit(state.copyWith(
            isloading: false, iserror: false, comingsoon: state.comingsoon));
        return;
      }
      emit(state.copyWith(
        isloading: true,
        iserror: false,
      ));
      final Either<MainFailure, List<Comingsoonmodel>> result =
          await repo.Getcomingsoon();

      emit(result.fold((fail) {
        return state.copyWith(
          isloading: false,
          iserror: true,
        );
      }, (Sucess) {
        return state.copyWith(
            iserror: false, isloading: false, comingsoon: Sucess);
      }));
    });
  }
}
