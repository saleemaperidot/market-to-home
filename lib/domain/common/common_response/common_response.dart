import 'package:json_annotation/json_annotation.dart';

part 'common_response.g.dart';

@JsonSerializable()
class CommonResponse {
  bool? status;
  String? message;
  String? address;

  CommonResponse({this.status, this.message, this.address});

  factory CommonResponse.fromJson(Map<String, dynamic> json) {
    return _$CommonResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CommonResponseToJson(this);
}
