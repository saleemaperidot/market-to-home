// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_coupon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplyCouponModel _$ApplyCouponModelFromJson(Map<String, dynamic> json) =>
    ApplyCouponModel(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      coupon: json['coupon'] as String?,
      subTotal: (json['sub_total'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      grandTotal: (json['grand_total'] as num?)?.toDouble(),
      walletPointEarns: json['wallet_point_earns'] as int?,
    );

Map<String, dynamic> _$ApplyCouponModelToJson(ApplyCouponModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'coupon': instance.coupon,
      'sub_total': instance.subTotal,
      'vat': instance.vat,
      'discount': instance.discount,
      'grand_total': instance.grandTotal,
      'wallet_point_earns': instance.walletPointEarns,
    };
