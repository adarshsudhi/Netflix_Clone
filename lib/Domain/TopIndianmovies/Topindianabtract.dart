import 'package:dartz/dartz.dart';
import 'package:netflix/Domain/Core/Failure.dart';

import 'models/Topindianmoviemodels.dart';

abstract class TopIndianRepo {
  Future<Either<MainFailure, List<TopindianMovie>>> Gettopindianmovies();
}
