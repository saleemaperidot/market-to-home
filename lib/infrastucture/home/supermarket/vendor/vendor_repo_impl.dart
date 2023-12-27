import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:market_2_home/domain/home/supermarket/vendor/vendor_model/vendor_model.dart';
import 'package:market_2_home/domain/home/supermarket/vendor/vendor_repo.dart';
import 'package:market_2_home/domain/home/supermarket/vendorCategory/vendor_category/vendor_category.dart';
import 'package:market_2_home/domain/main_failures/main_failures.dart';

import '../../../../domain/core/constant.dart';

@LazySingleton(as: VendorRepo)
class VendorRepoImpl implements VendorRepo {
  @override
  Future<Either<MainFailure, VendorCategory>> getCategories(
      String vendorCode) async {
    final formData = FormData.fromMap({
      'vendor': vendorCode,
    });

    try {
      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.getCategories,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json'},
        ),
      );
      // log(response.statusMessage.toString());

      if (response.statusCode == 200) {
        log(response.statusCode.toString());
        final result = VendorCategory.fromJson(response.data);
        log(result.toString());
        inspect(result.category);
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
  Future<Either<MainFailure, VendorModel>> vendorList(
      String page, String shopType, String lat, String long,
      {String? sortBy}) async {
    final formData = FormData.fromMap({
      'page': page,
      'shop_type': shopType,
      'latitude': lat,
      'longitude': long,
      'sort_by': sortBy,
    });

    try {
      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.listVendors,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json'},
        ),
      );
      print(response);

      if (response.statusCode == 200) {
        final result = VendorModel.fromJson(response.data);
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
}
