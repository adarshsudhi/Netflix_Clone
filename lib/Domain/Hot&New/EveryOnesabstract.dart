import 'package:dartz/dartz.dart';
import 'package:netflix/Domain/Core/Failure.dart';

import 'Model/Everyoneswatching/Everyonesmodel.dart';

abstract class EveryonesRepo {
  Future<Either<MainFailure, List<EveryOnesmodel>>> GetEveryone();
}
