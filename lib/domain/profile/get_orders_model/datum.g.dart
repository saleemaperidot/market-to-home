// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOrderData _$GetOrderDataFromJson(Map<String, dynamic> json) => GetOrderData(
      orderId: json['order_id'] as int?,
      invoiceId: json['invoice_id'] as String?,
      secretKey: json['secret_key'] as String?,
      vat: (json['vat'] as num?)?.toDouble(),
      orderFinalAmount: (json['order_final_amount'] as num?)?.toDouble(),
      orderFinalAmountFormatted:
          json['order_final_amount_formatted'] as String?,
      orderedOn: json['ordered_on'] as String?,
    );

Map<String, dynamic> _$GetOrderDataToJson(GetOrderData instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'invoice_id': instance.invoiceId,
      'secret_key': instance.secretKey,
      'vat': instance.vat,
      'order_final_amount': instance.orderFinalAmount,
      'order_final_amount_formatted': instance.orderFinalAmountFormatted,
      'ordered_on': instance.orderedOn,
    };
