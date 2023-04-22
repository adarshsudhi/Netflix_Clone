import 'package:injectable/injectable.dart';
import 'package:netflix/Domain/TopRatedShows/models/Topratedshowsmodel.dart';
import 'package:netflix/Domain/Core/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:netflix/infrastructure/core/API_Endpoints.dart';
import '../../../Domain/TopRatedShows/Topratedabtract.dart';

@LazySingleton(as: TopratedRepo)
class TopratedRepository implements TopratedRepo {
  @override
  Future<Either<MainFailure, List<TopratedModel>>> Gettoprated() async {
    try {
      final Response response = await Dio().get(APIEndPoints.TopratedShows);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<TopratedModel> list = [];
        (response.data['results'] as List).forEach((element) {
          list.add(TopratedModel.fromJson(element));
        });

        return Right(list);
      } else {
        return left(MainFailure.serverfail());
      }
    } catch (e) {
      return left(MainFailure.clientfail());
    }
  }
}
