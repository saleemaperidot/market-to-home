// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WishListDataImpl _$$WishListDataImplFromJson(Map<String, dynamic> json) =>
    _$WishListDataImpl(
      productId: json['product_id'] as int?,
      productName: json['product_name'] as String?,
      productPrice: (json['product_price'] as num?)?.toDouble(),
      productImage: json['product_image'] as String?,
      productStatus: json['product_status'] as int?,
    );

Map<String, dynamic> _$$WishListDataImplToJson(_$WishListDataImpl instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'product_name': instance.productName,
      'product_price': instance.productPrice,
      'product_image': instance.productImage,
      'product_status': instance.productStatus,
    };
