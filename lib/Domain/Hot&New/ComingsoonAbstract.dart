import 'package:netflix/Domain/Core/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix/Domain/Hot&New/Model/Comingsoon/Comingsoonmodel.dart';

abstract class ComingsoonRepo {
  Future<Either<MainFailure, List<Comingsoonmodel>>> Getcomingsoon();
}
