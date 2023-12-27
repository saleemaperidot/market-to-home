import 'package:freezed_annotation/freezed_annotation.dart';

part 'substitute_product_data.freezed.dart';
part 'substitute_product_data.g.dart';

// // import 'data.dart';

// part 'substitute_product_data.dart.freezed.dart';
// part 'substitute_product_data.dart.g.dart';

@freezed
class SubstituteProductData with _$SubstituteProductData {
  factory SubstituteProductData({
    @JsonKey(name: 'substitute_product_id') int? substituteProductId,
    @JsonKey(name: 'substitute_product_name') String? substituteProductName,
    @JsonKey(name: 'substitute_product_barcode')
    String? substituteProductBarcode,
    @JsonKey(name: 'substitute_product_image') String? substituteProductImage,
    @JsonKey(name: 'substitute_product_price') double? substituteProductPrice,
  }) = _SubstituteProductData;

  factory SubstituteProductData.fromJson(Map<String, dynamic> json) =>
      _$SubstituteProductDataFromJson(json);

  // Map<String, dynamic> toJson() => _$SubstituteProductDataToJson(this);
}
