import 'package:json_annotation/json_annotation.dart';

part 'login_with_otp_response.g.dart';

@JsonSerializable()
class LoginWithOtpResponse {
  bool status;
  @JsonKey(name: 'user_id')
  int userId;
  String message;

  LoginWithOtpResponse({
    required this.status,
    int? userId, // Change the type to nullable int
    required this.message,
  }) : this.userId =
            userId ?? 0; // Set the default value to 0 if userId is null

  factory LoginWithOtpResponse.fromJson(Map<String, dynamic> json) {
    return _$LoginWithOtpResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginWithOtpResponseToJson(this);
}
