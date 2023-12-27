// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'referral_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReferralDataImpl _$$ReferralDataImplFromJson(Map<String, dynamic> json) =>
    _$ReferralDataImpl(
      referralCode: json['referralCode'] as String?,
      referredBy: json['referredBy'],
      totalReferralCount: json['totalReferralCount'] as int?,
      referralReward: json['referralReward'] as String?,
    );

Map<String, dynamic> _$$ReferralDataImplToJson(_$ReferralDataImpl instance) =>
    <String, dynamic>{
      'referralCode': instance.referralCode,
      'referredBy': instance.referredBy,
      'totalReferralCount': instance.totalReferralCount,
      'referralReward': instance.referralReward,
    };
