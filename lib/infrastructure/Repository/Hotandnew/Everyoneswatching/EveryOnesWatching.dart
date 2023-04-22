import 'package:injectable/injectable.dart';
import 'package:netflix/Domain/Hot&New/Model/Everyoneswatching/Everyonesmodel.dart';

import 'package:netflix/Domain/Core/Failure.dart';

import 'package:dartz/dartz.dart';
import 'package:netflix/infrastructure/core/API_Endpoints.dart';

import '../../../../Domain/Hot&New/EveryOnesabstract.dart';

import 'package:dio/dio.dart';

@LazySingleton(as: EveryonesRepo)
class EveryOnesWatching implements EveryonesRepo {
  @override
  Future<Either<MainFailure, List<EveryOnesmodel>>> GetEveryone() async {
    try {
      final Response response = await Dio().get(APIEndPoints.Everyoneswatching);
      List<EveryOnesmodel> list = [];
      (response.data['results'] as List).forEach((element) {
        list.add(EveryOnesmodel.fromJson(element));
      });

      return Right(list);
    } catch (e) {
      return left(MainFailure.clientfail());
    }
  }
}
