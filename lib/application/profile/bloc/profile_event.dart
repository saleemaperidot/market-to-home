part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getAddress() = GetAddress;
  const factory ProfileEvent.getOrders() = GetOrders;
  const factory ProfileEvent.getOrdersDetails(
      BuildContext context, String orderId, String secretKey) = GetOrderDetails;
  const factory ProfileEvent.deleteAddress(String addressId) = DeleteAddress;
  const factory ProfileEvent.getProfileData(BuildContext context) =
      GetProfileData;

  // for editting address this same event is calling
  const factory ProfileEvent.addAddress(
      BuildContext context,
      String firstName,
      String lastName,
      String streetName,
      String buildingName,
      String buildingNumber,
      String contactNumber,
      String lat,
      String long,
      {int? id,
      String? from}) = AddAddressEvent;

  const factory ProfileEvent.setDefaultAddress(String addressId,BuildContext context) =
      SetDefaultAddress;

  const factory ProfileEvent.getWalletDetailsData(BuildContext context) =
      GetWalletDetailsData;

  const factory ProfileEvent.logout(BuildContext context) = Logout;

  const factory ProfileEvent.updateProfileData(
      BuildContext context, String userName, String email,
      {String? newPassword}) = UpdateProfileData;

  const factory ProfileEvent.cancelOrder(
      BuildContext context, String orderId, String secretKey) = CancelOrder;

  const factory ProfileEvent.cancelItem(
      BuildContext context, String orderProductId) = CancelItem;

  const factory ProfileEvent.getOrderReturnOptions(
      BuildContext context, String orderProductId) = GetOrderReturnOptions;

  const factory ProfileEvent.returnOrder(
      BuildContext context,
      String returnType,
      String reason,
      String orderProductId,
      String description) = ReturnOrder;

  const factory ProfileEvent.cancelReturnDialogBox() = CancelReturnDialogBox;

  const factory ProfileEvent.reviewAndRating(
      BuildContext context,
      String endPoint,
      String productId,
      String rating,
      String review) = ReviewAndRating;

     
}
