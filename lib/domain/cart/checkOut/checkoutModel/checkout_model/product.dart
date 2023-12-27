import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'product_name') String? productName,
    @JsonKey(name: 'product_quantity') int? productQuantity,
    @JsonKey(name: 'product_price') double? productPrice,
    @JsonKey(name: 'sub_total') double? subTotal,
    @JsonKey(name: 'product_image') String? productImage,
    String? vendor,
    @JsonKey(name: 'vendor_status') String? vendorStatus,
    @JsonKey(name: 'vendor_available') bool? vendorAvailable,
    @JsonKey(name: 'vendor_available_message') String? vendorAvailableMessage,
    @JsonKey(name: 'product_status') int? productStatus,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
