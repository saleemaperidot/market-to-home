import 'package:freezed_annotation/freezed_annotation.dart';

part 'datum.freezed.dart';
part 'datum.g.dart';

@freezed
class WishListData with _$WishListData {
  factory WishListData({
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'product_name') String? productName,
    @JsonKey(name: 'product_price') double? productPrice,
    @JsonKey(name: 'product_image') String? productImage,
    @JsonKey(name: 'product_status') int? productStatus,
  }) = _WishListData;

  factory WishListData.fromJson(Map<String, dynamic> json) =>
      _$WishListDataFromJson(json);
}
