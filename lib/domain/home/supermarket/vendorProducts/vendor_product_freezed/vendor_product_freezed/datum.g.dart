// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDatumFreezedImpl _$$ProductDatumFreezedImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDatumFreezedImpl(
      vendorProductId: json['vendor_product_id'] as int?,
      productId: json['product_id'] as int?,
      vendorId: json['vendor_id'] as int?,
      productPrice: (json['product_price'] as num?)?.toDouble(),
      productDiscount: json['product_discount'] as int?,
      isReturnable: json['is_returnable'] as int?,
      returnRuleId: json['return_rule_id'],
      productUrlCode: json['product_url_code'] as String?,
      orderBy: json['order_by'] as int?,
      isDeleted: json['is_deleted'] as int?,
      status: json['status'] as int?,
      cartQuantity: json['cart_quantity'] as int,
      isAddedWishlist: json['is_added_wishlist'] as bool,
      productImageUrl: json['product_image_url'] as String?,
      productData: json['product_data'] == null
          ? null
          : ProductData.fromJson(json['product_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductDatumFreezedImplToJson(
        _$ProductDatumFreezedImpl instance) =>
    <String, dynamic>{
      'vendor_product_id': instance.vendorProductId,
      'product_id': instance.productId,
      'vendor_id': instance.vendorId,
      'product_price': instance.productPrice,
      'product_discount': instance.productDiscount,
      'is_returnable': instance.isReturnable,
      'return_rule_id': instance.returnRuleId,
      'product_url_code': instance.productUrlCode,
      'order_by': instance.orderBy,
      'is_deleted': instance.isDeleted,
      'status': instance.status,
      'cart_quantity': instance.cartQuantity,
      'is_added_wishlist': instance.isAddedWishlist,
      'product_image_url': instance.productImageUrl,
      'product_data': instance.productData,
    };
