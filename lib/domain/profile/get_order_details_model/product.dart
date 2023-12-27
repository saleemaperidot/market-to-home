import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:market_2_home/domain/profile/get_order_details_model/isReturned.dart';

import 'substitute_product_data.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  factory Product({
    @JsonKey(name: 'order_product_id') int? orderProductId,
    @JsonKey(name: 'product_id') int? productId,
    @JsonKey(name: 'product_name') String? productName,
    @JsonKey(name: 'product_barcode') String? productBarcode,
    @JsonKey(name: 'product_image') String? productImage,
    @JsonKey(name: 'product_price') double? productPrice,
    @JsonKey(name: 'product_quantity') int? productQuantity,
    @JsonKey(name: 'main_category') String? mainCategory,
    @JsonKey(name: 'sub_category') String? subCategory,
    @JsonKey(name: 'assigned_category') String? assignedCategory,
    String? vendor,
    @JsonKey(name: 'order_status') String? orderStatus,
    @JsonKey(name: 'insurance_status') dynamic insuranceStatus,
    @JsonKey(name: 'delivered_on') dynamic deliveredOn,
    @JsonKey(name: 'cancelled_date') dynamic cancelledDate,
    @JsonKey(name: 'substitute_excess_amount_handling')
    dynamic substituteExcessAmountHandling,
    @JsonKey(name: 'substitute_excess_amount') double? substituteExcessAmount,
    @JsonKey(name: 'insurance_price') dynamic insurancePrice,
    @JsonKey(name: 'substitute_product_data')
    SubstituteProductData? substituteProductData,
    @JsonKey(name: 'is_cancellable') bool? isCancellable,
    @JsonKey(name: 'returnable') bool? returnable,
    @JsonKey(name: 'is_returned') IsReturned? is_returned,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
