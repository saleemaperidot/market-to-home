import 'package:json_annotation/json_annotation.dart';

part 'cart_update_model.g.dart';

@JsonSerializable()
class CartUpdateModel {
  bool? status;
  int? totalCartCount;
  int? updatedQuantity;
  double? cartTotal;
  String? productId;
  String? message;
  double? productTotal;
  double? vat;
  double? grandTotal;

  CartUpdateModel(
      {this.status,
      this.totalCartCount,
      this.updatedQuantity,
      this.cartTotal,
      this.productId,
      this.message,
      this.productTotal,
      this.vat,
      this.grandTotal});

  factory CartUpdateModel.fromJson(Map<String, dynamic> json) {
    return _$CartUpdateModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CartUpdateModelToJson(this);
}
