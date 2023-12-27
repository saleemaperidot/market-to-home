// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_return_option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderReturnOptionModelImpl _$$OrderReturnOptionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderReturnOptionModelImpl(
      status: json['status'] as bool?,
      returnOptions: (json['return_options'] as List<dynamic>?)
          ?.map((e) => ReturnOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      returnReasons: (json['return_reasons'] as List<dynamic>?)
          ?.map((e) => ReturnReason.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderReturnOptionModelImplToJson(
        _$OrderReturnOptionModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'return_options': instance.returnOptions,
      'return_reasons': instance.returnReasons,
    };
