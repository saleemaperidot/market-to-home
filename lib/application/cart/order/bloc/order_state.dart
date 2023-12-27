part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial({
    @Default(false) bool stauts,
    @Default(false) bool isLoading,
    @Default(0) int isWallet,
    @Default(0) double creditPointBalanceAmount,
    @Default(0) double amountToPay,
    @Default(0) double discount,
    @Default(false) bool selectCreditPoint,
    // at a time user only can use credit point or coupon
    @Default(true) bool creditPointVisiblity,
    @Default(true) bool redeemCoupenVisiblity,
    // coupon Apply
    @Default(true) bool isApplyingLoader,
    @Default(true) bool isApplied,
    @Default('') String couponCode,
    @Default(true) bool isTextFieldEnabled,

    // list of available coupon visiblity
    @Default(false) bool couponVisiblity,
    @Default(false) bool couponListTestVisiblity,

    //Order
    OrderData? orderData,
    OrderOnlineInitiatData? orderOnlineInitiatData,
    @Default(false) bool orderLoader,
    Data? checkoutData,
    @Default('') String paymentStatus,
    @Default(true) bool paymentWebLoader,
    @Default(true) webViewLoader,

    //new order datas
  }) = _Initial;
}
