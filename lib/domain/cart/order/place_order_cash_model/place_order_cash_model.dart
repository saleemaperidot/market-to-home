import 'package:json_annotation/json_annotation.dart';

import 'order_data.dart';

part 'place_order_cash_model.g.dart';

@JsonSerializable()
class PlaceOrderCashModel {
  bool? status;
  @JsonKey(name: 'payment_status')
  String? paymentStatus;
  String? message;
  @JsonKey(name: 'order_data')
  OrderData? orderData;

  PlaceOrderCashModel({this.status, this.message, this.orderData});

  factory PlaceOrderCashModel.fromJson(Map<String, dynamic> json) {
    return _$PlaceOrderCashModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PlaceOrderCashModelToJson(this);
}
