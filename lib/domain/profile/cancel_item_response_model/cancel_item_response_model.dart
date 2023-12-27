import 'package:json_annotation/json_annotation.dart';

part 'cancel_item_response_model.g.dart';

@JsonSerializable()
class CancelItemResponseModel {
  bool? status;
  @JsonKey(name: 'order_sub_total')
  double? orderSubTotal;
  double? vat;
  @JsonKey(name: 'order_coupon_discount')
  int? orderCouponDiscount;
  @JsonKey(name: 'order_final_amount')
  double? orderFinalAmount;
  @JsonKey(name: 'cancelled_amount')
  double? cancelledAmount;
  String? message;

  CancelItemResponseModel({
    this.status,
    this.orderSubTotal,
    this.vat,
    this.orderCouponDiscount,
    this.orderFinalAmount,
    this.message,
  });

  factory CancelItemResponseModel.fromJson(Map<String, dynamic> json) {
    return _$CancelItemResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CancelItemResponseModelToJson(this);
}
