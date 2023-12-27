// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      productId: json['product_id'] as int?,
      productName: json['product_name'] as String?,
      productQuantity: json['product_quantity'] as int?,
      productPrice: (json['product_price'] as num?)?.toDouble(),
      subTotal: (json['sub_total'] as num?)?.toDouble(),
      productImage: json['product_image'] as String?,
      vendor: json['vendor'] as String?,
      vendorStatus: json['vendor_status'] as String?,
      vendorAvailable: json['vendor_available'] as bool?,
      vendorAvailableMessage: json['vendor_available_message'] as String?,
      productStatus: json['product_status'] as int?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'product_name': instance.productName,
      'product_quantity': instance.productQuantity,
      'product_price': instance.productPrice,
      'sub_total': instance.subTotal,
      'product_image': instance.productImage,
      'vendor': instance.vendor,
      'vendor_status': instance.vendorStatus,
      'vendor_available': instance.vendorAvailable,
      'vendor_available_message': instance.vendorAvailableMessage,
      'product_status': instance.productStatus,
    };
