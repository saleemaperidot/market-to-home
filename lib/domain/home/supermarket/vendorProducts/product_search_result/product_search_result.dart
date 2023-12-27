import 'package:json_annotation/json_annotation.dart';

import 'product.dart';

part 'product_search_result.g.dart';

@JsonSerializable()
class ProductSearchResult {
  bool? status;
  List<Product>? products;

  ProductSearchResult({this.status, this.products});

  factory ProductSearchResult.fromJson(Map<String, dynamic> json) {
    return _$ProductSearchResultFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductSearchResultToJson(this);
}
