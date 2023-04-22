import 'package:injectable/injectable.dart';
import 'package:netflix/Domain/Hot&New/Model/Comingsoon/Comingsoonmodel.dart';

import 'package:netflix/Domain/Core/Failure.dart';

import 'package:dartz/dartz.dart';
import 'package:netflix/infrastructure/core/API_Endpoints.dart';

import '../../../../Domain/Hot&New/ComingsoonAbstract.dart';

import 'package:dio/dio.dart';

@LazySingleton(as: ComingsoonRepo)
class ComingsoonRepository implements ComingsoonRepo {
  @override
  Future<Either<MainFailure, List<Comingsoonmodel>>> Getcomingsoon() async {
    try {
      final Response response = await Dio().get(APIEndPoints.Comingsoon);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<Comingsoonmodel> data = [];
        (response.data['results'] as List).forEach((element) {
          data.add(Comingsoonmodel.fromJson(element));
        });
        return Right(data);
      } else {
        return left(MainFailure.serverfail());
      }
    } catch (e) {
      return left(MainFailure.clientfail());
    }
  }
}
