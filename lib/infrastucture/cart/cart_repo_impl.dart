import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:market_2_home/domain/cart/cartModel/cart_model/cart_model.dart';
import 'package:market_2_home/domain/cart/cartUpdateModel/cart_update_model/cart_update_model.dart';
import 'package:market_2_home/domain/cart/cart_repo.dart';
import 'package:market_2_home/domain/common/common_response/common_response.dart';
import 'package:market_2_home/domain/error/error_response/erorr_response/erorr_response.dart';
import 'package:market_2_home/domain/main_failures/main_failures.dart';
import 'package:market_2_home/domain/wishList/wishListModel/wish_list_model/wish_list_model.dart';

import '../../domain/core/constant.dart';
import '../../domain/core/shared_pref/shared_pref.dart';

@LazySingleton(as: CartRepo)
class CartRepoImpl implements CartRepo {
  @override
  Future<Either<MainFailure, CartUpdateModel>> cartQuantityAdd(
      String userId, String increment, String productId) async {
    try {
      final formData = FormData.fromMap({
        'user_id': userId,
        'increment': increment,
        'product_id': productId,
      });
      final authToken = await SharedPreferencesManager.getString(
          SharedPreferencesManager.authToken);

      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.cartQuantity,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': authToken},
        ),
      );

      print(response);

      if (response.statusCode == 200) {
        final result = CartUpdateModel.fromJson(response.data);
        return Right(result);
      } else {
        // log(errorResponse.toString());
        return const Left(MainFailure.clientFailure());
      }
    } catch (e) {
      log(e.toString());

      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, CartUpdateModel>> cartQuantityRemove(
      String userId, String decrement, String productId) async {
    try {
      final formData = FormData.fromMap({
        'user_id': userId,
        'decrement': decrement,
        'product_id': productId,
      });
      final authToken = await SharedPreferencesManager.getString(
          SharedPreferencesManager.authToken);
      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.cartQuantity,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': authToken},
        ),
      );

      if (response.statusCode == 200) {
        final result = CartUpdateModel.fromJson(response.data);
        log(result.toString());
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
  Future<Either<MainFailure, CartModel>> getCartDetails(String userId) async {
    try {
      final formData = FormData.fromMap({
        'user_id': userId,
      });

      final authToken = await SharedPreferencesManager.getString(
          SharedPreferencesManager.authToken);
      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.getCart,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': authToken},
        ),
      );

      if (response.statusCode == 200) {
        final result = CartModel.fromJson(response.data);
        log(result.toString());
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
  Future<Either<MainFailure, CartUpdateModel>> removeFromCart(
      String userId, String productId) async {
    try {
      final formData =
          FormData.fromMap({'user_id': userId, 'product_id': productId});

      final authToken = await SharedPreferencesManager.getString(
          SharedPreferencesManager.authToken);
      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.removeFromCart,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': authToken},
        ),
      );

      if (response.statusCode == 200) {
        final result = CartUpdateModel.fromJson(response.data);
        log(result.toString());
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
  Future<Either<MainFailure, CartUpdateModel>> saveForLater(
      String userId, String productId) async {
    try {
      final formData =
          FormData.fromMap({'user_id': userId, 'product_id': productId});

      final authToken = await SharedPreferencesManager.getString(
          SharedPreferencesManager.authToken);

      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.saveForLater,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': authToken},
        ),
      );

      if (response.statusCode == 200) {
        final result = CartUpdateModel.fromJson(response.data);
        log(result.toString());
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
  Future<Either<MainFailure, WishListModel>> getWishList(String userId) async {
    try {
      final formData = FormData.fromMap({
        'user_id': userId,
      });

      final authToken = await SharedPreferencesManager.getString(
          SharedPreferencesManager.authToken);

      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.getWishlistProducts,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': authToken},
        ),
      );

      if (response.statusCode == 200) {
        final result = WishListModel.fromJson(response.data);
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
  Future<Either<MainFailure, CartUpdateModel>> cartQuantityAddFromWishList(
      String userId,
      String increment,
      String productId,
      String fromWishlist) async {
    log(userId + increment + productId);
    try {
      final formData = FormData.fromMap({
        'user_id': userId,
        'increment': increment,
        'product_id': productId,
        'from_wishlist': fromWishlist
      });

      final authToken = await SharedPreferencesManager.getString(
          SharedPreferencesManager.authToken);

      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.cartQuantity,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json', 'Authorization': authToken},
        ),
      );

      if (response.statusCode == 200) {
        final result = CartUpdateModel.fromJson(response.data);
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
  Future<Either<MainFailure, CommonResponse>> customerDataUpdate(
      String userId, String username, String email,
      {String? referalCode, String? phoneNumber, String? newPassword}) async {
    try {
      final formData = FormData.fromMap({
        'user_id': userId,
        'customer_name': username,
        'customer_email': email,
        'customer_password': newPassword,
        'referred_by': referalCode
      });

      final authToken = await SharedPreferencesManager.getString(
          SharedPreferencesManager.authToken);

      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.updateCustomerData,
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
