import 'package:dartz/dartz.dart';
import 'package:market_2_home/domain/common/common_response/common_response.dart';
import 'package:market_2_home/domain/profile/get_order_details_model/get_order_details_model.dart';
import 'package:market_2_home/domain/profile/get_orders_model/get_orders_model.dart';
import 'package:market_2_home/domain/profile/get_profile_data_model/get_profile_data_model.dart';
import 'package:market_2_home/domain/profile/myAddress/address_model/address_model.dart';
import 'package:market_2_home/domain/profile/order_return_option_model/order_return_option_model.dart';
import 'package:market_2_home/domain/profile/wallet_data_model/wallet_data_model.dart';

import '../main_failures/main_failures.dart';
import 'cancel_item_response_model/cancel_item_response_model.dart';

abstract class ProfileRepo {
  Future<Either<MainFailure, AddressModel>> getAddress(String userId);
  Future<Either<MainFailure, CommonResponse>> logout(
      String userId, String deviceToken, String deviceType);
  Future<Either<MainFailure, GetProfileDataModel>> getProfileData(
      String userId);
  Future<Either<MainFailure, WalletDataModel>> getWalletData(
      String userId, String page);
  Future<Either<MainFailure, GetOrdersModel>> getOrders(
      String userId, int? page); // didnt complete pagination
  Future<Either<MainFailure, CommonResponse>> deleteAddress(
      String userId, String addressId);

  Future<Either<MainFailure, GetOrderDetailsModel>> getOrderDetails(
      String userId, String id, String secretKey);
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
      {int? id});

  Future<Either<MainFailure, CommonResponse>> setDefaultAddress(
      String userId, String addressId);

  Future<Either<MainFailure, CommonResponse>> cancelOrder(
    String userId,
    String orderId,
    String secretKey,
  );

  Future<Either<MainFailure, CancelItemResponseModel>> cancelItem(
    String userId,
    String orderProductId,
  );

  Future<Either<MainFailure, OrderReturnOptionModel>> getOrderReturnOptions(
    String userId,
    String orderProductId,
  );

  Future<Either<MainFailure, CommonResponse>> returnOrder(
      String userId,
      String returnType,
      String reason,
      String orderProductId,
      String description);
  Future<Either<MainFailure, CommonResponse>> reviewAndRating(
      String userId, String endpoint, String rating, String orderProductId,
      {String? review});
}
