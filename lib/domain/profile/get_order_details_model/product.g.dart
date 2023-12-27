// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      orderProductId: json['order_product_id'] as int?,
      productId: json['product_id'] as int?,
      productName: json['product_name'] as String?,
      productBarcode: json['product_barcode'] as String?,
      productImage: json['product_image'] as String?,
      productPrice: (json['product_price'] as num?)?.toDouble(),
      productQuantity: json['product_quantity'] as int?,
      mainCategory: json['main_category'] as String?,
      subCategory: json['sub_category'] as String?,
      assignedCategory: json['assigned_category'] as String?,
      vendor: json['vendor'] as String?,
      orderStatus: json['order_status'] as String?,
      insuranceStatus: json['insurance_status'],
      deliveredOn: json['delivered_on'],
      cancelledDate: json['cancelled_date'],
      substituteExcessAmountHandling: json['substitute_excess_amount_handling'],
      substituteExcessAmount:
          (json['substitute_excess_amount'] as num?)?.toDouble(),
      insurancePrice: json['insurance_price'],
      substituteProductData: json['substitute_product_data'] == null
          ? null
          : SubstituteProductData.fromJson(
              json['substitute_product_data'] as Map<String, dynamic>),
      isCancellable: json['is_cancellable'] as bool?,
      returnable: json['returnable'] as bool?,
      is_returned: json['is_returned'] == null
          ? null
          : IsReturned.fromJson(json['is_returned'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'order_product_id': instance.orderProductId,
      'product_id': instance.productId,
      'product_name': instance.productName,
      'product_barcode': instance.productBarcode,
      'product_image': instance.productImage,
      'product_price': instance.productPrice,
      'product_quantity': instance.productQuantity,
      'main_category': instance.mainCategory,
      'sub_category': instance.subCategory,
      'assigned_category': instance.assignedCategory,
      'vendor': instance.vendor,
      'order_status': instance.orderStatus,
      'insurance_status': instance.insuranceStatus,
      'delivered_on': instance.deliveredOn,
      'cancelled_date': instance.cancelledDate,
      'substitute_excess_amount_handling':
          instance.substituteExcessAmountHandling,
      'substitute_excess_amount': instance.substituteExcessAmount,
      'insurance_price': instance.insurancePrice,
      'substitute_product_data': instance.substituteProductData,
      'is_cancellable': instance.isCancellable,
      'returnable': instance.returnable,
      'is_returned': instance.is_returned,
    };
