import 'package:dartz/dartz.dart';
import 'package:market_2_home/domain/common/common_response/common_response.dart';

import '../main_failures/main_failures.dart';
import 'dash_board_model/dash_board_model.dart';

abstract class HomeRepo {
  Future<Either<MainFailure, DashBoardModel>> dashboard();
  Future<Either<MainFailure, CommonResponse>> updateLocation(
      String lat, String long,
      {String? userId});
}
