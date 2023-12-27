// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      orderId: json['order_id'] as int?,
      invoiceId: json['invoice_id'] as String?,
      secretKey: json['secret_key'] as String?,
      orderSubTotal: (json['order_sub_total'] as num?)?.toDouble(),
      cancelledAmount: (json['cancelled_amount'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      orderCouponDiscount: (json['order_coupon_discount'] as num?)?.toDouble(),
      orderFinalAmount: (json['order_final_amount'] as num?)?.toDouble(),
      paymentMethod: json['payment_method'] as String?,
      paymentStatus: json['payment_status'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      orderedOn: json['ordered_on'] as String?,
      isCancellable: json['is_cancellable'] as bool?,
      alreadyCancelled: json['already_cancelled'] as bool?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'invoice_id': instance.invoiceId,
      'secret_key': instance.secretKey,
      'order_sub_total': instance.orderSubTotal,
      'cancelled_amount': instance.cancelledAmount,
      'vat': instance.vat,
      'order_coupon_discount': instance.orderCouponDiscount,
      'order_final_amount': instance.orderFinalAmount,
      'payment_method': instance.paymentMethod,
      'payment_status': instance.paymentStatus,
      'address': instance.address,
      'ordered_on': instance.orderedOn,
      'is_cancellable': instance.isCancellable,
      'already_cancelled': instance.alreadyCancelled,
      'products': instance.products,
    };
