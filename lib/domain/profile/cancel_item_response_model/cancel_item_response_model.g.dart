// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_item_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CancelItemResponseModel _$CancelItemResponseModelFromJson(
        Map<String, dynamic> json) =>
    CancelItemResponseModel(
      status: json['status'] as bool?,
      orderSubTotal: (json['order_sub_total'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      orderCouponDiscount: json['order_coupon_discount'] as int?,
      orderFinalAmount: (json['order_final_amount'] as num?)?.toDouble(),
      message: json['message'] as String?,
    )..cancelledAmount = (json['cancelled_amount'] as num?)?.toDouble();

Map<String, dynamic> _$CancelItemResponseModelToJson(
        CancelItemResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'order_sub_total': instance.orderSubTotal,
      'vat': instance.vat,
      'order_coupon_discount': instance.orderCouponDiscount,
      'order_final_amount': instance.orderFinalAmount,
      'cancelled_amount': instance.cancelledAmount,
      'message': instance.message,
    };
