import 'package:json_annotation/json_annotation.dart';

import 'message.dart';

part 'remove_applied_coupon.g.dart';

@JsonSerializable()
class RemoveAppliedCoupon {
  bool? status;
  Message? message;

  RemoveAppliedCoupon({this.status, this.message});

  factory RemoveAppliedCoupon.fromJson(Map<String, dynamic> json) {
    return _$RemoveAppliedCouponFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RemoveAppliedCouponToJson(this);
}
