// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CouponDataImpl _$$CouponDataImplFromJson(Map<String, dynamic> json) =>
    _$CouponDataImpl(
      status: json['status'] as bool?,
      appliedRule: json['applied_rule'] as bool?,
      couponCode: json['coupon_code'] == null
          ? null
          : CouponCode.fromJson(json['coupon_code'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CouponDataImplToJson(_$CouponDataImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'applied_rule': instance.appliedRule,
      'coupon_code': instance.couponCode,
    };
