import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/Domain/Core/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix/Domain/GetActors/Actorsabstract.dart';
import 'package:netflix/Domain/GetActors/Actorsmodel/Actorsmodel.dart';
import 'package:netflix/infrastructure/core/API_Endpoints.dart';

@LazySingleton(as: GetactorRepo)
class GetActorsRepository implements GetactorRepo {
  @override
  Future<Either<MainFailure, List<ActorModel>>> Getactorprofiles(int id) async {
    try {
      List<ActorModel> list = [];
      final Response response = await Dio().get(APIEndPoints().GetActors(id));

      (response.data['cast'] as List).forEach((element) {
        list.add(ActorModel.fromJson(element));
      });

      return right(list);
    } catch (e) {
      return Left(MainFailure.clientfail());
    }
  }
}
