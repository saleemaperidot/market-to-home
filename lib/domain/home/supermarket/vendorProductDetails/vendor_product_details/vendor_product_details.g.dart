// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_product_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VendorProductDetailsImpl _$$VendorProductDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$VendorProductDetailsImpl(
      status: json['status'] as bool?,
      data: json['data'] == null
          ? null
          : VendorProductDetailsData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VendorProductDetailsImplToJson(
        _$VendorProductDetailsImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
