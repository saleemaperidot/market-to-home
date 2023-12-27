import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  @JsonKey(name: 'product_id')
  int? productId;
  @JsonKey(name: 'product_name')
  String? productName;
  @JsonKey(name: 'product_url_code')
  String? productUrlCode;
  @JsonKey(name: 'product_image')
  String? productImage;
  @JsonKey(name: 'vendor_user_id')
  int? vendorUserId;
  @JsonKey(name: 'vendor_id')
  int? vendorId;
  @JsonKey(name: 'vendor_shop_name')
  String? vendorShopName;
  @JsonKey(name: 'vendor_url_code')
  String? vendorUrlCode;
  @JsonKey(name: 'shop_sub_cat_name')
  String? shopSubCatName;

  Product({
    this.productId,
    this.productName,
    this.productUrlCode,
    this.productImage,
    this.vendorUserId,
    this.vendorId,
    this.vendorShopName,
    this.vendorUrlCode,
    this.shopSubCatName,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return _$ProductFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
