// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_with_otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginWithOtpResponse _$LoginWithOtpResponseFromJson(
        Map<String, dynamic> json) =>
    LoginWithOtpResponse(
      status: json['status'] as bool,
      userId: json['user_id'] as int?,
      message: json['message'] as String,
    );

Map<String, dynamic> _$LoginWithOtpResponseToJson(
        LoginWithOtpResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'user_id': instance.userId,
      'message': instance.message,
    };
