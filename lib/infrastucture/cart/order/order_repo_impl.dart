import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:market_2_home/domain/cart/order/order_repo.dart';
import 'package:market_2_home/domain/cart/order/payment_status_response_model/payment_status_response_model.dart';
import 'package:market_2_home/domain/cart/order/place_order_cash_model/place_order_cash_model.dart';
import 'package:market_2_home/domain/cart/order/place_order_online_initiate_model/place_order_online_initiate_model.dart';
import 'package:market_2_home/domain/main_failures/main_failures.dart';

import '../../../domain/core/constant.dart';
import '../../../domain/core/shared_pref/shared_pref.dart';

@LazySingleton(as: OrderRepo)
class CartRepoImpl implements OrderRepo {
  @override
  Future<Either<MainFailure, PlaceOrderCashModel>> placeOrderCash(
      String userId,
      String paymentType,
      String firstName,
      String lastName,
      String apartment,
      String flatNo,
      String street,
      String lat,
      String long,
      String isWallet) async {
    final formData = FormData.fromMap({
      'user_id': userId,
      'payment_type': paymentType,
      'first_name': firstName,
      'last_name': lastName,
      'apartment': apartment,
      'flat_no': flatNo,
      'street': street,
      'latitude': lat,
      'longitude': long,
      'is_wallet': isWallet
    });

    print(userId);
    print(paymentType);
    print(firstName);
    print(lastName);
    print(apartment);
    print(userId);
    print(flatNo);
    print(street);
    print(flatNo);
    print(lat);
    print(long);

    final token = await SharedPreferencesManager.getString(
        SharedPreferencesManager.authToken);
    try {
      final Response response = await Dio(BaseOptions()).post(
        //'$baseUrl/placeOrder',
        Apis.baseUrl + Apis.placeOrder,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': token},
        ),
      );
      print(response);
      if (response.statusCode == 200) {
        final result = PlaceOrderCashModel.fromJson(response.data);

        return Right(result);
      } else {
        print(response.statusCode);
        return Left(MainFailure.serverFailure(response.data));
      }
    } catch (e) {
      print(e.toString());
      // log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, PlaceOrderOnlineInitiateModel>>
      placeOrderOnlinePaymentInitiate(
          String userId,
          String paymentType,
          String firstName,
          String lastName,
          String apartment,
          String flatNo,
          String street,
          String lat,
          String long,
          String isWallet) async {
    final formData = FormData.fromMap({
      'user_id': userId,
      'payment_type': paymentType,
      'first_name': firstName,
      'last_name': lastName,
      'apartment': apartment,
      'flat_no': flatNo,
      'street': street,
      'latitude': lat,
      'longitude': long,
      'is_wallet': isWallet
    });

    final token = await SharedPreferencesManager.getString(
        SharedPreferencesManager.authToken);

    try {
      final Response response = await Dio(BaseOptions()).post(
        // '$baseUrl/placeOrder',
        Apis.baseUrl + Apis.placeOrder,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': token},
        ),
      );

      if (response.statusCode == 200) {
        final result = PlaceOrderOnlineInitiateModel.fromJson(response.data);

        return Right(result);
      } else {
        log(response.statusCode.toString());
        return Left(MainFailure.serverFailure(response.data));
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, PlaceOrderCashModel>> getPaymentStatusResponse(
      String userId, String orderID) async {
    final formData = FormData.fromMap({'user_id': userId, 'order_id': orderID});

    final token = await SharedPreferencesManager.getString(
        SharedPreferencesManager.authToken);

    try {
      final Response response = await Dio(BaseOptions()).post(
        //  '$baseUrl/paymentVerify',
        Apis.baseUrl + Apis.paymentVerify,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': token},
        ),
      );
      print(response);
      if (response.statusCode == 200) {
        final result = PlaceOrderCashModel.fromJson(response.data);

        return Right(result);
      } else {
        print(response);
        return Left(MainFailure.serverFailure(response.data));
      }
    } catch (e) {
      log(e.toString());
      print(e);
      return const Left(MainFailure.clientFailure());
    }
  }
}
