import 'package:freezed_annotation/freezed_annotation.dart';

import 'address.dart';
import 'product.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    @JsonKey(name: 'order_id') int? orderId,
    @JsonKey(name: 'invoice_id') String? invoiceId,
    @JsonKey(name: 'secret_key') String? secretKey,
    @JsonKey(name: 'order_sub_total') double? orderSubTotal,
     @JsonKey(name: 'cancelled_amount') double? cancelledAmount,
    double? vat,
    @JsonKey(name: 'order_coupon_discount') double? orderCouponDiscount,
    @JsonKey(name: 'order_final_amount') double? orderFinalAmount,
    @JsonKey(name: 'payment_method') String? paymentMethod,
    @JsonKey(name: 'payment_status') String? paymentStatus,
    Address? address,
    @JsonKey(name: 'ordered_on') String? orderedOn,
    @JsonKey(name: 'is_cancellable') bool? isCancellable,
    @JsonKey(name: 'already_cancelled') bool? alreadyCancelled,
    List<Product>? products,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
