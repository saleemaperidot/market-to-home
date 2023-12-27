import 'package:json_annotation/json_annotation.dart';

import 'order_data.dart';

part 'payment_status_response_model.g.dart';

@JsonSerializable()
class PaymentStatusResponseModel {
  bool? status;
  @JsonKey(name: 'payment_status')
  String? paymentStatus;
  @JsonKey(name: 'order_data')
  OrderData? orderData;

  PaymentStatusResponseModel({
    this.status,
    this.paymentStatus,
    this.orderData,
  });

  factory PaymentStatusResponseModel.fromJson(Map<String, dynamic> json) {
    return _$PaymentStatusResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaymentStatusResponseModelToJson(this);
}
