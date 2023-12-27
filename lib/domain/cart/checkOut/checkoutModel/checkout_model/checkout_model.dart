import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'checkout_model.freezed.dart';
part 'checkout_model.g.dart';

@freezed
class CheckoutModel with _$CheckoutModel {
  factory CheckoutModel({
    String? message,
    bool? status,
    Data? data,
  }) = _CheckoutModel;

  factory CheckoutModel.fromJson(Map<String, dynamic> json) =>
      _$CheckoutModelFromJson(json);
}
