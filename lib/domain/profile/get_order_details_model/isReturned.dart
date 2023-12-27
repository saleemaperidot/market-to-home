import 'package:freezed_annotation/freezed_annotation.dart';

part 'isReturned.freezed.dart';
part 'isReturned.g.dart';

@freezed
class IsReturned with _$IsReturned {
  factory IsReturned({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'order_product_id') int? orderProductId,
    @JsonKey(name: 'return_type_id') int? returnTypeId,
    @JsonKey(name: 'return_rule_id') int? returnRuleId,
    @JsonKey(name: 'amount') double? amount,
    @JsonKey(name: 'payment_by') String? paymentBy,
    @JsonKey(name: 'return_status') String? returnStatus,
    @JsonKey(name: 'collection_date_from') dynamic collectionDateFrom,
    @JsonKey(name: 'collection_date_to') dynamic collectionDateTo,
    @JsonKey(name: 'collected_date') dynamic collecteDate,
    @JsonKey(name: 'reason_id') int? reasonId,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'is_cancelled') int? isCancelled,
    @JsonKey(name: 'cancellation_note') String? cancellationNote,
    @JsonKey(name: 'is_cancelled_by_user') String? billingAddress,
    @JsonKey(name: 'return_completed') int? isCancelledByUser,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? uptatedAt,
  }) = _IsReturned;

  factory IsReturned.fromJson(Map<String, dynamic> json) =>
      _$IsReturnedFromJson(json);
}
