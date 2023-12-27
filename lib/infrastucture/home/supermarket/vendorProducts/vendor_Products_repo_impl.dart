import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:market_2_home/domain/common/common_response/common_response.dart';
import 'package:market_2_home/domain/home/supermarket/vendorProductDetails/vendor_product_details/vendor_product_details.dart';
import 'package:market_2_home/domain/home/supermarket/vendorProducts/product_search_result/product_search_result.dart';

import 'package:market_2_home/domain/home/supermarket/vendorProducts/vendor_products_repo.dart';
import 'package:market_2_home/domain/main_failures/main_failures.dart';

import '../../../../domain/core/constant.dart';
import '../../../../domain/core/shared_pref/shared_pref.dart';
import '../../../../domain/home/supermarket/vendorProducts/vendor_product_freezed/vendor_product_freezed/vendor_product_freezed.dart';

@LazySingleton(as: ProductRepo)
class HomeRepoImpl implements ProductRepo {
  @override
  Future<Either<MainFailure, VendorProductFreezed>> getProducts(
    String page,
    String vendorSlug,
    String categorySlug,
    String subCategorySlug, {
    String? userId,
    String? sortBy,
    String? minPrice,
    String? maxPrice,
  }) async {
    log(vendorSlug + categorySlug + subCategorySlug);
    print(userId);

    final formData = FormData.fromMap({
      'user_id': userId ?? '',
      'vendor': vendorSlug,
      'category': categorySlug,
      'sub_category': subCategorySlug,
      'page': page,
      // 'min_price': '1',
      // 'max_price': '15',
      // 'sort_by': 'high-price',
    });

    final token = await SharedPreferencesManager.getString(
        SharedPreferencesManager.authToken);

    try {
      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.getVendorProduct,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': token},
        ),
      );

      if (response.statusCode == 200) {
        final result = VendorProductFreezed.fromJson(response.data);
        print(result);
        log(result.toString());
        return Right(result);
      } else {
        print(response);
        return Left(MainFailure.serverFailure(response.data));
      }
    } catch (e) {
      print(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, VendorProductDetails>> getProductsDetails(
    String productId,
    String lat,
    String long, {
    String? userId,
    String? page,
  }) async {
    final formData = FormData.fromMap({
      'latitude': lat,
      'longitude': long,
      'user_id': userId,
      'product_id': productId,
    });

    final token = await SharedPreferencesManager.getString(
        SharedPreferencesManager.authToken);
    try {
      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.getProductDetails,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': token},
        ),
      );
      // log(response.statusMessage.toString());

      if (response.statusCode == 200) {
        final result = VendorProductDetails.fromJson(response.data);
        log(result.toString());
        return Right(result);
      } else {
        print(response);
        return Left(MainFailure.serverFailure(response.data));
      }
    } catch (e) {
      print(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, CommonResponse>> addToWishList(String? productId,
      {String? userId}) async {
    final formData = FormData.fromMap({
      'user_id': userId ?? '',
      'product_id': productId,
    });

    final token = await SharedPreferencesManager.getString(
        SharedPreferencesManager.authToken);

    try {
      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.addToWishlist,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': token},
        ),
      );
      // log(response.statusMessage.toString());

      if (response.statusCode == 200) {
        final result = CommonResponse.fromJson(response.data);
        inspect(result);
        return Right(result);
      } else {
        return Left(MainFailure.serverFailure(response.data));
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, CommonResponse>> removeFromWishList(
      String productId,
      {String? userId}) async {
    final formData = FormData.fromMap({
      'user_id': userId ?? '',
      'product_id': productId,
    });

    final token = await SharedPreferencesManager.getString(
        SharedPreferencesManager.authToken);

    try {
      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.removeFromWishlist,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': token},
        ),
      );
      // log(response.statusMessage.toString());

      if (response.statusCode == 200) {
        final result = CommonResponse.fromJson(response.data);
        inspect(result);
        return Right(result);
      } else {
        return Left(MainFailure.serverFailure(response.data));
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, ProductSearchResult>> searchResult(
      String keyword, String lat, String long) async {
    final formData = FormData.fromMap(
        {'keyword': keyword, 'user_latitude': lat, 'user_longitude': long});

    try {
      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.productSearch,
        data: formData,
        options: Options(
          headers: {
            'Accept': 'application/json',
          },
        ),
      );
      // log(response.statusMessage.toString());

      if (response.statusCode == 200) {
        final result = ProductSearchResult.fromJson(response.data);
        print(result.products![0].productId.toString());

        return Right(result);
      } else {
        return Left(MainFailure.serverFailure(response.data));
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
