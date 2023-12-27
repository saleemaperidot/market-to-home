import 'package:freezed_annotation/freezed_annotation.dart';

import 'product.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class CartData with _$CartData {
  factory CartData({
    @Default([]) List<CartProduct> products,
    @JsonKey(name: 'products_count') int? productsCount,
    @JsonKey(name: 'cart_sub_total') double? cartSubTotal,
    @JsonKey(name: 'cart_sub_total_formatted') String? cartSubTotalFormatted,
    @JsonKey(name: 'cart_total') double? cartTotal,
    @JsonKey(name: 'cart_total_formatted') String? cartTotalFormatted,
    double? vat,
    @JsonKey(name: 'vat_formatted') String? vatFormatted,
  }) = _CartData;

  factory CartData.fromJson(Map<String, dynamic> json) =>
      _$CartDataFromJson(json);
}
