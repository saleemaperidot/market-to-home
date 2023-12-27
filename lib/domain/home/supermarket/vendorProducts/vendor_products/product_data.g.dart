// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductData _$ProductDataFromJson(Map<String, dynamic> json) => ProductData(
      productId: json['product_id'] as String?,
      vendorUserId: json['vendor_user_id'] as int?,
      productSubcategory: json['product_subcategory'] as int?,
      productCategorySubcategory: json['product_category_subcategory'] as int?,
      assignedCategory: json['assigned_category'],
      productName: json['product_name'] as String?,
      productBarcode: json['product_barcode'] as String?,
      productUrlCode: json['product_url_code'] as String?,
      productDescr: json['product_descr'] as String?,
      productImage: json['product_image'] as String?,
      productQuantityType: json['product_quantity_type'] as String?,
      productPrice: (json['product_price'] as num?)?.toDouble(),
      productDiscount: json['product_discount'] as int?,
      productStatus: json['product_status'] as int?,
      isReturnable: json['is_returnable'] as int?,
      returnRuleId: json['return_rule_id'],
      orderBy: json['order_by'] as int?,
      prescriptionStatus: json['prescription_status'] as int?,
      currency: json['currency'] as int?,
      doubleWalletPoint: json['double_wallet_point'] as int?,
      isDeleted: json['is_deleted'] as int?,
      productOptions: json['product_options'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );

Map<String, dynamic> _$ProductDataToJson(ProductData instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'vendor_user_id': instance.vendorUserId,
      'product_subcategory': instance.productSubcategory,
      'product_category_subcategory': instance.productCategorySubcategory,
      'assigned_category': instance.assignedCategory,
      'product_name': instance.productName,
      'product_barcode': instance.productBarcode,
      'product_url_code': instance.productUrlCode,
      'product_descr': instance.productDescr,
      'product_image': instance.productImage,
      'product_quantity_type': instance.productQuantityType,
      'product_price': instance.productPrice,
      'product_discount': instance.productDiscount,
      'product_status': instance.productStatus,
      'is_returnable': instance.isReturnable,
      'return_rule_id': instance.returnRuleId,
      'order_by': instance.orderBy,
      'prescription_status': instance.prescriptionStatus,
      'currency': instance.currency,
      'double_wallet_point': instance.doubleWalletPoint,
      'is_deleted': instance.isDeleted,
      'product_options': instance.productOptions,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
