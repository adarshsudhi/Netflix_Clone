import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/Domain/Core/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix/Domain/Searchmodel/Searchabstract.dart';
import 'package:netflix/Domain/Searchmodel/searchres/searchres.dart';

import '../../core/API_Endpoints.dart';

@LazySingleton(as: SearchRepo)
class Searchrespositaory implements SearchRepo {
  @override
  Future<Either<MainFailure, Searchres>> GetSearchresult(
      String Moviequery) async {
    try {
      final Response response = await Dio()
          .get(APIEndPoints.Search, queryParameters: {'query': Moviequery});
      if (response.statusCode == 200 || response.statusCode == 201) {
        final res = Searchres.fromJson(response.data);

        return right(res);
      } else {
        return left(MainFailure.serverfail());
      }
    } catch (e) {
      return left(MainFailure.clientfail());
    }
  }
}
