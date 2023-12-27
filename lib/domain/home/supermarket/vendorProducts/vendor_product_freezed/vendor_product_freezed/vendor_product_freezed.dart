import 'package:freezed_annotation/freezed_annotation.dart';

import 'products.dart';

part 'vendor_product_freezed.freezed.dart';
part 'vendor_product_freezed.g.dart';

@freezed
class VendorProductFreezed with _$VendorProductFreezed {
  factory VendorProductFreezed({
    bool? status,
    double? totalCartCount,
    String? totalCartAount,
    Products? products,
    String? breadcrumb,
    @JsonKey(name: 'mobile_breadcrumb') String? mobileBreadcrumb,
    @JsonKey(name: 'child_categories') List<dynamic>? childCategories,
  }) = _VendorProductFreezed;

  factory VendorProductFreezed.fromJson(Map<String, dynamic> json) =>
      _$VendorProductFreezedFromJson(json);
}
