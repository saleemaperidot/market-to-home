import 'package:dartz/dartz.dart';
import 'package:market_2_home/domain/cart/order/payment_status_response_model/payment_status_response_model.dart';
import 'package:market_2_home/domain/cart/order/place_order_cash_model/place_order_cash_model.dart';
import 'package:market_2_home/domain/cart/order/place_order_online_initiate_model/place_order_online_initiate_model.dart';
import 'package:market_2_home/domain/main_failures/main_failures.dart';

abstract class OrderRepo {
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
      String isWallet);

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
          String isWallet);

  Future<Either<MainFailure, PlaceOrderCashModel>> getPaymentStatusResponse(
      String userId, String orderID);
}
