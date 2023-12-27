import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_data.dart';

part 'datum.freezed.dart';
part 'datum.g.dart';

@freezed
class ProductDatumFreezed with _$ProductDatumFreezed {
  factory ProductDatumFreezed({
    @JsonKey(name: 'vendor_product_id') int? vendorProductId,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'vendor_id') int? vendorId,
    @JsonKey(name: 'product_price') double? productPrice,
    @JsonKey(name: 'product_discount') int? productDiscount,
    @JsonKey(name: 'is_returnable') int? isReturnable,
    @JsonKey(name: 'return_rule_id') dynamic returnRuleId,
    @JsonKey(name: 'product_url_code') String? productUrlCode,
    @JsonKey(name: 'order_by') int? orderBy,
    @JsonKey(name: 'is_deleted') int? isDeleted,
    int? status,
    @JsonKey(name: 'cart_quantity') required int cartQuantity,
    @JsonKey(name: 'is_added_wishlist') required bool isAddedWishlist,
    @JsonKey(name: 'product_image_url') String? productImageUrl,
    @JsonKey(name: 'product_data') ProductData? productData,
  }) = _ProductDatumFreezed;

  factory ProductDatumFreezed.fromJson(Map<String, dynamic> json) =>
      _$ProductDatumFreezedFromJson(json);
}
