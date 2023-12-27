import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:market_2_home/domain/common/common_response/common_response.dart';
import 'package:market_2_home/domain/profile/get_order_details_model/get_order_details_model.dart';
import 'package:market_2_home/domain/profile/get_orders_model/get_orders_model.dart';
import 'package:market_2_home/domain/profile/get_profile_data_model/get_profile_data_model.dart';
import 'package:market_2_home/domain/profile/myAddress/address_model/address_model.dart';
import 'package:market_2_home/domain/main_failures/main_failures.dart';
import 'package:market_2_home/domain/profile/order_return_option_model/order_return_option_model.dart';
import 'package:market_2_home/domain/profile/profile_repo.dart';
import 'package:market_2_home/domain/profile/wallet_data_model/wallet_data_model.dart';

import '../../domain/core/constant.dart';
import '../../domain/core/shared_pref/shared_pref.dart';
import '../../domain/profile/cancel_item_response_model/cancel_item_response_model.dart';

@LazySingleton(as: ProfileRepo)
class HomeRepoImpl implements ProfileRepo {
  @override
  Future<Either<MainFailure, AddressModel>> getAddress(String userId) async {
    final formData = FormData.fromMap({
      'user_id': userId,
    });
    final token = await SharedPreferencesManager.getString(
        SharedPreferencesManager.authToken);

    try {
      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.getAddress,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': token},
        ),
      );

      if (response.statusCode == 200) {
        final result = AddressModel.fromJson(response.data);

        return Right(result);
      } else {
        return Left(MainFailure.serverFailure(response.data));
      }
    } catch (e) {
      log(e.toString() + 'hellow');
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, CommonResponse>> deleteAddress(
      String userId, String addressId) async {
    final formData =
        FormData.fromMap({'user_id': userId, 'address_id': addressId});

    final token = await SharedPreferencesManager.getString(
        SharedPreferencesManager.authToken);
    try {
      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.deleteAddress,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': token},
        ),
      );

      if (response.statusCode == 200) {
        final result = CommonResponse.fromJson(response.data);
        inspect(result);
        return Right(result);
      } else {
        return Left(MainFailure.serverFailure(response.data));
      }
    } catch (e) {
      log(e.toString() + 'hellow');
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, CommonResponse>> setDefaultAddress(
      String userId, String addressId) async {
    final formData =
        FormData.fromMap({'user_id': userId, 'address_id': addressId});
    final token = await SharedPreferencesManager.getString(
        SharedPreferencesManager.authToken);
    try {
      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.setDefaultAddress,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': token},
        ),
      );

      if (response.statusCode == 200) {
        final result = CommonResponse.fromJson(response.data);
        inspect(result);
        return Right(result);
      } else {
        return Left(MainFailure.serverFailure(response.data));
      }
    } catch (e) {
      log(e.toString() + 'hellow');
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, CommonResponse>> addAddress(
      String userId,
      String firstName,
      String lastName,
      String buildingName,
      String buildingNumber,
      String streetName,
      String phoneNumber,
      String latitude,
      String longitude,
      int isDefault,
      {int? id}) async {
    final formData = FormData.fromMap({
      'user_id': userId,
      'first_name': firstName,
      'last_name': lastName,
      'street_name': streetName,
      'building_name': buildingName,
      'building_no': buildingNumber,
      'contact_number': phoneNumber,
      'latitude': latitude,
      'longitude': longitude,
      'is_default': isDefault,
      'address_id': id
    });

    print(streetName);
    final token = await SharedPreferencesManager.getString(
        SharedPreferencesManager.authToken);
    try {
      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.addAddress,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': token},
        ),
      );

      if (response.statusCode == 200) {
        print('success');
        final result = CommonResponse.fromJson(response.data);
        inspect(result);
        return Right(result);
      } else {
        return Left(MainFailure.serverFailure(response.data));
      }
    } catch (e) {
      log(e.toString() + 'hellow');
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, GetOrdersModel>> getOrders(
      String userId, int? page) async {
    final formData = FormData.fromMap({'user_id': userId, 'page': 1});

    final token = await SharedPreferencesManager.getString(
        SharedPreferencesManager.authToken);

    print(token);
    try {
      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.getOrders,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': token},
        ),
      );

      if (response.statusCode == 200) {
        final result = GetOrdersModel.fromJson(response.data);
        inspect(result);
        return Right(result);
      } else {
        return Left(MainFailure.serverFailure(response.data));
      }
    } catch (e) {
      log(e.toString() + 'hellow');
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, GetOrderDetailsModel>> getOrderDetails(
      String userId, String id, String secretKey) async {
    final formData = FormData.fromMap(
        {'user_id': userId, 'order_id': id, 'secret_key': secretKey});

    final token = await SharedPreferencesManager.getString(
        SharedPreferencesManager.authToken);
    try {
      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.getOrderDetails,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': token},
        ),
      );

      print(response.statusCode);
      if (response.statusCode == 200) {
        final result = GetOrderDetailsModel.fromJson(response.data);
        inspect(result);
        return Right(result);
      } else {
        return Left(MainFailure.serverFailure(response.data));
      }
    } catch (e) {
      print(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, WalletDataModel>> getWalletData(
      String userId, String page) async {
    final formData = FormData.fromMap({'user_id': userId, 'page': page});
    final token = await SharedPreferencesManager.getString(
        SharedPreferencesManager.authToken);
    try {
      final Response response = await Dio(BaseOptions()).post(
        // '$baseUrl/getWalletData',
        Apis.baseUrl + Apis.getWalletData,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': token},
        ),
      );

      if (response.statusCode == 200) {
        final result = WalletDataModel.fromJson(response.data);
        inspect(result);
        return Right(result);
      } else {
        return Left(MainFailure.serverFailure(response.data));
      }
    } catch (e) {
      print(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, GetProfileDataModel>> getProfileData(
      String userId) async {
    final formData = FormData.fromMap({'user_id': userId});
    final token = await SharedPreferencesManager.getString(
        SharedPreferencesManager.authToken);
    try {
      final Response response = await Dio(BaseOptions()).post(
        //  '$baseUrl/getProfileDetails',
        Apis.baseUrl + Apis.getProfileDetails,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': token},
        ),
      );

      print(response.statusCode);
      if (response.statusCode == 200) {
        final result = GetProfileDataModel.fromJson(response.data);
        inspect(result);
        return Right(result);
      } else {
        return Left(MainFailure.serverFailure(response.data));
      }
    } catch (e) {
      print(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, CommonResponse>> logout(
      String userId, String deviceToken, String deviceType) async {
    final formData = FormData.fromMap({
      'user_id': userId,
      'device_token': deviceToken,
      'device_type': deviceType
    });
    final token = await SharedPreferencesManager.getString(
        SharedPreferencesManager.authToken);
    try {
      final Response response = await Dio(BaseOptions()).post(
        // '$baseUrl/logout',
        Apis.baseUrl + Apis.logout,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': token},
        ),
      );

      print(response.statusCode);
      if (response.statusCode == 200) {
        final result = CommonResponse.fromJson(response.data);
        inspect(result);
        return Right(result);
      } else {
        return Left(MainFailure.serverFailure(response.data));
      }
    } catch (e) {
      print(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, CancelItemResponseModel>> cancelItem(
      String userId, String orderProductId) async {
    try {
      final formData = FormData.fromMap({
        'user_id': userId,
        'order_product_id': orderProductId,
      });

      final authToken = await SharedPreferencesManager.getString(
          SharedPreferencesManager.authToken);

      final Response response = await Dio(BaseOptions()).post(
        //   '$baseUrl/cancelItem',
        Apis.baseUrl + Apis.cancelItem,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': authToken},
        ),
      );
      print(response);
      if (response.statusCode == 200) {
        final result = CancelItemResponseModel.fromJson(response.data);
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
  Future<Either<MainFailure, CommonResponse>> cancelOrder(
      String userId, String orderId, String secretKey) async {
    try {
      final formData = FormData.fromMap({
        'user_id': userId,
        'order_id': orderId,
        'secret_key': secretKey,
      });

      final authToken = await SharedPreferencesManager.getString(
          SharedPreferencesManager.authToken);

      final Response response = await Dio(BaseOptions()).post(
        //  '$baseUrl/cancelOrder',
        Apis.baseUrl + Apis.cancelItem,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': authToken},
        ),
      );
      print(response);
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
  Future<Either<MainFailure, OrderReturnOptionModel>> getOrderReturnOptions(
      String userId, String orderProductId) async {
    try {
      final formData = FormData.fromMap({
        'user_id': userId,
        'order_product_id': orderProductId,
      });

      final authToken = await SharedPreferencesManager.getString(
          SharedPreferencesManager.authToken);

      final Response response = await Dio(BaseOptions()).post(
        // '$baseUrl/getReturnOptions',
        Apis.baseUrl + Apis.getReturnOptions,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': authToken},
        ),
      );
      print(response);
      if (response.statusCode == 200) {
        final result = OrderReturnOptionModel.fromJson(response.data);
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
  Future<Either<MainFailure, CommonResponse>> returnOrder(
      String userId,
      String returnType,
      String reason,
      String orderProductId,
      String description) async {
    try {
      final formData = FormData.fromMap({
        'user_id': userId,
        'return_type': returnType,
        'reason': reason,
        'order_product_id': orderProductId,
        'description': description
      });

      final authToken = await SharedPreferencesManager.getString(
          SharedPreferencesManager.authToken);

      final Response response = await Dio(BaseOptions()).post(
        //  '$baseUrl/returnOrder',
        Apis.baseUrl + Apis.returnOrder,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': authToken},
        ),
      );
      print(response);
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
  Future<Either<MainFailure, CommonResponse>> reviewAndRating(
      String userId, String endpoint, String rating, String orderProductId,
      {String? review}) async {
    try {
      final formData = FormData.fromMap({
        'user_id': userId,
        'order_product_id': orderProductId,
        'rating': rating,
        'review': review,
      });

      final authToken = await SharedPreferencesManager.getString(
          SharedPreferencesManager.authToken);

      final Response response = await Dio(BaseOptions()).post(
        //  '$baseUrl/storeRating/$endpoint',
        Apis.baseUrl + Apis.storeRating + '/' + '$endpoint',
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': authToken},
        ),
      );
      print(response);
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
}
