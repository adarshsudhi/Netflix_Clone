import 'dart:math';

import 'package:injectable/injectable.dart';
import 'package:netflix/Domain/Core/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix/Domain/Downloads/DownloadRepo.dart';
import 'package:netflix/Domain/Downloads/Model/Downloadmodel.dart';
import 'package:dio/dio.dart';
import 'package:netflix/infrastructure/core/API_Endpoints.dart';

@LazySingleton(as: DownloadRepo)
class DownloadRepositary implements DownloadRepo {
  @override
  Future<Either<MainFailure, List<DownloadModel>>> GetDownloadImages() async {
    try {
      final Response response = await Dio().get(APIEndPoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        List<DownloadModel> list = [];
        final data = (response.data["results"] as List).map((e) {
          return DownloadModel.fromJson(e);
        }).toList();

        return right(data);
      } else {
        return left(MainFailure.serverfail());
      }
    } catch (e) {
      return left(MainFailure.clientfail());
    }
  }
}
