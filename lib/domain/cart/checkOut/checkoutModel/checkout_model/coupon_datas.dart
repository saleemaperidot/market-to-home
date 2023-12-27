import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon_datas.freezed.dart';
part 'coupon_datas.g.dart';

@freezed
class CouponDatas with _$CouponDatas {
  factory CouponDatas({
    @JsonKey(name: 'discount') double? discount,
    @JsonKey(name: 'coupon_value') double? couponAalue,
    @JsonKey(name: 'coupon_amount') double? couponAmount,
    @JsonKey(name: 'discount_type') String? discountType,
  }) = _CouponDatas;

  factory CouponDatas.fromJson(Map<String, dynamic> json) =>
      _$CouponDatasFromJson(json);
}
