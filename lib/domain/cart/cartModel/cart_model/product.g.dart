// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartProductImpl _$$CartProductImplFromJson(Map<String, dynamic> json) =>
    _$CartProductImpl(
      productId: json['product_id'] as int?,
      productName: json['product_name'] as String?,
      productQuantity: json['product_quantity'] as int?,
      productPrice: (json['product_price'] as num?)?.toDouble(),
      subTotal: (json['sub_total'] as num?)?.toDouble(),
      productImage: json['product_image'] as String?,
      vendor: json['vendor'] as String?,
      productStatus: json['product_status'] as int?,
    );

Map<String, dynamic> _$$CartProductImplToJson(_$CartProductImpl instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'product_name': instance.productName,
      'product_quantity': instance.productQuantity,
      'product_price': instance.productPrice,
      'sub_total': instance.subTotal,
      'product_image': instance.productImage,
      'vendor': instance.vendor,
      'product_status': instance.productStatus,
    };
