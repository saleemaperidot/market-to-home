import 'package:dartz/dartz.dart';
import 'package:market_2_home/domain/common/common_response/common_response.dart';
import 'package:market_2_home/domain/home/supermarket/vendorProductDetails/vendor_product_details/vendor_product_details.dart';
import 'package:market_2_home/domain/home/supermarket/vendorProducts/product_search_result/product_search_result.dart';
import 'package:market_2_home/domain/home/supermarket/vendorProducts/vendor_product_freezed/vendor_product_freezed/vendor_product_freezed.dart';

import '../../../main_failures/main_failures.dart';

abstract class ProductRepo {
  Future<Either<MainFailure, VendorProductFreezed>> getProducts(
    String page,
    String vendorSlug,
    String categorySlug,
    String subCategorySlug, {
    String? userId,
    String? sortBy,
    String? minPrice,
    String? maxPrice,
  });

  Future<Either<MainFailure, VendorProductDetails>> getProductsDetails(
    String productId,
    String lat,
    String long, {
    String? userId,
    String? page,
  });

  Future<Either<MainFailure, CommonResponse>> addToWishList(
    String productId, {
    String? userId,
  });

  Future<Either<MainFailure, CommonResponse>> removeFromWishList(
    String productId, {
    String? userId,
  });

  Future<Either<MainFailure, ProductSearchResult>> searchResult(
      String keyword, String lat, String long);
}
