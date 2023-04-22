import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix/Domain/Core/Failure.dart';
import 'package:netflix/Domain/Searchmodel/searchres/searchres.dart';

abstract class SearchRepo {
  Future<Either<MainFailure, Searchres>> GetSearchresult(
    String Moviequery,
  );
}
