// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendorCategory _$VendorCategoryFromJson(Map<String, dynamic> json) =>
    VendorCategory(
      status: json['status'] as bool,
      category: (json['data'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$VendorCategoryToJson(VendorCategory instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.category,
    };
