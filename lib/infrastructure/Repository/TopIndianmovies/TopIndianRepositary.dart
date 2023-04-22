import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/Domain/TopIndianmovies/models/Topindianmoviemodels.dart';
import 'package:netflix/Domain/Core/Failure.dart';
import 'package:netflix/infrastructure/core/API_Endpoints.dart';

import '../../../Domain/TopIndianmovies/Topindianabtract.dart';

@LazySingleton(as: TopIndianRepo)
class Topindianrepositary implements TopIndianRepo {
  @override
  Future<Either<MainFailure, List<TopindianMovie>>> Gettopindianmovies() async {
    try {
      final Response response = await Dio().get(APIEndPoints.IndianShows);
      if (response.statusCode == 200 || response.statusCode == 201) {
        List<TopindianMovie> list = [];
        (response.data['results'] as List).forEach((element) {
          list.add(TopindianMovie.fromJson(element));
        });
        return right(list);
      } else {
        return left(MainFailure.serverfail());
      }
    } catch (e) {
      return left(MainFailure.clientfail());
    }
  }
}
