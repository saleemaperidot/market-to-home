import 'package:freezed_annotation/freezed_annotation.dart';

import 'return_option.dart';
import 'return_reason.dart';

part 'order_return_option_model.freezed.dart';
part 'order_return_option_model.g.dart';

@freezed
class OrderReturnOptionModel with _$OrderReturnOptionModel {
  factory OrderReturnOptionModel({
    bool? status,
    @JsonKey(name: 'return_options') List<ReturnOption>? returnOptions,
    @JsonKey(name: 'return_reasons') List<ReturnReason>? returnReasons,
  }) = _OrderReturnOptionModel;

  factory OrderReturnOptionModel.fromJson(Map<String, dynamic> json) =>
      _$OrderReturnOptionModelFromJson(json);
}
