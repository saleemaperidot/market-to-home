import 'package:json_annotation/json_annotation.dart';

part 'erorr_response.g.dart';

@JsonSerializable()
class ErorrResponse {
  bool? status;
  String? message;

  ErorrResponse({this.status, this.message});

  factory ErorrResponse.fromJson(Map<String, dynamic> json) {
    return _$ErorrResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ErorrResponseToJson(this);
}
