// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'substitute_product_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubstituteProductDataImpl _$$SubstituteProductDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SubstituteProductDataImpl(
      substituteProductId: json['substitute_product_id'] as int?,
      substituteProductName: json['substitute_product_name'] as String?,
      substituteProductBarcode: json['substitute_product_barcode'] as String?,
      substituteProductImage: json['substitute_product_image'] as String?,
      substituteProductPrice:
          (json['substitute_product_price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SubstituteProductDataImplToJson(
        _$SubstituteProductDataImpl instance) =>
    <String, dynamic>{
      'substitute_product_id': instance.substituteProductId,
      'substitute_product_name': instance.substituteProductName,
      'substitute_product_barcode': instance.substituteProductBarcode,
      'substitute_product_image': instance.substituteProductImage,
      'substitute_product_price': instance.substituteProductPrice,
    };
