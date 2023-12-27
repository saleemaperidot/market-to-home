import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class GetOrderData {
  @JsonKey(name: 'order_id')
  int? orderId;
  @JsonKey(name: 'invoice_id')
  String? invoiceId;
  @JsonKey(name: 'secret_key')
  String? secretKey;
  double? vat;
  @JsonKey(name: 'order_final_amount')
  double? orderFinalAmount;
  @JsonKey(name: 'order_final_amount_formatted')
  String? orderFinalAmountFormatted;
  @JsonKey(name: 'ordered_on')
  String? orderedOn;

  GetOrderData({
    this.orderId,
    this.invoiceId,
    this.secretKey,
    this.vat,
    this.orderFinalAmount,
    this.orderFinalAmountFormatted,
    this.orderedOn,
  });

  factory GetOrderData.fromJson(Map<String, dynamic> json) =>
      _$GetOrderDataFromJson(json);

  Map<String, dynamic> toJson() => _$GetOrderDataToJson(this);
}
