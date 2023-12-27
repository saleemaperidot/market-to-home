import 'package:dartz/dartz.dart';
import 'package:market_2_home/domain/cart/checkOut/apply_coupon_model/apply_coupon_model.dart';
import 'package:market_2_home/domain/cart/checkOut/checkoutModel/checkout_model/checkout_model.dart';
import 'package:market_2_home/domain/cart/checkOut/remove_applied_coupon/remove_applied_coupon.dart';

import '../../main_failures/main_failures.dart';

abstract class CheckoutRepo {
  Future<Either<MainFailure, CheckoutModel>> checkout(
      String userId, String lat, String long);

  Future<Either<MainFailure, ApplyCouponModel>> applyCoupon(
      String userId, String couponCode);

  Future<Either<MainFailure, RemoveAppliedCoupon>> removeCoupon(String userId);
}
