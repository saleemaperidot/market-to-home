// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_profile_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetProfileDataModelImpl _$$GetProfileDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetProfileDataModelImpl(
      status: json['status'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetProfileDataModelImplToJson(
        _$GetProfileDataModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
