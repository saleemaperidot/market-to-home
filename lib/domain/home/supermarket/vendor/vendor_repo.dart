import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:market_2_home/domain/home/supermarket/vendor/vendor_model/vendor_model.dart';
import 'package:market_2_home/domain/home/supermarket/vendorCategory/vendor_category/vendor_category.dart';

import '../../../main_failures/main_failures.dart';

abstract class VendorRepo {
  Future<Either<MainFailure, VendorModel>> vendorList(
    String page,
    String shopType,
    String lat,
    String long, {
    @Default('name') String? sortBy,
  });
  Future<Either<MainFailure, VendorCategory>> getCategories(
    String vendorCode,
  );
}
