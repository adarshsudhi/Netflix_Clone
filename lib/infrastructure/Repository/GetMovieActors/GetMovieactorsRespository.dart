import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/Domain/GetMovieActors/Models/GetMovieActormodel.dart';

import 'package:netflix/Domain/Core/Failure.dart';

import 'package:dartz/dartz.dart';
import 'package:netflix/infrastructure/core/API_Endpoints.dart';

import '../../../Domain/GetMovieActors/GetMovieAbtract.dart';

@LazySingleton(as: GetMovieActorREPO)
class GetmovieRespository implements GetMovieActorREPO {
  @override
  Future<Either<MainFailure, List<GetMovieActorModel>>> GetMovieActorprofile(
      int id) async {
    try {
      List<GetMovieActorModel> list = [];
      final Response response =
          await Dio().get(APIEndPoints().GetMovieActors(id));
      if (response.statusCode == 200 || response.statusCode == 201) {
        (response.data['cast'] as List).forEach((element) {
          list.add(GetMovieActorModel.fromJson(element));
        });
        return right(list);
      } else {
        return Left(MainFailure.clientfail());
      }
    } catch (e) {
      return left(MainFailure.serverfail());
    }
  }
}
