import 'package:json_annotation/json_annotation.dart';

part 'registration_response.g.dart';

@JsonSerializable()
class RegistrationResponse {
  bool? status;
  @JsonKey(name: 'temp_user_id')
  int? tempUserId;
  @JsonKey(name: 'phone_number')
  String? phoneNumber;
  String? message;

  RegistrationResponse({
    this.status,
    this.tempUserId,
    this.phoneNumber,
    this.message,
  });

  factory RegistrationResponse.fromJson(Map<String, dynamic> json) {
    return _$RegistrationResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RegistrationResponseToJson(this);
}
