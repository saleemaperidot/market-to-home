// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      profileData: json['profileData'] == null
          ? null
          : ProfileData.fromJson(json['profileData'] as Map<String, dynamic>),
      referralData: json['referralData'] == null
          ? null
          : ReferralData.fromJson(json['referralData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'profileData': instance.profileData,
      'referralData': instance.referralData,
    };
