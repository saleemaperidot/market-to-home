import 'package:json_annotation/json_annotation.dart';

part 'subCategory.g.dart';

@JsonSerializable()
class SubCategory {
  int? id;
  @JsonKey(name: 'category_subcategory_name')
  String categorySubcategoryName;
  @JsonKey(name: 'subcategory_slug')
  String? subcategorySlug;
  @JsonKey(name: 'subcategory_id')
  String? subcategoryId;
  @JsonKey(name: 'subcategory_image')
  String subcategoryImage;
  @JsonKey(name: 'sort_by')
  int? sortBy;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  List<dynamic>? children;

  SubCategory({
    this.id,
    required this.categorySubcategoryName,
    this.subcategorySlug,
    this.subcategoryId,
    required this.subcategoryImage,
    this.sortBy,
    this.createdAt,
    this.updatedAt,
    this.children,
  });

  factory SubCategory.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$SubCategoryToJson(this);
}
