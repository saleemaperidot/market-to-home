import 'package:json_annotation/json_annotation.dart';
import 'package:market_2_home/domain/home/supermarket/vendorCategory/vendor_category/subCategory.dart';

part 'category.g.dart';

@JsonSerializable()
class Category {
  @JsonKey(name: 'shop_sub_cat_id')
  int shopSubCatId;
  @JsonKey(name: 'shop_sub_cat_name')
  String shopSubCatName;
  @JsonKey(name: 'shop_type_id')
  int shopTypeId;
  @JsonKey(name: 'shop_sub_cat_url_code')
  String shopSubCatUrlCode;
  @JsonKey(name: 'shop_type_category_image')
  String shopTypeCategoryImage;
  @JsonKey(name: 'shop_type_order_by')
  int shopTypeOrderBy;
  @JsonKey(name: 'children')
  List<SubCategory> subCategory;

  Category({
    required this.shopSubCatId,
    required this.shopSubCatName,
    required this.shopTypeId,
    required this.shopSubCatUrlCode,
    required this.shopTypeCategoryImage,
    required this.shopTypeOrderBy,
    required this.subCategory,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
