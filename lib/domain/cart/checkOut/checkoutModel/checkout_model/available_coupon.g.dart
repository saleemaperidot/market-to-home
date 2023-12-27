// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_coupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvailableCouponImpl _$$AvailableCouponImplFromJson(
        Map<String, dynamic> json) =>
    _$AvailableCouponImpl(
      couponCode: json['coupon_code'] as String?,
      description: json['description'] as String?,
      isApplicable: json['is_applicable'] as bool?,
    );

Map<String, dynamic> _$$AvailableCouponImplToJson(
        _$AvailableCouponImpl instance) =>
    <String, dynamic>{
      'coupon_code': instance.couponCode,
      'description': instance.description,
      'is_applicable': instance.isApplicable,
    };
