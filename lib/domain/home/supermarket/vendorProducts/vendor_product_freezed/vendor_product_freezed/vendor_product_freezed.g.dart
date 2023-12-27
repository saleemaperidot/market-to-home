// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_product_freezed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorProductFreezedImpl _$$VendorProductFreezedImplFromJson(
        Map<String, dynamic> json) =>
    _$VendorProductFreezedImpl(
      status: json['status'] as bool?,
      totalCartCount: (json['totalCartCount'] as num?)?.toDouble(),
      totalCartAount: json['totalCartAount'] as String?,
      products: json['products'] == null
          ? null
          : Products.fromJson(json['products'] as Map<String, dynamic>),
      breadcrumb: json['breadcrumb'] as String?,
      mobileBreadcrumb: json['mobile_breadcrumb'] as String?,
      childCategories: json['child_categories'] as List<dynamic>?,
    );

Map<String, dynamic> _$$VendorProductFreezedImplToJson(
        _$VendorProductFreezedImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalCartCount': instance.totalCartCount,
      'totalCartAount': instance.totalCartAount,
      'products': instance.products,
      'breadcrumb': instance.breadcrumb,
      'mobile_breadcrumb': instance.mobileBreadcrumb,
      'child_categories': instance.childCategories,
    };
