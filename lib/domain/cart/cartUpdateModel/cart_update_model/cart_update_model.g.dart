// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartUpdateModel _$CartUpdateModelFromJson(Map<String, dynamic> json) =>
    CartUpdateModel(
      status: json['status'] as bool?,
      totalCartCount: json['totalCartCount'] as int?,
      updatedQuantity: json['updatedQuantity'] as int?,
      cartTotal: (json['cartTotal'] as num?)?.toDouble(),
      productId: json['productId'] as String?,
      message: json['message'] as String?,
      productTotal: (json['productTotal'] as num?)?.toDouble(),
      vat: (json['vat'] as num?)?.toDouble(),
      grandTotal: (json['grandTotal'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CartUpdateModelToJson(CartUpdateModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalCartCount': instance.totalCartCount,
      'updatedQuantity': instance.updatedQuantity,
      'cartTotal': instance.cartTotal,
      'productId': instance.productId,
      'message': instance.message,
      'productTotal': instance.productTotal,
      'vat': instance.vat,
      'grandTotal': instance.grandTotal,
    };
