// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendorProducts _$VendorProductsFromJson(Map<String, dynamic> json) =>
    VendorProducts(
      status: json['status'] as bool?,
      products: json['products'] == null
          ? null
          : Products.fromJson(json['products'] as Map<String, dynamic>),
      breadcrumb: json['breadcrumb'] as String?,
      mobileBreadcrumb: json['mobile_breadcrumb'] as String?,
      childCategories: json['child_categories'] as List<dynamic>?,
    );

Map<String, dynamic> _$VendorProductsToJson(VendorProducts instance) =>
    <String, dynamic>{
      'status': instance.status,
      'products': instance.products,
      'breadcrumb': instance.breadcrumb,
      'mobile_breadcrumb': instance.mobileBreadcrumb,
      'child_categories': instance.childCategories,
    };
