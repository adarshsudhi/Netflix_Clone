import 'package:dartz/dartz.dart';
import 'package:netflix/Domain/Core/Failure.dart';
import 'package:netflix/Domain/GetActors/Actorsmodel/Actorsmodel.dart';

abstract class GetactorRepo {
  Future<Either<MainFailure, List<ActorModel>>> Getactorprofiles(int id);
}
