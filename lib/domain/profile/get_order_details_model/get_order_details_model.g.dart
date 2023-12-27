// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetOrderDetailsModelImpl _$$GetOrderDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetOrderDetailsModelImpl(
      status: json['status'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetOrderDetailsModelImplToJson(
        _$GetOrderDetailsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
