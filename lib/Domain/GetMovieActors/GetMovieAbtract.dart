import 'package:dartz/dartz.dart';
import 'package:netflix/Domain/Core/Failure.dart';

import 'Models/GetMovieActormodel.dart';

abstract class GetMovieActorREPO {
  Future<Either<MainFailure, List<GetMovieActorModel>>> GetMovieActorprofile(
      int id);
}
