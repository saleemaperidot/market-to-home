// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      error: json['error'] as int?,
      message: json['message'] as String?,
      subTotal: (json['sub_total'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      grandTotal: (json['grand_total'] as num?)?.toDouble(),
      cartOrderTotal: json['cart_order_total'] as String?,
      walletPointEarns: json['wallet_point_earns'] as int?,
    );

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'sub_total': instance.subTotal,
      'vat': instance.vat,
      'grand_total': instance.grandTotal,
      'cart_order_total': instance.cartOrderTotal,
      'wallet_point_earns': instance.walletPointEarns,
    };
