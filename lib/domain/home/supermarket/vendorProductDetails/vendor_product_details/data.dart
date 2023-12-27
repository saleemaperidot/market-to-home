import 'package:freezed_annotation/freezed_annotation.dart';

import 'rating_data.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class VendorProductDetailsData with _$VendorProductDetailsData {
  factory VendorProductDetailsData({
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'product_name') String? productName,
    @JsonKey(name: 'product_descr') String? productDescr,
    @JsonKey(name: 'product_barcode') String? productBarcode,
    @JsonKey(name: 'product_image') String? productImage,
    @JsonKey(name: 'product_price') double? productPrice,
    @JsonKey(name: 'product_quantity_type') String? productQuantityType,
    @JsonKey(name: 'product_status') double? productStatus,
    @JsonKey(name: 'vendor_name') String? vendorName,
    @JsonKey(name: 'vendor_slug') String? vendorSlug,
    @JsonKey(name: 'is_returnable') double? isReturnable,
    @JsonKey(name: 'is_deliverable') bool? isDeliverable,
    @JsonKey(name: 'cart_quantity') int? cartQuantity,
    @JsonKey(name: 'is_added_wishlist') bool? isAddedWishlist,
    @JsonKey(name: 'rating_data') RatingData? ratingData,
  }) = _VendorProductDetailsData;

  factory VendorProductDetailsData.fromJson(Map<String, dynamic> json) =>
      _$VendorProductDetailsDataFromJson(json);
}
