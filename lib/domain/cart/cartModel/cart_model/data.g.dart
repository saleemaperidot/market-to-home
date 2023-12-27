// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartDataImpl _$$CartDataImplFromJson(Map<String, dynamic> json) =>
    _$CartDataImpl(
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => CartProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      productsCount: json['products_count'] as int?,
      cartSubTotal: (json['cart_sub_total'] as num?)?.toDouble(),
      cartSubTotalFormatted: json['cart_sub_total_formatted'] as String?,
      cartTotal: (json['cart_total'] as num?)?.toDouble(),
      cartTotalFormatted: json['cart_total_formatted'] as String?,
      vat: (json['vat'] as num?)?.toDouble(),
      vatFormatted: json['vat_formatted'] as String?,
    );

Map<String, dynamic> _$$CartDataImplToJson(_$CartDataImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
      'products_count': instance.productsCount,
      'cart_sub_total': instance.cartSubTotal,
      'cart_sub_total_formatted': instance.cartSubTotalFormatted,
      'cart_total': instance.cartTotal,
      'cart_total_formatted': instance.cartTotalFormatted,
      'vat': instance.vat,
      'vat_formatted': instance.vatFormatted,
    };
