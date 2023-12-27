// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_order_cash_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceOrderCashModel _$PlaceOrderCashModelFromJson(Map<String, dynamic> json) =>
    PlaceOrderCashModel(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      orderData: json['order_data'] == null
          ? null
          : OrderData.fromJson(json['order_data'] as Map<String, dynamic>),
    )..paymentStatus = json['payment_status'] as String?;

Map<String, dynamic> _$PlaceOrderCashModelToJson(
        PlaceOrderCashModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'payment_status': instance.paymentStatus,
      'message': instance.message,
      'order_data': instance.orderData,
    };
