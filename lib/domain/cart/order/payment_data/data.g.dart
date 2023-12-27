// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      accessCode: json['access_code'] as String?,
      encryptedData: json['encrypted_data'] as String?,
      redirectUrl: json['redirect_url'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'access_code': instance.accessCode,
      'encrypted_data': instance.encryptedData,
      'redirect_url': instance.redirectUrl,
    };
