import 'package:json_annotation/json_annotation.dart';

part 'errors.g.dart';

@JsonSerializable()
class Errors {
  @JsonKey(name: 'customer_password')
  List<String>? customerPassword;

  Errors({this.customerPassword});

  factory Errors.fromJson(Map<String, dynamic> json) {
    return _$ErrorsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ErrorsToJson(this);
}
