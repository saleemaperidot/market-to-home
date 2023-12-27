// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_order_online_initiate_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceOrderOnlineInitiateModel _$PlaceOrderOnlineInitiateModelFromJson(
        Map<String, dynamic> json) =>
    PlaceOrderOnlineInitiateModel(
      status: json['status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : OrderOnlineInitiatData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlaceOrderOnlineInitiateModelToJson(
        PlaceOrderOnlineInitiateModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
