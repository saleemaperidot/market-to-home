import 'package:json_annotation/json_annotation.dart';

import 'products.dart';

part 'vendor_products.g.dart';

@JsonSerializable()
class VendorProducts {
  bool? status;
  Products? products;
  String? breadcrumb;
  @JsonKey(name: 'mobile_breadcrumb')
  String? mobileBreadcrumb;
  @JsonKey(name: 'child_categories')
  List<dynamic>? childCategories;

  VendorProducts({
    this.status,
    this.products,
    this.breadcrumb,
    this.mobileBreadcrumb,
    this.childCategories,
  });

  factory VendorProducts.fromJson(Map<String, dynamic> json) {
    return _$VendorProductsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VendorProductsToJson(this);
}
