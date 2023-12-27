import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:market_2_home/domain/common/common_response/common_response.dart';
import 'package:market_2_home/domain/core/shared_pref/shared_pref.dart';

import 'package:market_2_home/domain/home/home_repo.dart';

import '../../domain/core/constant.dart';
import '../../domain/home/dash_board_model/dash_board_model.dart';
import '../../domain/main_failures/main_failures.dart';

@LazySingleton(as: HomeRepo)
class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<MainFailure, DashBoardModel>> dashboard() async {
    try {
      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.dashboard,
        options: Options(
          headers: {
            'Accept': 'application/json',
          },
        ),
      );

      if (response.statusCode == 200) {
        final result = DashBoardModel.fromJson(response.data);
        log(result.toString());
        return Right(result);
      } else {
        return Left(MainFailure.serverFailure(response.data));
      }
    } catch (e) {
      log(e.toString() + 'hellow');
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, CommonResponse>> updateLocation(
      String lat, String long,
      {String? userId}) async {
    final formData = FormData.fromMap({
      'user_id': userId ?? '',
      'latitude': lat,
      'longitude': long,
    });

    final token = await SharedPreferencesManager.getString(
        SharedPreferencesManager.authToken);

    try {
      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.updateLocation,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': token},
        ),
      );

      if (response.statusCode == 200) {
        final result = CommonResponse.fromJson(response.data);
        log(result.toString());
        return Right(result);
      } else {
        return Left(MainFailure.serverFailure(response.data));
      }
    } catch (e) {
      log(e.toString() + 'hellow');
      return const Left(MainFailure.clientFailure());
    }
  }
}
