import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'payment_data.g.dart';

@JsonSerializable()
class PaymentData {
  bool? status;
  String? message;
  Data? data;

  PaymentData({this.status, this.message, this.data});

  factory PaymentData.fromJson(Map<String, dynamic> json) {
    return _$PaymentDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaymentDataToJson(this);
}
