// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransationListData _$TransationListDataFromJson(Map<String, dynamic> json) =>
    TransationListData(
      id: json['id'] as int?,
      userId: json['user_id'] as int?,
      orderId: json['order_id'] as int?,
      orderProductId: json['order_product_id'] as int?,
      type: json['type'] as String?,
      amount: json['amount'] as int?,
      description: json['description'] as String?,
      isReflected: json['is_reflected'] as int?,
      reflectOn: json['reflect_on'] as String?,
      isReverted: json['is_reverted'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$TransationListDataToJson(TransationListData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'order_id': instance.orderId,
      'order_product_id': instance.orderProductId,
      'type': instance.type,
      'amount': instance.amount,
      'description': instance.description,
      'is_reflected': instance.isReflected,
      'reflect_on': instance.reflectOn,
      'is_reverted': instance.isReverted,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
