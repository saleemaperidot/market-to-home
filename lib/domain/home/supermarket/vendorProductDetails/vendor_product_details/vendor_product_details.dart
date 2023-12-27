import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'vendor_product_details.freezed.dart';
part 'vendor_product_details.g.dart';

@freezed
class VendorProductDetails with _$VendorProductDetails {
  factory VendorProductDetails({
    bool? status,
    VendorProductDetailsData? data,
  }) = _VendorProductDetails;

  factory VendorProductDetails.fromJson(Map<String, dynamic> json) =>
      _$VendorProductDetailsFromJson(json);
}
