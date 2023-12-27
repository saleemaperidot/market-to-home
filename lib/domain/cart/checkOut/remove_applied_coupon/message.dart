import 'package:json_annotation/json_annotation.dart';

part 'message.g.dart';

@JsonSerializable()
class Message {
  int? error;
  String? message;
  @JsonKey(name: 'sub_total')
  double? subTotal;
  double? vat;
  @JsonKey(name: 'grand_total')
  double? grandTotal;
  @JsonKey(name: 'cart_order_total')
  String? cartOrderTotal;
  @JsonKey(name: 'wallet_point_earns')
  int? walletPointEarns;

  Message({
    this.error,
    this.message,
    this.subTotal,
    this.vat,
    this.grandTotal,
    this.cartOrderTotal,
    this.walletPointEarns,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return _$MessageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
