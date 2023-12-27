// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegistrationResponse _$RegistrationResponseFromJson(
        Map<String, dynamic> json) =>
    RegistrationResponse(
      status: json['status'] as bool?,
      tempUserId: json['temp_user_id'] as int?,
      phoneNumber: json['phone_number'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$RegistrationResponseToJson(
        RegistrationResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'temp_user_id': instance.tempUserId,
      'phone_number': instance.phoneNumber,
      'message': instance.message,
    };
