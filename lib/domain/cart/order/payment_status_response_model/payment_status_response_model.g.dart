// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_status_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentStatusResponseModel _$PaymentStatusResponseModelFromJson(
        Map<String, dynamic> json) =>
    PaymentStatusResponseModel(
      status: json['status'] as bool?,
      paymentStatus: json['payment_status'] as String?,
      orderData: json['order_data'] == null
          ? null
          : OrderData.fromJson(json['order_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentStatusResponseModelToJson(
        PaymentStatusResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'payment_status': instance.paymentStatus,
      'order_data': instance.orderData,
    };
