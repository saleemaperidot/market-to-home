// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_applied_coupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoveAppliedCoupon _$RemoveAppliedCouponFromJson(Map<String, dynamic> json) =>
    RemoveAppliedCoupon(
      status: json['status'] as bool?,
      message: json['message'] == null
          ? null
          : Message.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RemoveAppliedCouponToJson(
        RemoveAppliedCoupon instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
