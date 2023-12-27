import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:market_2_home/domain/cart/checkOut/checkoutModel/checkout_model/coupon_datas.dart';

import 'coupon_data.dart';

part 'coupon_code.freezed.dart';
part 'coupon_code.g.dart';

@freezed
class CouponCode with _$CouponCode {
  factory CouponCode({
    @JsonKey(name: 'coupon_id') int? couponId,
    @JsonKey(name: 'coupon_name') String? couponName,
    @JsonKey(name: 'validation_success') bool? validationSuccess,
    @JsonKey(name: 'coupon_data') CouponDatas? couponDatas,
  }) = _CouponCode;

  factory CouponCode.fromJson(Map<String, dynamic> json) =>
      _$CouponCodeFromJson(json);
}
