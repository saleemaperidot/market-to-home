// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      shopSubCatId: json['shop_sub_cat_id'] as int,
      shopSubCatName: json['shop_sub_cat_name'] as String,
      shopTypeId: json['shop_type_id'] as int,
      shopSubCatUrlCode: json['shop_sub_cat_url_code'] as String,
      shopTypeCategoryImage: json['shop_type_category_image'] as String,
      shopTypeOrderBy: json['shop_type_order_by'] as int,
      subCategory: (json['children'] as List<dynamic>)
          .map((e) => SubCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'shop_sub_cat_id': instance.shopSubCatId,
      'shop_sub_cat_name': instance.shopSubCatName,
      'shop_type_id': instance.shopTypeId,
      'shop_sub_cat_url_code': instance.shopSubCatUrlCode,
      'shop_type_category_image': instance.shopTypeCategoryImage,
      'shop_type_order_by': instance.shopTypeOrderBy,
      'children': instance.subCategory,
    };
