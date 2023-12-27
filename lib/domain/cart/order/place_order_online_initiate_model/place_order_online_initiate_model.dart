import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'place_order_online_initiate_model.g.dart';

@JsonSerializable()
class PlaceOrderOnlineInitiateModel {
  bool? status;
  String? message;
  OrderOnlineInitiatData? data;

  PlaceOrderOnlineInitiateModel({this.status, this.message, this.data});

  factory PlaceOrderOnlineInitiateModel.fromJson(Map<String, dynamic> json) {
    return _$PlaceOrderOnlineInitiateModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PlaceOrderOnlineInitiateModelToJson(this);
}
