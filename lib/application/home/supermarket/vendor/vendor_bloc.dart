import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:market_2_home/domain/home/supermarket/vendor/vendor_repo.dart';
import 'package:market_2_home/presentation/home/supermarket/supermarketProducts/supermarket_products.dart';
import 'package:market_2_home/presentation/home/supermarket/supermarketSubCategory/supermarket_sub_category.dart';

import '../../../../domain/core/shared_pref/shared_pref.dart';
import '../../../../domain/home/supermarket/vendor/vendor_model/datum.dart';
import '../../../../domain/home/supermarket/vendor/vendor_model/filter.dart';
import '../../../../domain/home/supermarket/vendorCategory/vendor_category/category.dart';
import '../../../../domain/home/supermarket/vendorCategory/vendor_category/subCategory.dart';
import '../../../../presentation/home/supermarket/supermarketCategory/supermarket_category.dart';

part 'vendor_event.dart';
part 'vendor_state.dart';
part 'vendor_bloc.freezed.dart';

@LazySingleton()
@injectable
class VendorBloc extends Bloc<VendorEvent, VendorState> {
  final VendorRepo vendorRepo;
  int page = 1;
  // bool isFetching = false;
  VendorBloc(this.vendorRepo) : super(const _Initial()) {
    on<GetVendor>((getVendor));
    on<Init>((init));

    on<GetCategories>((getCategories));
    on<GetSubCategories>((getSubCategories));
  }
  init(Init event, Emitter<VendorState> emit) async {
    if (page == 1) {
      emit(state.copyWith(isLoading: true));
    }

    String lat = await SharedPreferencesManager.getString(
            SharedPreferencesManager.lat) ??
        '';
    String long = await SharedPreferencesManager.getString(
            SharedPreferencesManager.long) ??
        '';

    print(page);

    final result =
        await vendorRepo.vendorList(page.toString(), event.shopType, lat, long);

    final _state = result.fold((failure) {
      return state.copyWith(stauts: false, isLoading: false);
    }, (success) {
      if (success.status == true) {
        page++;
        // log(page.toString());
        inspect(success.data);

        return state.copyWith(
          isLoading: false,
          // vendorCategory: success.categories!,
          vendorFilter: success.filter!,
          vendorList: [...state.vendorList, ...success.data!],
        );
      } else {
        return state.copyWith(stauts: false, isLoading: false);
      }
    });

    emit(_state);
  }

  getVendor(GetVendor event, Emitter<VendorState> emit) async {
    emit(state.copyWith(isLoading: true));
    page = 1;

    String lat = await SharedPreferencesManager.getString(
            SharedPreferencesManager.lat) ??
        '';
    String long = await SharedPreferencesManager.getString(
            SharedPreferencesManager.long) ??
        '';

    final result = await vendorRepo.vendorList('1', event.shopType, lat, long,
        sortBy: event.filter);

    final _state = result.fold((failure) {
      return state.copyWith(stauts: false, isLoading: false);
    }, (success) {
      if (success.status == true) {
        page++;
        // log(page.toString());
        inspect(success.data);

        return state.copyWith(
          isLoading: false,
          // vendorCategory: success.categories!,
          vendorFilter: success.filter!,
          vendorList: success.data!,
        );
      } else {
        return state.copyWith(stauts: false, isLoading: false);
      }
    });

    emit(_state);
  }

  getCategories(GetCategories event, Emitter<VendorState> emit) async {
    emit(state.copyWith(isLoading: true));

    Navigator.of(event.context)
        .pushNamed(SupermarketCategory.routeSupermarketCategory);

    final result = await vendorRepo.getCategories(event.vendorurl);

    final _state = result.fold((failure) {
      // toast(event.context, 'Enter Valid Email/Password');

      return state.copyWith(stauts: false, isLoading: false);
    }, (success) {
      if (success.status == true) {
        return state.copyWith(
            isLoading: false,
            category: success.category,
            vendorShopName: event.vendorShopName,
            vendorSlug: event.vendorurl);
      } else {
        return state.copyWith(stauts: false, isLoading: false);
      }
    });

    emit(_state);
  }

  getSubCategories(GetSubCategories event, Emitter<VendorState> emit) async {
    emit(state.copyWith(isLoading: true, categorySlug: event.categorySlug));

    if (event.subCategoryList.isEmpty) {
      Navigator.of(event.context)
          .pushNamed(SupermarketProducts.routeSupermarketProducts);
      return emit(state.copyWith(isLoading: false));
    }

    Navigator.of(event.context)
        .pushNamed(SupermarketSubCategory.routeSupermarketSubCategory);

    emit(state.copyWith(isLoading: false, subCategory: event.subCategoryList));
  }
}
