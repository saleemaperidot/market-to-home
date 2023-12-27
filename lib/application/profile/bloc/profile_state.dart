part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial(
      {@Default(false) bool stauts,
      @Default(false) bool isLoading,
       @Default(false) bool returnOptionDialog,
      @Default('') String userName,
      @Default('') String email,
      @Default([]) List<AddressData> addressList,
      @Default([]) List<GetOrderData> ordersList,
       OrderReturnOptionModel? orderReturnOptionModel,
      GetOrderDetailsModel? orderDetails,
      WalletDataModel? walletDetails,
      ProfileData? profileDetails,
      ReferralData? referralDetails}) = _Initial;
}
