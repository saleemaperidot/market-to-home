// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subCategory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubCategory _$SubCategoryFromJson(Map<String, dynamic> json) => SubCategory(
      id: json['id'] as int?,
      categorySubcategoryName: json['category_subcategory_name'] as String,
      subcategorySlug: json['subcategory_slug'] as String?,
      subcategoryId: json['subcategory_id'] as String?,
      subcategoryImage: json['subcategory_image'] as String,
      sortBy: json['sort_by'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      children: json['children'] as List<dynamic>?,
    );

Map<String, dynamic> _$SubCategoryToJson(SubCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_subcategory_name': instance.categorySubcategoryName,
      'subcategory_slug': instance.subcategorySlug,
      'subcategory_id': instance.subcategoryId,
      'subcategory_image': instance.subcategoryImage,
      'sort_by': instance.sortBy,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'children': instance.children,
    };
