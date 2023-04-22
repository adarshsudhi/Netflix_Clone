import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/Domain/Core/Failure.dart';
import 'package:netflix/Domain/GetActors/Actorsabstract.dart';
import 'package:netflix/Domain/GetActors/Actorsmodel/Actorsmodel.dart';

part 'get_actors_event.dart';
part 'get_actors_state.dart';
part 'get_actors_bloc.freezed.dart';

@injectable
class GetActorsBloc extends Bloc<GetActorsEvent, GetActorsState> {
  final GetactorRepo repo;
  GetActorsBloc(this.repo) : super(GetActorsState.initial()) {
    on<_GetActorsImage>((event, emit) async {
      emit(state.copyWith(
        Isloading: true,
        Iserror: false,
      ));
      final Either<MainFailure, List<ActorModel>> results =
          await repo.Getactorprofiles(event.id);
      emit(results.fold(
          (mainfailure) => state.copyWith(Isloading: false, Iserror: true),
          (Working) => state.copyWith(
              Isloading: false, Iserror: false, Actors: Working)));
    });
  }
}
