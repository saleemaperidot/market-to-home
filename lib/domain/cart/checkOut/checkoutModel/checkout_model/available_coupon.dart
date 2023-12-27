import 'package:freezed_annotation/freezed_annotation.dart';

part 'available_coupon.freezed.dart';
part 'available_coupon.g.dart';

@freezed
class AvailableCoupon with _$AvailableCoupon {
  factory AvailableCoupon({
    @JsonKey(name: 'coupon_code') String? couponCode,
    String? description,
    @JsonKey(name: 'is_applicable') bool? isApplicable,
  }) = _AvailableCoupon;

  factory AvailableCoupon.fromJson(Map<String, dynamic> json) =>
      _$AvailableCouponFromJson(json);
}
