import 'package:dartz/dartz.dart';
import 'package:market_2_home/domain/cart/cartModel/cart_model/cart_model.dart';
import 'package:market_2_home/domain/cart/cartUpdateModel/cart_update_model/cart_update_model.dart';
import 'package:market_2_home/domain/common/common_response/common_response.dart';
import 'package:market_2_home/domain/wishList/wishListModel/wish_list_model/wish_list_model.dart';

import '../main_failures/main_failures.dart';

abstract class CartRepo {
  Future<Either<MainFailure, CartUpdateModel>> cartQuantityAdd(
      String userId, String increment, String productId);

  Future<Either<MainFailure, CartUpdateModel>> cartQuantityRemove(
      String userId, String decrement, String productId);

  Future<Either<MainFailure, CartUpdateModel>> cartQuantityAddFromWishList(
      String userId, String increment, String productId, String fromWishList);

  Future<Either<MainFailure, CartModel>> getCartDetails(String userId);

  Future<Either<MainFailure, CartUpdateModel>> saveForLater(
      String userId, String productId);

  Future<Either<MainFailure, CartUpdateModel>> removeFromCart(
      String userId, String productId);

  Future<Either<MainFailure, WishListModel>> getWishList(
    String userId,
  );

  Future<Either<MainFailure, CommonResponse>> customerDataUpdate(
      String userId, String username, String email,
      {String? referalCode, String? phoneNumber, String? newPassword});
}
