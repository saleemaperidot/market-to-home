// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductSearchResult _$ProductSearchResultFromJson(Map<String, dynamic> json) =>
    ProductSearchResult(
      status: json['status'] as bool?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductSearchResultToJson(
        ProductSearchResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'products': instance.products,
    };
