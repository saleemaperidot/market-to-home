import 'package:json_annotation/json_annotation.dart';
import 'package:market_2_home/domain/home/supermarket/vendorCategory/vendor_category/category.dart';

// import '../../../dash_board_model/category.dart';

part 'vendor_category.g.dart';

@JsonSerializable()
class VendorCategory {
  bool status;
  @JsonKey(name: 'data')
  List<Category> category;

  VendorCategory({required this.status, required this.category});

  factory VendorCategory.fromJson(Map<String, dynamic> json) {
    return _$VendorCategoryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VendorCategoryToJson(this);
}
