import 'package:freezed_annotation/freezed_annotation.dart';

part 'return_reason.freezed.dart';
part 'return_reason.g.dart';

@freezed
class ReturnReason with _$ReturnReason {
  factory ReturnReason({
    int? id,
    String? reason,
  }) = _ReturnReason;

  factory ReturnReason.fromJson(Map<String, dynamic> json) =>
      _$ReturnReasonFromJson(json);
}
