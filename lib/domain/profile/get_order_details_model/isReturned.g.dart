// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isReturned.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IsReturnedImpl _$$IsReturnedImplFromJson(Map<String, dynamic> json) =>
    _$IsReturnedImpl(
      id: json['id'] as int?,
      orderProductId: json['order_product_id'] as int?,
      returnTypeId: json['return_type_id'] as int?,
      returnRuleId: json['return_rule_id'] as int?,
      amount: (json['amount'] as num?)?.toDouble(),
      paymentBy: json['payment_by'] as String?,
      returnStatus: json['return_status'] as String?,
      collectionDateFrom: json['collection_date_from'],
      collectionDateTo: json['collection_date_to'],
      collecteDate: json['collected_date'],
      reasonId: json['reason_id'] as int?,
      description: json['description'] as String?,
      isCancelled: json['is_cancelled'] as int?,
      cancellationNote: json['cancellation_note'] as String?,
      billingAddress: json['is_cancelled_by_user'] as String?,
      isCancelledByUser: json['return_completed'] as int?,
      createdAt: json['created_at'] as String?,
      uptatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$IsReturnedImplToJson(_$IsReturnedImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_product_id': instance.orderProductId,
      'return_type_id': instance.returnTypeId,
      'return_rule_id': instance.returnRuleId,
      'amount': instance.amount,
      'payment_by': instance.paymentBy,
      'return_status': instance.returnStatus,
      'collection_date_from': instance.collectionDateFrom,
      'collection_date_to': instance.collectionDateTo,
      'collected_date': instance.collecteDate,
      'reason_id': instance.reasonId,
      'description': instance.description,
      'is_cancelled': instance.isCancelled,
      'cancellation_note': instance.cancellationNote,
      'is_cancelled_by_user': instance.billingAddress,
      'return_completed': instance.isCancelledByUser,
      'created_at': instance.createdAt,
      'updated_at': instance.uptatedAt,
    };
