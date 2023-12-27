// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_datas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CouponDatasImpl _$$CouponDatasImplFromJson(Map<String, dynamic> json) =>
    _$CouponDatasImpl(
      discount: (json['discount'] as num?)?.toDouble(),
      couponAalue: (json['coupon_value'] as num?)?.toDouble(),
      couponAmount: (json['coupon_amount'] as num?)?.toDouble(),
      discountType: json['discount_type'] as String?,
    );

Map<String, dynamic> _$$CouponDatasImplToJson(_$CouponDatasImpl instance) =>
    <String, dynamic>{
      'discount': instance.discount,
      'coupon_value': instance.couponAalue,
      'coupon_amount': instance.couponAmount,
      'discount_type': instance.discountType,
    };
