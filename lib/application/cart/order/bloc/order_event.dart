part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.couponVisiblity() = CouponVisibility;
  const factory OrderEvent.webViewLoaderVisiblityOff() =
      WebViewLoaderVisiblityOff;
  const factory OrderEvent.webViewLoaderVisiblityOn() =
      WebViewLoaderVisiblityON;
  const factory OrderEvent.checkout(BuildContext context, {String? from}) =
      Checkout;

  const factory OrderEvent.pointRedeem(double redeemableCurrency) = PointRedeem;
  const factory OrderEvent.applyCouponCode(
      BuildContext context, String couponCode) = ApplyCoupon;
  const factory OrderEvent.removeCouponCode() = RemoveCoupon;
  const factory OrderEvent.placeOrderCash(
      BuildContext context, String type, String isWallet) = PlaceOrderCash;
  const factory OrderEvent.placeOrderCard(
      BuildContext context, String type, String isWallet) = PlaceOrderCard;
  const factory OrderEvent.getPaymentStatusResponse(
      BuildContext context, String OrderId) = GetPaymentStatusResponse;
}
