import 'package:json_annotation/json_annotation.dart';

part 'apply_coupon_model.g.dart';

@JsonSerializable()
class ApplyCouponModel {
  bool? status;
  String? message;
  String? coupon;
  @JsonKey(name: 'sub_total')
  double? subTotal;
  double? vat;
  double? discount;
  @JsonKey(name: 'grand_total')
  double? grandTotal;
  @JsonKey(name: 'wallet_point_earns')
  int? walletPointEarns;

  ApplyCouponModel({
    this.status,
    this.message,
    this.coupon,
    this.subTotal,
    this.vat,
    this.discount,
    this.grandTotal,
    this.walletPointEarns,
  });

  factory ApplyCouponModel.fromJson(Map<String, dynamic> json) {
    return _$ApplyCouponModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApplyCouponModelToJson(this);
}
