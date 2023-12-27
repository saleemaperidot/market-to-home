import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'get_orders_model.g.dart';

@JsonSerializable()
class GetOrdersModel {
  bool? status;
  List<GetOrderData>? data;

  GetOrdersModel({this.status, this.data});

  factory GetOrdersModel.fromJson(Map<String, dynamic> json) {
    return _$GetOrdersModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetOrdersModelToJson(this);
}
