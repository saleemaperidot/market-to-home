import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:market_2_home/domain/cart/checkOut/checkoutModel/checkout_model/data.dart';
import 'package:market_2_home/domain/cart/checkOut/checkout_repo.dart';
import 'package:market_2_home/domain/cart/order/order_repo.dart';
import 'package:market_2_home/domain/cart/order/place_order_online_initiate_model/data.dart';
import 'package:market_2_home/presentation/home/mapLocation/map_location.dart';

import '../../../../domain/cart/order/place_order_cash_model/order_data.dart';
import '../../../../domain/core/shared_pref/shared_pref.dart';
import '../../../../presentation/cart/checkout/checkout.dart';
import '../../../../presentation/cart/orderPayment/web_view_page.dart';
import '../../../../presentation/cart/orderSuccess/order_success.dart';
import '../../../../presentation/commonWidgets/components.dart';
import '../../../../presentation/commonWidgets/screen_arguments.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderRepo orderRepo;
  final CheckoutRepo checkoutRepo;
  OrderBloc(this.orderRepo, this.checkoutRepo) : super(_Initial()) {
    on<CouponVisibility>((couponVisiblity));
    on<WebViewLoaderVisiblityOff>((webViewLoaderVisiblityOff));
    on<WebViewLoaderVisiblityON>((webViewLoaderVisiblityOn));
    on<Checkout>((checkout));
    on<PointRedeem>((pointRedeem));
    on<ApplyCoupon>((applyCoupon));
    on<RemoveCoupon>((removeCoupon));
    on<PlaceOrderCash>((placeOrderCash));
    on<PlaceOrderCard>((placeOrderCard));
    on<GetPaymentStatusResponse>((getPaymentStatusResponse));
  }

  checkout(Checkout event, Emitter<OrderState> emit) async {
    String lat = await SharedPreferencesManager.getString(
            SharedPreferencesManager.lat) ??
        '';
    String long = await SharedPreferencesManager.getString(
            SharedPreferencesManager.long) ??
        '';

    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    if (lat == '' || long == '') {
      Navigator.of(event.context).pushNamed(MapLocation.routeMapLocation,
          arguments: ScreenArguments('cart'));
      return;
    }
    emit(state.copyWith(
        isLoading: true,
        selectCreditPoint: false,
        redeemCoupenVisiblity: true));

    final result = await checkoutRepo.checkout(userId, lat, long);

    final _state = result.fold((failure) {
      // toast(event.context, 'Enter Valid Email/Password');

      return state.copyWith(stauts: false, isLoading: false);
    }, (success) {
      if (success.status == true) {
        print(success.data);

        if (event.from == 'checkout') {
          Navigator.of(event.context).pop();
        } else if (event.from == 'emailDialog') {
          Navigator.of(event.context).popAndPushNamed(CheckOut.routeCheckout);
        }

        Navigator.of(event.context).pushNamed(CheckOut.routeCheckout);

        return state.copyWith(
            isLoading: false,
            checkoutData: success.data,
            discount:
                success.data?.couponData?.couponCode?.couponDatas?.discount ??
                    0,
            amountToPay: success.data?.payableAmount ?? 0,
            isApplied: success.data!.couponData!.status!,
            couponCode: success.data?.couponData?.couponCode?.couponName ?? '',
            creditPointBalanceAmount:
                success.data?.walletDetails?.balance?.toDouble() ?? 0,
            // selectCreditPoint: true,
            couponListTestVisiblity: success.data!.couponData!.status!);
      } else {
        showDialog(
            context: event.context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Sorry!!"),
                titleTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                content: Text(success.message ?? ''),
              );
            });
        return state.copyWith(stauts: false, isLoading: false);
      }
    });

    emit(_state);
  }

  couponVisiblity(CouponVisibility event, Emitter<OrderState> emit) async {
    bool visibility = !state.couponVisiblity;
    emit(state.copyWith(couponVisiblity: visibility));
  }

  pointRedeem(PointRedeem event, Emitter<OrderState> emit) async {
    double payableAmount =
        state.checkoutData!.payableAmount! - event.redeemableCurrency;
    // double redeemedCurrency =
    //     state.checkoutData!.walletDetails!.redeemableCurrency! -
    //         event.redeemableCurrency;

    if (!state.selectCreditPoint) {
      double balacePoints =
          state.checkoutData!.walletDetails!.balance!.toDouble() -
              state.checkoutData!.walletDetails!.redeemablePoints!;

      emit(state.copyWith(
          redeemCoupenVisiblity: false,
          selectCreditPoint: true,
          isWallet: 1,
          creditPointBalanceAmount: balacePoints,
          discount:
              state.checkoutData!.walletDetails!.redeemableCurrency!.toDouble(),
          checkoutData: state.checkoutData!.copyWith(
            payableAmount: payableAmount,
          )));
    } else {
      emit(state.copyWith(
          redeemCoupenVisiblity: true,
          selectCreditPoint: false,
          isWallet: 0,
          creditPointBalanceAmount:
              state.checkoutData!.walletDetails!.balance!.toDouble(),
          discount: 0,
          checkoutData: state.checkoutData!.copyWith(
            payableAmount: state.amountToPay,
          )));
    }
  }

  applyCoupon(ApplyCoupon event, Emitter<OrderState> emit) async {
    emit(state.copyWith(isApplyingLoader: true));

    if (event.couponCode.isEmpty) {
      toast(event.context, 'Coupon Code Field Is Empty');
      emit(state.copyWith(isLoading: false));
      return;
    }

    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    final result = await checkoutRepo.applyCoupon(userId, event.couponCode);

    final _state = result.fold((failure) {
      // toast(event.context, 'Enter Valid Email/Password');

      return state.copyWith(stauts: false, isApplyingLoader: false);
    }, (success) {
      log('success');
      if (success.status == true) {
        return state.copyWith(
            checkoutData:
                state.checkoutData!.copyWith(payableAmount: success.grandTotal),
            isApplyingLoader: false,
            couponVisiblity: false,
            discount: success.discount!.toDouble(),
            couponCode: success.coupon!,
            couponListTestVisiblity: success.status!);
        // &&
        //     state.checkoutData!.couponData!.appliedRule!
      } else {
        toast(event.context, success.message!);
        return state.copyWith(
          stauts: false,
          isApplyingLoader: false,
        );
      }
    });

    emit(_state);
  }

  removeCoupon(RemoveCoupon event, Emitter<OrderState> emit) async {
    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    final result = await checkoutRepo.removeCoupon(userId);

    final _state = result.fold((failure) {
      // toast(event.context, 'Enter Valid Email/Password');

      return state.copyWith(stauts: false, isLoading: false);
    }, (success) {
      if (success.status == true) {
        log('success');

        return state.copyWith(
            checkoutData: state.checkoutData!
                .copyWith(payableAmount: success.message!.grandTotal),
            isApplyingLoader: false,
            discount: 0,
            couponCode: '',
            couponListTestVisiblity: false);
        // &&
        //     state.checkoutData!.couponData!.appliedRule!
      } else {
        return state.copyWith(stauts: false, isLoading: false);
      }
    });

    emit(_state);
  }

  placeOrderCash(PlaceOrderCash event, Emitter<OrderState> emit) async {
    if (state.checkoutData?.address == null) {
      showDialog(
          context: event.context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Sorry!!"),
              titleTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              content: Text(
                  'Before place order please add delivery location details'),
            );
          });

      return;
    }

    emit(state.copyWith(orderLoader: true));
    String firstName = state.checkoutData?.address?.firstName ?? '';
    String lastName = state.checkoutData?.address?.lastName ?? '';
    String apartment = state.checkoutData?.address?.buildingName ?? '';
    String flatNo = state.checkoutData?.address?.buildingNo ?? '';
    String street = state.checkoutData?.address?.streetName ?? '';
    String lat = state.checkoutData?.address?.latitude ?? '';
    String long = state.checkoutData?.address?.longitude ?? '';

    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    final result = await orderRepo.placeOrderCash(userId, event.type, firstName,
        lastName, apartment, flatNo, street, lat, long, event.isWallet);

    final _state = result.fold((failure) {
      return state.copyWith(stauts: false, orderLoader: false);
    }, (success) {
      if (success.status == true) {
        log('success');

        Navigator.of(event.context).pushNamedAndRemoveUntil(
            OrderSuccess.routeOrderSuccess, (route) => false);
        return state.copyWith(orderData: success.orderData, orderLoader: false);
      } else {
        return state.copyWith(stauts: false, orderLoader: false);
      }
    });

    emit(_state);
  }

  placeOrderCard(PlaceOrderCard event, Emitter<OrderState> emit) async {
    if (state.checkoutData?.address == null) {
      showDialog(
          context: event.context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Sorry!!"),
              titleTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              content: Text(
                  'Before place order please add delivery location details'),
            );
          });

      return;
    }
    emit(state.copyWith(orderLoader: true));
    String firstName = state.checkoutData?.address?.firstName ?? '';
    String lastName = state.checkoutData?.address?.lastName ?? '';
    String apartment = state.checkoutData?.address?.buildingName ?? '';
    String flatNo = state.checkoutData?.address?.buildingNo ?? '';
    String street = state.checkoutData?.address?.streetName ?? '';
    String lat = state.checkoutData?.address?.latitude ?? '';
    String long = state.checkoutData?.address?.longitude ?? '';

    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    final result = await orderRepo.placeOrderOnlinePaymentInitiate(
        userId,
        event.type,
        firstName,
        lastName,
        apartment,
        flatNo,
        street,
        lat,
        long,
        event.isWallet);

    final _state = result.fold((failure) {
      return state.copyWith(
          stauts: false,
          orderLoader: false,
          paymentStatus: 'Connection Failure');
    }, (success) {
      if (success.status == true) {
        log('success');

        Navigator.push(
            event.context,
            MaterialPageRoute(
                builder: (_) => WebviewPage(
                      data: success.data,
                    )));
        return state.copyWith(
          orderOnlineInitiatData: success.data,
          orderLoader: false,
        );
      } else {
        return state.copyWith(stauts: false, orderLoader: false);
      }
    });

    emit(_state);
  }

  getPaymentStatusResponse(
      GetPaymentStatusResponse event, Emitter<OrderState> emit) async {
    emit(state.copyWith(isLoading: true));

    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    final result =
        await orderRepo.getPaymentStatusResponse(userId, event.OrderId);

    final _state = result.fold((failure) {
      // toast(event.context, 'Enter Valid Email/Password');

      return state.copyWith(stauts: false, isApplyingLoader: false);
    }, (success) {
      if (success.status == true) {
        print('fuctioon sucess');
        return state.copyWith(
            isLoading: false,
            paymentStatus: success.paymentStatus ?? '',
            orderData: success.orderData,
            paymentWebLoader: false);
        // &&
        //     state.checkoutData!.couponData!.appliedRule!
      } else {
        print('fuction failure ');
        return state.copyWith(isLoading: false);
      }
    });

    emit(_state);
  }

  webViewLoaderVisiblityOff(
      WebViewLoaderVisiblityOff event, Emitter<OrderState> emit) async {
    emit(state.copyWith(webViewLoader: false));
  }

  webViewLoaderVisiblityOn(
      WebViewLoaderVisiblityON event, Emitter<OrderState> emit) async {
    emit(state.copyWith(webViewLoader: true, paymentStatus: ''));
  }
}
