import 'package:freezed_annotation/freezed_annotation.dart';

import 'coupon_code.dart';

part 'coupon_data.freezed.dart';
part 'coupon_data.g.dart';

@freezed
class CouponData with _$CouponData {
  factory CouponData({
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'applied_rule') bool? appliedRule,
    @JsonKey(name: 'coupon_code') CouponCode? couponCode,
  }) = _CouponData;

  factory CouponData.fromJson(Map<String, dynamic> json) =>
      _$CouponDataFromJson(json);
}
