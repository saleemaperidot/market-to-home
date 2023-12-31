// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderData _$OrderDataFromJson(Map<String, dynamic> json) => OrderData(
      orderId: json['order_id'] as int?,
      uuid: json['uuid'] as String?,
      invoiceId: json['invoice_id'] as String?,
      secretKey: json['secret_key'] as String?,
      shopTypeId: json['shop_type_id'],
      orderSubTotal: (json['order_sub_total'] as num?)?.toDouble(),
      orderShipping: json['order_shipping'] as int?,
      vat: (json['vat'] as num?)?.toDouble(),
      walletUsed: json['wallet_used'] as int?,
      orderCouponDiscount: json['order_coupon_discount'] as int?,
      orderFinalAmount: (json['order_final_amount'] as num?)?.toDouble(),
      exchangeRate: json['exchange_rate'] as int?,
      currencyId: json['currency_id'] as int?,
      couponId: json['coupon_id'] as int?,
      rulePropertyId: json['rule_property_id'] as int?,
      paymentMethod: json['payment_method'] as String?,
      paymentStatus: json['payment_status'] as String?,
      customerId: json['customer_id'] as int?,
      billingFirstName: json['billing_first_name'] as String?,
      billingLastName: json['billing_last_name'] as String?,
      billingCountry: json['billing_country'] as String?,
      billingStreetName: json['billing_street_name'] as String?,
      billingApartmentDetails: json['billing_apartment_details'] as String?,
      buildingNo: json['building_no'] as String?,
      buildingName: json['building_name'] as String?,
      buildingLocation: json['building_location'] as String?,
      buildingEmirate: json['building_emirate'] as String?,
      billingPincode: json['billing_pincode'] as String?,
      billingTownCity: json['billing_town_city'] as String?,
      billingEmailId: json['billing_email_id'] as String?,
      billingPhone: json['billing_phone'] as String?,
      billingLatitude: json['billing_latitude'],
      billingLongitude: json['billing_longitude'],
      billingOrderNotes: json['billing_order_notes'] as String?,
      paymentOrderNumber: json['payment_order_number'] as String?,
      createdTime: json['created_time'] as String?,
      timePeriod: json['time_period'],
      transactionAmount: json['transaction_amount'],
      transactionStatus: json['transaction_status'],
      createdIp: json['created_ip'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$OrderDataToJson(OrderData instance) => <String, dynamic>{
      'order_id': instance.orderId,
      'uuid': instance.uuid,
      'invoice_id': instance.invoiceId,
      'secret_key': instance.secretKey,
      'shop_type_id': instance.shopTypeId,
      'order_sub_total': instance.orderSubTotal,
      'order_shipping': instance.orderShipping,
      'vat': instance.vat,
      'wallet_used': instance.walletUsed,
      'order_coupon_discount': instance.orderCouponDiscount,
      'order_final_amount': instance.orderFinalAmount,
      'exchange_rate': instance.exchangeRate,
      'currency_id': instance.currencyId,
      'coupon_id': instance.couponId,
      'rule_property_id': instance.rulePropertyId,
      'payment_method': instance.paymentMethod,
      'payment_status': instance.paymentStatus,
      'customer_id': instance.customerId,
      'billing_first_name': instance.billingFirstName,
      'billing_last_name': instance.billingLastName,
      'billing_country': instance.billingCountry,
      'billing_street_name': instance.billingStreetName,
      'billing_apartment_details': instance.billingApartmentDetails,
      'building_no': instance.buildingNo,
      'building_name': instance.buildingName,
      'building_location': instance.buildingLocation,
      'building_emirate': instance.buildingEmirate,
      'billing_pincode': instance.billingPincode,
      'billing_town_city': instance.billingTownCity,
      'billing_email_id': instance.billingEmailId,
      'billing_phone': instance.billingPhone,
      'billing_latitude': instance.billingLatitude,
      'billing_longitude': instance.billingLongitude,
      'billing_order_notes': instance.billingOrderNotes,
      'payment_order_number': instance.paymentOrderNumber,
      'created_time': instance.createdTime,
      'time_period': instance.timePeriod,
      'transaction_amount': instance.transactionAmount,
      'transaction_status': instance.transactionStatus,
      'created_ip': instance.createdIp,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
