import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'get_order_details_model.freezed.dart';
part 'get_order_details_model.g.dart';

@freezed
class GetOrderDetailsModel with _$GetOrderDetailsModel {
  factory GetOrderDetailsModel({
    bool? status,
    Data? data,
  }) = _GetOrderDetailsModel;

  factory GetOrderDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$GetOrderDetailsModelFromJson(json);
}
