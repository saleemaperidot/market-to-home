import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:market_2_home/domain/cart/checkOut/apply_coupon_model/apply_coupon_model.dart';
import 'package:market_2_home/domain/cart/checkOut/checkoutModel/checkout_model/checkout_model.dart';
import 'package:market_2_home/domain/cart/checkOut/checkout_repo.dart';
import 'package:market_2_home/domain/cart/checkOut/remove_applied_coupon/remove_applied_coupon.dart';
import 'package:market_2_home/domain/core/constant.dart';

import '../../../domain/core/shared_pref/shared_pref.dart';
import '../../../domain/main_failures/main_failures.dart';

@LazySingleton(as: CheckoutRepo)
class CheckoutRepoImpl implements CheckoutRepo {
  @override
  Future<Either<MainFailure, CheckoutModel>> checkout(
      String userId, String lat, String long) async {
    print(lat);
    print(long);
    print(userId);
    try {
      final formData = FormData.fromMap({
        'user_id': userId,
        'latitude': lat,
        'longitude': long,
      });
      final token = await SharedPreferencesManager.getString(
          SharedPreferencesManager.authToken);

      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.checkout,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': token},
        ),
      );

      print(response.data);
      if (response.statusCode == 200) {
        final result = CheckoutModel.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(MainFailure.clientFailure());
      }
    } catch (e) {
      print(e.toString());

      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, ApplyCouponModel>> applyCoupon(
      String userId, String couponCode) async {
    try {
      final formData = FormData.fromMap({
        'user_id': userId,
        'coupon_code': couponCode,
      });

      final token = await SharedPreferencesManager.getString(
          SharedPreferencesManager.authToken);

      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.applyCouponProducts,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': token},
        ),
      );

      inspect(response.data);

      if (response.statusCode == 200) {
        final result = ApplyCouponModel.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(MainFailure.clientFailure());
      }
    } catch (e) {
      log('error spot');
      log(e.toString());

      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, RemoveAppliedCoupon>> removeCoupon(
      String userId) async {
    try {
      final formData = FormData.fromMap({
        'user_id': userId,
      });

      final token = await SharedPreferencesManager.getString(
          SharedPreferencesManager.authToken);

      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.removeCouponProducts,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': token},
        ),
      );

      inspect(response.data);

      if (response.statusCode == 200) {
        final result = RemoveAppliedCoupon.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(MainFailure.clientFailure());
      }
    } catch (e) {
      log(e.toString());

      return const Left(MainFailure.clientFailure());
    }
  }
}
