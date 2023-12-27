// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      customerId: json['customer_id'] as int?,
      customerName: json['customer_name'] as String?,
      customerHouseName: json['customer_house_name'] as String?,
      customerStreetAddress: json['customer_street_address'],
      customerCountry: json['customer_country'] as String?,
      customerState: json['customer_state'],
      customerPin: json['customer_pin'],
      customerNearestLocation: json['customer_nearest_location'],
      customerBuilding: json['customer_building'] as String?,
      customerCountryCode: json['customer_country_code'],
      customerPhone: json['customer_phone'] as String?,
      customerEmail: json['customer_email'] as String?,
      customerPassword: json['customer_password'] as String?,
      customerLatitude: json['customer_latitude'],
      customerLongitude: json['customer_longitude'],
      emailVerified: json['email_verified'] as int?,
      emailKey: json['email_key'] as String?,
      otp: json['otp'],
      otpCreatedAt: json['otp_created_at'],
      otpVerified: json['otp_verified'] as int?,
      regSmsSent: json['reg_sms_sent'] as int?,
      customerStatus: json['customer_status'] as int?,
      customerIp: json['customer_ip'] as String?,
      referralCode: json['referral_code'] as String?,
      referredBy: json['referred_by'],
      createdAt: json['created_at'] as String?,
      resetKey: json['reset_key'],
      uuid: json['uuid'],
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'customer_id': instance.customerId,
      'customer_name': instance.customerName,
      'customer_house_name': instance.customerHouseName,
      'customer_street_address': instance.customerStreetAddress,
      'customer_country': instance.customerCountry,
      'customer_state': instance.customerState,
      'customer_pin': instance.customerPin,
      'customer_nearest_location': instance.customerNearestLocation,
      'customer_building': instance.customerBuilding,
      'customer_country_code': instance.customerCountryCode,
      'customer_phone': instance.customerPhone,
      'customer_email': instance.customerEmail,
      'customer_password': instance.customerPassword,
      'customer_latitude': instance.customerLatitude,
      'customer_longitude': instance.customerLongitude,
      'email_verified': instance.emailVerified,
      'email_key': instance.emailKey,
      'otp': instance.otp,
      'otp_created_at': instance.otpCreatedAt,
      'otp_verified': instance.otpVerified,
      'reg_sms_sent': instance.regSmsSent,
      'customer_status': instance.customerStatus,
      'customer_ip': instance.customerIp,
      'referral_code': instance.referralCode,
      'referred_by': instance.referredBy,
      'created_at': instance.createdAt,
      'reset_key': instance.resetKey,
      'uuid': instance.uuid,
    };
