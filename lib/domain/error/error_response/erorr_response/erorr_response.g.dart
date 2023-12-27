// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'erorr_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErorrResponse _$ErorrResponseFromJson(Map<String, dynamic> json) =>
    ErorrResponse(
      status: json['status'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ErorrResponseToJson(ErorrResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
