// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOrdersModel _$GetOrdersModelFromJson(Map<String, dynamic> json) =>
    GetOrdersModel(
      status: json['status'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => GetOrderData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetOrdersModelToJson(GetOrdersModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
