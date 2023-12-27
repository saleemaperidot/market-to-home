import 'package:json_annotation/json_annotation.dart';

part 'product_data.g.dart';

@JsonSerializable()
class ProductData {
  @JsonKey(name: 'product_id')
  String? productId;
  @JsonKey(name: 'vendor_user_id')
  int? vendorUserId;
  @JsonKey(name: 'product_subcategory')
  int? productSubcategory;
  @JsonKey(name: 'product_category_subcategory')
  int? productCategorySubcategory;
  @JsonKey(name: 'assigned_category')
  dynamic assignedCategory;
  @JsonKey(name: 'product_name')
  String? productName;
  @JsonKey(name: 'product_barcode')
  String? productBarcode;
  @JsonKey(name: 'product_url_code')
  String? productUrlCode;
  @JsonKey(name: 'product_descr')
  String? productDescr;
  @JsonKey(name: 'product_image')
  String? productImage;
  @JsonKey(name: 'product_quantity_type')
  String? productQuantityType;
  @JsonKey(name: 'product_price')
  double? productPrice;
  @JsonKey(name: 'product_discount')
  int? productDiscount;
  @JsonKey(name: 'product_status')
  int? productStatus;
  @JsonKey(name: 'is_returnable')
  int? isReturnable;
  @JsonKey(name: 'return_rule_id')
  dynamic returnRuleId;
  @JsonKey(name: 'order_by')
  int? orderBy;
  @JsonKey(name: 'prescription_status')
  int? prescriptionStatus;
  int? currency;
  @JsonKey(name: 'double_wallet_point')
  int? doubleWalletPoint;
  @JsonKey(name: 'is_deleted')
  int? isDeleted;
  @JsonKey(name: 'product_options')
  dynamic productOptions;
  @JsonKey(name: 'created_at')
  dynamic createdAt;
  @JsonKey(name: 'updated_at')
  dynamic updatedAt;

  ProductData({
    this.productId,
    this.vendorUserId,
    this.productSubcategory,
    this.productCategorySubcategory,
    this.assignedCategory,
    this.productName,
    this.productBarcode,
    this.productUrlCode,
    this.productDescr,
    this.productImage,
    this.productQuantityType,
    this.productPrice,
    this.productDiscount,
    this.productStatus,
    this.isReturnable,
    this.returnRuleId,
    this.orderBy,
    this.prescriptionStatus,
    this.currency,
    this.doubleWalletPoint,
    this.isDeleted,
    this.productOptions,
    this.createdAt,
    this.updatedAt,
  });

  factory ProductData.fromJson(Map<String, dynamic> json) {
    return _$ProductDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductDataToJson(this);
}
