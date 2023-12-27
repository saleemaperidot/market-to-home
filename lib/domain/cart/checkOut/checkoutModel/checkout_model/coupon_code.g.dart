// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CouponCodeImpl _$$CouponCodeImplFromJson(Map<String, dynamic> json) =>
    _$CouponCodeImpl(
      couponId: json['coupon_id'] as int?,
      couponName: json['coupon_name'] as String?,
      validationSuccess: json['validation_success'] as bool?,
      couponDatas: json['coupon_data'] == null
          ? null
          : CouponDatas.fromJson(json['coupon_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CouponCodeImplToJson(_$CouponCodeImpl instance) =>
    <String, dynamic>{
      'coupon_id': instance.couponId,
      'coupon_name': instance.couponName,
      'validation_success': instance.validationSuccess,
      'coupon_data': instance.couponDatas,
    };
