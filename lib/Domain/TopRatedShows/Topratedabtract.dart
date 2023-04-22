import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:netflix/Domain/Core/Failure.dart';

import 'models/Topratedshowsmodel.dart';

abstract class TopratedRepo {
  Future<Either<MainFailure, List<TopratedModel>>> Gettoprated();
}
