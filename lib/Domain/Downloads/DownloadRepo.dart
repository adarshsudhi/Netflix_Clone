import 'package:netflix/Domain/Core/Failure.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix/Domain/Downloads/Model/Downloadmodel.dart';

abstract class DownloadRepo {
  Future<Either<MainFailure, List<DownloadModel>>> GetDownloadImages();
}
