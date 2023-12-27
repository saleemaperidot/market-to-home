import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class CartProduct with _$CartProduct {
  factory CartProduct({
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'product_name') String? productName,
    @JsonKey(name: 'product_quantity') int? productQuantity,
    @JsonKey(name: 'product_price') double? productPrice,
    @JsonKey(name: 'sub_total') double? subTotal,
    @JsonKey(name: 'product_image') String? productImage,
    String? vendor,
    @JsonKey(name: 'product_status') int? productStatus,
  }) = _CartProduct;

  factory CartProduct.fromJson(Map<String, dynamic> json) =>
      _$CartProductFromJson(json);
}
