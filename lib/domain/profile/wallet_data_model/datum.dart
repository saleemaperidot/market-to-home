import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class TransationListData {
  int? id;
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'order_id')
  int? orderId;
  @JsonKey(name: 'order_product_id')
  int? orderProductId;
  String? type;
  int? amount;
  String? description;
  @JsonKey(name: 'is_reflected')
  int? isReflected;
  @JsonKey(name: 'reflect_on')
  String? reflectOn;
  @JsonKey(name: 'is_reverted')
  int? isReverted;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  TransationListData({
    this.id,
    this.userId,
    this.orderId,
    this.orderProductId,
    this.type,
    this.amount,
    this.description,
    this.isReflected,
    this.reflectOn,
    this.isReverted,
    this.createdAt,
    this.updatedAt,
  });

  factory TransationListData.fromJson(Map<String, dynamic> json) =>
      _$TransationListDataFromJson(json);

  Map<String, dynamic> toJson() => _$TransationListDataToJson(this);
}
