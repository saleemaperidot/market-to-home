// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileDataImpl _$$ProfileDataImplFromJson(Map<String, dynamic> json) =>
    _$ProfileDataImpl(
      customerName: json['customerName'] as String?,
      customerMobile: json['customerMobile'] as String?,
      customerEmail: json['customerEmail'] as String?,
      customerLatitude: json['customerLatitude'] as String?,
      customerLongitude: json['customerLongitude'] as String?,
      referralCode: json['referralCode'] as String?,
      referredBy: json['referredBy'],
      memberSince: json['member_since'] as String?,
    );

Map<String, dynamic> _$$ProfileDataImplToJson(_$ProfileDataImpl instance) =>
    <String, dynamic>{
      'customerName': instance.customerName,
      'customerMobile': instance.customerMobile,
      'customerEmail': instance.customerEmail,
      'customerLatitude': instance.customerLatitude,
      'customerLongitude': instance.customerLongitude,
      'referralCode': instance.referralCode,
      'referredBy': instance.referredBy,
      'member_since': instance.memberSince,
    };
