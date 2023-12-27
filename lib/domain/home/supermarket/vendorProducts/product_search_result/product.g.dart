// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      productId: json['product_id'] as int?,
      productName: json['product_name'] as String?,
      productUrlCode: json['product_url_code'] as String?,
      productImage: json['product_image'] as String?,
      vendorUserId: json['vendor_user_id'] as int?,
      vendorId: json['vendor_id'] as int?,
      vendorShopName: json['vendor_shop_name'] as String?,
      vendorUrlCode: json['vendor_url_code'] as String?,
      shopSubCatName: json['shop_sub_cat_name'] as String?,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'product_id': instance.productId,
      'product_name': instance.productName,
      'product_url_code': instance.productUrlCode,
      'product_image': instance.productImage,
      'vendor_user_id': instance.vendorUserId,
      'vendor_id': instance.vendorId,
      'vendor_shop_name': instance.vendorShopName,
      'vendor_url_code': instance.vendorUrlCode,
      'shop_sub_cat_name': instance.shopSubCatName,
    };
