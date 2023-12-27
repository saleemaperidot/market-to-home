// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorProductDetailsDataImpl _$$VendorProductDetailsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$VendorProductDetailsDataImpl(
      productId: json['product_id'] as int?,
      productName: json['product_name'] as String?,
      productDescr: json['product_descr'] as String?,
      productBarcode: json['product_barcode'] as String?,
      productImage: json['product_image'] as String?,
      productPrice: (json['product_price'] as num?)?.toDouble(),
      productQuantityType: json['product_quantity_type'] as String?,
      productStatus: (json['product_status'] as num?)?.toDouble(),
      vendorName: json['vendor_name'] as String?,
      vendorSlug: json['vendor_slug'] as String?,
      isReturnable: (json['is_returnable'] as num?)?.toDouble(),
      isDeliverable: json['is_deliverable'] as bool?,
      cartQuantity: json['cart_quantity'] as int?,
      isAddedWishlist: json['is_added_wishlist'] as bool?,
      ratingData: json['rating_data'] == null
          ? null
          : RatingData.fromJson(json['rating_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VendorProductDetailsDataImplToJson(
        _$VendorProductDetailsDataImpl instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'product_name': instance.productName,
      'product_descr': instance.productDescr,
      'product_barcode': instance.productBarcode,
      'product_image': instance.productImage,
      'product_price': instance.productPrice,
      'product_quantity_type': instance.productQuantityType,
      'product_status': instance.productStatus,
      'vendor_name': instance.vendorName,
      'vendor_slug': instance.vendorSlug,
      'is_returnable': instance.isReturnable,
      'is_deliverable': instance.isDeliverable,
      'cart_quantity': instance.cartQuantity,
      'is_added_wishlist': instance.isAddedWishlist,
      'rating_data': instance.ratingData,
    };
