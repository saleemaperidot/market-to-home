// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderOnlineInitiatData _$OrderOnlineInitiatDataFromJson(
        Map<String, dynamic> json) =>
    OrderOnlineInitiatData(
      accessCode: json['access_code'] as String?,
      encryptedData: json['encrypted_data'] as String?,
      redirectUrl: json['redirect_url'] as String?,
    )..orderId = json['order_id'] as int?;

Map<String, dynamic> _$OrderOnlineInitiatDataToJson(
        OrderOnlineInitiatData instance) =>
    <String, dynamic>{
      'access_code': instance.accessCode,
      'encrypted_data': instance.encryptedData,
      'order_id': instance.orderId,
      'redirect_url': instance.redirectUrl,
    };
