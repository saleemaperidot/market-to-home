import 'package:json_annotation/json_annotation.dart';

import 'product_data.dart';

part 'productDatum.g.dart';

@JsonSerializable()
class ProductDatum {
  @JsonKey(name: 'vendor_product_id')
  int? vendorProductId;
  @JsonKey(name: 'product_id')
  int? productId;
  @JsonKey(name: 'vendor_id')
  int? vendorId;
  @JsonKey(name: 'product_price')
  double? productPrice;
  @JsonKey(name: 'product_discount')
  int? productDiscount;
  @JsonKey(name: 'is_returnable')
  int? isReturnable;
  @JsonKey(name: 'return_rule_id')
  dynamic returnRuleId;
  @JsonKey(name: 'product_url_code')
  String? productUrlCode;
  @JsonKey(name: 'order_by')
  int? orderBy;
  @JsonKey(name: 'is_deleted')
  int? isDeleted;
  int? status;
  @JsonKey(name: 'cart_quantity')
  int cartQuantity;
  @JsonKey(name: 'product_image_url')
  String? productImageUrl;
  @JsonKey(name: 'product_data')
  ProductData? productData;

  ProductDatum(
      {this.vendorProductId,
      this.productId,
      this.vendorId,
      this.productPrice,
      this.productDiscount,
      this.isReturnable,
      this.returnRuleId,
      this.productUrlCode,
      this.orderBy,
      this.isDeleted,
      this.status,
      this.productData,
      this.productImageUrl,
      required this.cartQuantity});

  factory ProductDatum.fromJson(Map<String, dynamic> json) =>
      _$ProductDatumFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDatumToJson(this);
}
