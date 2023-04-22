import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/Domain/Core/Failure.dart';

import '../../Domain/GetMovieActors/GetMovieAbtract.dart';
import '../../Domain/GetMovieActors/Models/GetMovieActormodel.dart';

part 'get_movie_actors_event.dart';
part 'get_movie_actors_state.dart';
part 'get_movie_actors_bloc.freezed.dart';

@injectable
class GetMovieActorsBloc
    extends Bloc<GetMovieActorsEvent, GetMovieActorsState> {
  final GetMovieActorREPO Repo;
  GetMovieActorsBloc(this.Repo) : super(GetMovieActorsState.initial()) {
    on<_Getmovieactors>((event, emit) async {
      emit(state.copyWith(
        Isloading: true,
        Iserror: false,
      ));
      final Either<MainFailure, List<GetMovieActorModel>> result =
          await Repo.GetMovieActorprofile(event.id);

      emit(result.fold((l) => state.copyWith(Isloading: false, Iserror: true),
          (r) => state.copyWith(Actors: r, Isloading: false, Iserror: false)));
    });
  }
}
