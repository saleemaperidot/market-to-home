import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:market_2_home/presentation/cart/cart.dart';
import 'package:market_2_home/presentation/commonWidgets/screen_arguments.dart';
import 'package:market_2_home/presentation/home/mapLocation/map_location.dart';
import 'package:market_2_home/presentation/home/supermarket/supermarket.dart';
import 'package:market_2_home/presentation/search/search.dart';

import '../../../../domain/core/shared_pref/shared_pref.dart';
import '../../../../domain/home/dash_board_model/category.dart';
import '../../../../domain/home/dash_board_model/main_banner.dart';
import '../../../../domain/home/dash_board_model/middle_banner.dart';
import '../../../../domain/home/dash_board_model/service.dart';
import '../../../../domain/home/home_repo.dart';
import '../../../../presentation/cart/checkout/checkout.dart';
import '../../../../presentation/commonWidgets/components.dart';
import '../../../../presentation/home/mapLocation/addAddress/add_address.dart';
import '../../../../presentation/home_container.dart';
import '../../supermarket/vendor/vendor_bloc.dart';

part 'dash_borad_event.dart';
part 'dash_borad_state.dart';
part 'dash_borad_bloc.freezed.dart';

@injectable
class DashBoradBloc extends Bloc<DashBoradEvent, DashBoradState> {
  final HomeRepo _homeRepo;
  DashBoradBloc(this._homeRepo) : super(const _Initials()) {
    on<Initial>((init));
    on<CategoryClick>((categoryClick));
    on<SearchClick>((searchClick));
    on<LocationConfimation>((locationConfimation));
    on<ClearLocation>(clearLocation);
    on<ChangeLoactionNameFromMyAddress>((changeLoactionNameFromMyAddress));
  }

  init(Initial event, Emitter<DashBoradState> emit) async {
    if (state.categories.isNotEmpty) {
      return;
    }
    emit(state.copyWith(isLoading: true));

    String? apartment = await SharedPreferencesManager.getString(
        SharedPreferencesManager.apartment);

    if (apartment != null) {
      print('halooww $apartment');
      emit(state.copyWith(addressName: apartment));
    }

    final result = await _homeRepo.dashboard();

    final _state = result.fold((failure) {
      // toast(event.context, 'Enter Valid Email/Password');

      return state.copyWith(stauts: false, isLoading: false);
    }, (success) {
      if (success.status == true) {
        log(success.mainBanners.toString());

        return state.copyWith(
            isLoading: false,
            mainBanner: success.mainBanners!,
            categories: success.categories!,
            middleBanners: success.middleBanners!,
            services: success.services!);
      } else {
        return state.copyWith(stauts: false, isLoading: false);
      }
    });

    emit(_state);
  }

  locationConfimation(
      LocationConfimation event, Emitter<DashBoradState> emit) async {
    emit(state.copyWith(isLoading: true));

    SharedPreferencesManager.setString(SharedPreferencesManager.lat, event.lat);
    SharedPreferencesManager.setString(
        SharedPreferencesManager.long, event.long);

    String? userId = await SharedPreferencesManager.getString(
        SharedPreferencesManager.userId);

    final result =
        await _homeRepo.updateLocation(event.lat, event.long, userId: userId);
    result.fold((failure) {
      // toast(event.context, 'Enter Valid Email/Password');

      return emit(state.copyWith(stauts: false, isLoading: false));
    }, (success) async {
      if (success.status == true) {
        if (event.from == 'home') {
          Navigator.of(event.context).pop();
        } else if (event.from == 'addAddress') {
          Navigator.of(event.context).pushNamed(AddAddress.routeAddAddress);
        } else if (event.from == 'category') {
          BlocProvider.of<VendorBloc>(event.context)
              .add(const Init('super-market'));
          Navigator.of(event.context)
              .pushReplacementNamed(Supermarket.routeSupermarket);
        } else if (event.from == 'vendorEmpty') {
          BlocProvider.of<VendorBloc>(event.context)
              .add(const GetVendor('super-market'));
          Navigator.of(event.context)
              .pushReplacementNamed(Supermarket.routeSupermarket);
        } else if (event.from == 'searchScreen') {
          Navigator.of(event.context)
              .pushReplacementNamed(SearchScreen.routeSearch);
        } else if (event.from == 'cart') {
          Navigator.of(event.context)
              .pushReplacementNamed(CheckOut.routeCheckout);
        } else if (event.from == 'headerBar') {
          Navigator.of(event.context).pushNamedAndRemoveUntil(
              HomeContainer.routeHomeContainer, (route) => false);
        }

        print(success.address.toString());
        SharedPreferencesManager.setString(
            SharedPreferencesManager.lat, event.lat);
        SharedPreferencesManager.setString(
            SharedPreferencesManager.long, event.long);

        SharedPreferencesManager.setString(
            SharedPreferencesManager.apartment, success.address!);

        // final address = await SharedPreferencesManager.getString(
        //         SharedPreferencesManager.locationAddress) ??
        //     '';

        // print(address);

        return emit(
            state.copyWith(isLoading: false, addressName: success.address!));
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
                content: Text("Not Deliver to this location"),
              );
            });
        return emit(state.copyWith(stauts: false, isLoading: false));
      }
    });
  }

  categoryClick(CategoryClick event, Emitter<DashBoradState> emit) async {
    String lat = await SharedPreferencesManager.getString(
            SharedPreferencesManager.lat) ??
        '';
    String long = await SharedPreferencesManager.getString(
            SharedPreferencesManager.long) ??
        '';

    print(lat);
    print(long);

    if (lat.isEmpty && long.isEmpty) {
      Navigator.of(event.context).pushNamed(MapLocation.routeMapLocation,
          arguments: ScreenArguments('category'));
    } else {
      Navigator.of(event.context).pushNamed(Supermarket.routeSupermarket);
      BlocProvider.of<VendorBloc>(event.context)
          .add(GetVendor(event.categroySlug));
    }
  }

  searchClick(SearchClick event, Emitter<DashBoradState> emit) async {
    String lat = await SharedPreferencesManager.getString(
            SharedPreferencesManager.lat) ??
        '';
    String long = await SharedPreferencesManager.getString(
            SharedPreferencesManager.long) ??
        '';

    if (lat.isEmpty && long.isEmpty) {
      Navigator.of(event.context).pushNamed(MapLocation.routeMapLocation,
          arguments: ScreenArguments('searchScreen'));
    } else {
      openBottomScreen(event.context);
    }
  }

  changeLoactionNameFromMyAddress(
      ChangeLoactionNameFromMyAddress event, Emitter<DashBoradState> emit) {
    emit(state.copyWith(addressName: event.address));
  }

  clearLocation(ClearLocation event, Emitter<DashBoradState> emit) async {
    return emit(state.copyWith(addressName: ''));
  }
}
