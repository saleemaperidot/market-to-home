import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';
import 'filter.dart';

part 'vendor_model.g.dart';

@JsonSerializable()
class VendorModel {
  bool? status;

  List<Filter>? filter;
  List<Datum>? data;

  VendorModel({this.status, this.filter, this.data});

  factory VendorModel.fromJson(Map<String, dynamic> json) {
    return _$VendorModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VendorModelToJson(this);
}
