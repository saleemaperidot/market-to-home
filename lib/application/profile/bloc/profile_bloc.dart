import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:market_2_home/application/cart/bloc/cart_bloc.dart';
import 'package:market_2_home/application/cart/order/bloc/order_bloc.dart';
import 'package:market_2_home/application/home/dashboard/bloc/dash_borad_bloc.dart';
import 'package:market_2_home/domain/profile/get_order_details_model/get_order_details_model.dart';
import 'package:market_2_home/domain/profile/get_order_details_model/product.dart';
import 'package:market_2_home/domain/profile/get_orders_model/datum.dart';
import 'package:market_2_home/domain/profile/profile_repo.dart';

import 'package:market_2_home/presentation/cart/orderDetails/order_details.dart';
import 'package:market_2_home/presentation/home_container.dart';
import 'package:market_2_home/presentation/profile/myAddress/my_address.dart';
import 'package:market_2_home/presentation/profile/myWallet/my_wallet.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../domain/cart/cart_repo.dart';
import '../../../domain/core/shared_pref/shared_pref.dart';
import '../../../domain/main_failures/main_failures.dart';
import '../../../domain/profile/get_profile_data_model/profile_data.dart';
import '../../../domain/profile/get_profile_data_model/referral_data.dart';
import '../../../domain/profile/myAddress/address_model/datum.dart';
import '../../../domain/profile/order_return_option_model/order_return_option_model.dart';
import '../../../domain/profile/wallet_data_model/wallet_data_model.dart';
import '../../../presentation/commonWidgets/components.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepo profileRepo;
  final CartRepo cartRepo;

  ProfileBloc(this.profileRepo, this.cartRepo) : super(_Initial()) {
    on<GetAddress>((getAddress));
    on<GetProfileData>((getProfileData));
    on<GetWalletDetailsData>((getWalletDetailsData));
    on<GetOrderDetails>((getOrderDetails));
    on<GetOrders>((getOrders));
    on<DeleteAddress>((deleteAddress));
    on<AddAddressEvent>(addAddress);
    on<SetDefaultAddress>((setDefaultAddress));
    on<Logout>((logout));
    on<UpdateProfileData>((updateProfileData));
    on<CancelOrder>((cancelOrder));
    on<CancelItem>((cancelItem));
    on<GetOrderReturnOptions>((getOrderReturnOptions));
    on<ReturnOrder>((returnOrder));
    on<CancelReturnDialogBox>((cancelReturnDialogBox));
    on<ReviewAndRating>((reviewAndRating));
  }

  getProfileData(GetProfileData event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(isLoading: true));

    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    final result = await profileRepo.getProfileData(userId);

    final _state = result.fold((failure) {
      print(failure.toString());
      return state.copyWith(stauts: false, isLoading: false);
    }, (success) {
      if (success.status == true) {
        print(success.status);
        // Navigator.of(event.context).pushNamed(MyWallet.routeMyWallet);
        return state.copyWith(
          profileDetails: success.data!.profileData,
          referralDetails: success.data!.referralData,
          userName: success.data?.profileData?.customerName ?? '',
          email: success.data?.profileData?.customerEmail ?? '',
          isLoading: false,
        );
      } else {
        return state.copyWith(stauts: false, isLoading: false);
      }
    });

    emit(_state);
  }

  getWalletDetailsData(
      GetWalletDetailsData event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(isLoading: true));

    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    final result = await profileRepo.getWalletData(userId, '1');

    final _state = result.fold((failure) {
      // toast(event.context, 'Enter Valid Email/Password');
      print(failure.toString());
      return state.copyWith(stauts: false, isLoading: false);
    }, (success) {
      if (success.status == true) {
        print(success.status);
        Navigator.of(event.context).pushNamed(MyWallet.routeMyWallet);
        return state.copyWith(isLoading: false, walletDetails: success);
      } else {
        return state.copyWith(stauts: false, isLoading: false);
      }
    });

    emit(_state);
  }

  getOrderDetails(GetOrderDetails event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(isLoading: true));

    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    final result = await profileRepo.getOrderDetails(
        userId, event.orderId.toString(), event.secretKey);

    final _state = result.fold((failure) {
      // toast(event.context, 'Enter Valid Email/Password');
      print(failure.toString());
      return state.copyWith(stauts: false, isLoading: false);
    }, (success) {
      if (success.status == true) {
        print(success.status);
        Navigator.of(event.context).pushNamed(OrderDetails.routeOrderDetails);
        return state.copyWith(isLoading: false, orderDetails: success);
      } else {
        return state.copyWith(stauts: false, isLoading: false);
      }
    });

    emit(_state);
  }

  getAddress(GetAddress event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(isLoading: true));

    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    final result = await profileRepo.getAddress(userId);

    final _state = result.fold((failure) {
      // toast(event.context, 'Enter Valid Email/Password');

      return state.copyWith(stauts: false, isLoading: false);
    }, (success) {
      if (success.status == true) {
        print(success.data);
        return state.copyWith(isLoading: false, addressList: success.data!);
      } else {
        return state.copyWith(stauts: false, isLoading: false);
      }
    });

    emit(_state);
  }

  getOrders(GetOrders event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(isLoading: true));

    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    final result = await profileRepo.getOrders(userId, 1);

    final _state = result.fold((failure) {
      // toast(event.context, 'Enter Valid Email/Password');

      return state.copyWith(stauts: false, isLoading: false);
    }, (success) {
      if (success.status == true) {
        return state.copyWith(isLoading: false, ordersList: success.data!);
      } else {
        return state.copyWith(stauts: false, isLoading: false);
      }
    });

    emit(_state);
  }

  deleteAddress(DeleteAddress event, Emitter<ProfileState> emit) async {
    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    final result = await profileRepo.deleteAddress(userId, event.addressId);

    final _state = result.fold((failure) {
      if (failure is ServerFailure) {
        // Handle server failure here
        // You can access the error message using failure.errorMessage
        // toast(event.context, failure.errorResponse.message.toString());
        print('Server Error: ${failure.errorResponse.message.toString()}');
        return state.copyWith(
          stauts: false,
        );
      } else {
        // Handle other failure cases here if needed
        return state; // Return the current state unchanged
      }
      // return state.copyWith(
      //   stauts: false,
      // );
    }, (success) {
      if (success.status == true) {
        List<AddressData> addresses = List.from(state.addressList);
        inspect(addresses);
        AddressData removeAddress = addresses
            .where((element) => element.addressId.toString() == event.addressId)
            .first;
        addresses.remove(removeAddress);

        return state.copyWith(addressList: addresses);
      } else {
        return state.copyWith(
          stauts: false,
        );
      }
    });

    emit(_state);
  }

  updateProfileData(UpdateProfileData event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(isLoading: true));

    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    // if ((event.newPassword?.length ?? 0) < 6) {
    //   toast(event.context, 'Password Should be 6 characters');
    //   emit(state.copyWith(isLoading: false));
    //   return;
    // }

    final result = await cartRepo.customerDataUpdate(
        userId, event.userName, event.email,
        newPassword: event.newPassword);

    inspect(result);
    final _state = result.fold((failure) {
      toast(event.context, 'The given data was invalid');

      return state.copyWith(stauts: false, isLoading: false);
    }, (success) {
      if (success.status == true) {
        SharedPreferencesManager.setString(
            SharedPreferencesManager.email, event.email);
        SharedPreferencesManager.setString(
            SharedPreferencesManager.userName, event.userName);

        Navigator.of(event.context).pop();

        return state.copyWith(
          profileDetails: state.profileDetails?.copyWith(
              customerEmail: event.email, customerName: event.userName),
          userName: event.userName,
          email: event.email,
          isLoading: false,
        );
      } else {
        toast(event.context, success.message.toString());
        return state.copyWith(stauts: false, isLoading: false);
      }
    });

    emit(_state);
  }

  addAddress(AddAddressEvent event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(isLoading: true));

    // await emailPasswordValidator(event.email, event.password, event.context);
    if (event.firstName.isEmpty) {
      toast(event.context, 'First Name Field Is Empty');
      emit(state.copyWith(isLoading: false));
      return;
    } else if (event.lastName.isEmpty) {
      toast(event.context, 'Last Name Field Is Empty');
      emit(state.copyWith(isLoading: false));
      return;
    } else if (event.streetName.isEmpty) {
      toast(event.context, 'Street Name Field Is Empty ');
      emit(state.copyWith(isLoading: false));
      return;
    } else if (event.buildingName.isEmpty) {
      toast(event.context, 'Apartment Name Field Is Empty');
      emit(state.copyWith(isLoading: false));
      return;
    } else if (event.buildingNumber.isEmpty) {
      toast(event.context, 'Flat Number Field Is Empty');
      emit(state.copyWith(isLoading: false));
      return;
    }
    String lat = event.lat != ''
        ? event.lat
        : await SharedPreferencesManager.getString(
                SharedPreferencesManager.lat) ??
            '';
    String long = event.long != ''
        ? event.long
        : await SharedPreferencesManager.getString(
                SharedPreferencesManager.long) ??
            '';

    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    final result = await profileRepo.addAddress(
        userId,
        event.firstName,
        event.lastName,
        event.buildingName,
        event.buildingNumber,
        event.streetName,
        event.contactNumber,
        lat,
        long,
        1,
        id: event.id);

    final _state = result.fold((failure) {
      toast(event.context, 'The given data was invalid');

      return state.copyWith(stauts: false, isLoading: false);
    }, (success) {
      if (success.status == true) {
        // toast(event.context, 'The given data was invalid');
        // Navigator.of(event.context).pushNamedAndRemoveUntil(
        //    s, (Route<dynamic> route) => false);

        SharedPreferencesManager.setString(SharedPreferencesManager.lat, lat);
        SharedPreferencesManager.setString(SharedPreferencesManager.long, long);
        SharedPreferencesManager.setString(
            SharedPreferencesManager.firstName, event.firstName);
        SharedPreferencesManager.setString(
            SharedPreferencesManager.lastName, event.lastName);
        SharedPreferencesManager.setString(
            SharedPreferencesManager.apartment, event.buildingName);
        SharedPreferencesManager.setString(
            SharedPreferencesManager.flatNo, event.buildingNumber);
        SharedPreferencesManager.setString(
            SharedPreferencesManager.street, event.streetName);

// for adding address from checkout page
        if (event.from == 'checkout') {
          event.context
              .read<OrderBloc>()
              .add(Checkout(event.context, from: 'checkout'));
          return state.copyWith(
            isLoading: false,
          );
        }

// for editing address

        if (event.id != null) {
          List<AddressData> addresses = state.addressList.map((e) {
            if (e.addressId.toString() == event.id.toString()) {
              return e.copyWith(
                  firstName: event.firstName,
                  lastName: event.lastName,
                  streetName: event.streetName,
                  buildingName: event.buildingName,
                  buildingNo: event.buildingNumber,
                  contactNumber: event.contactNumber,
                  isDefault:
                      1); // Use the new instance returned by copyWith./ Use the new instance returned by copyWith.
            } else {
              return e.copyWith(
                  isDefault: 0); // Use the new instance returned by copyWith.
            }
          }).toList();
          Navigator.of(event.context)
              .popUntil(ModalRoute.withName(MyAddress.routeMyAddress));
          return state.copyWith(isLoading: false, addressList: addresses);
        }
        BlocProvider.of<ProfileBloc>(event.context).add(GetAddress());

        Navigator.of(event.context)
            .popUntil(ModalRoute.withName(MyAddress.routeMyAddress));

        return state.copyWith(
          isLoading: false,
        );
      } else {
        toast(event.context, success.message.toString());
        return state.copyWith(stauts: false, isLoading: false);
      }
    });

    emit(_state);
  }

  setDefaultAddress(SetDefaultAddress event, Emitter<ProfileState> emit) async {
    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';
    final result = await profileRepo.setDefaultAddress(userId, event.addressId);

    final _state = result.fold((failure) {
      if (failure is ServerFailure) {
        print('Server Error: ${failure.errorResponse.message.toString()}');
        return state.copyWith(
          stauts: false,
        );
      } else {
        // Handle other failure cases here if needed
        return state; // Return the current state unchanged
      }
    }, (success) {
      if (success.status == true) {
        List<AddressData> addresses = state.addressList.map((e) {
          if (e.addressId.toString() == event.addressId) {
            SharedPreferencesManager.setString(
                SharedPreferencesManager.lat, e.latitude!);
            SharedPreferencesManager.setString(
                SharedPreferencesManager.long, e.longitude!);
            SharedPreferencesManager.setString(
                SharedPreferencesManager.firstName, e.firstName!);
            SharedPreferencesManager.setString(
                SharedPreferencesManager.lastName, e.lastName!);
            SharedPreferencesManager.setString(
                SharedPreferencesManager.apartment, e.buildingName!);
            SharedPreferencesManager.setString(
                SharedPreferencesManager.flatNo, e.buildingNo!);
            SharedPreferencesManager.setString(
                SharedPreferencesManager.street, e.streetName!);

            BlocProvider.of<DashBoradBloc>(event.context)
                .add(ChangeLoactionNameFromMyAddress(e.buildingName ?? ''));

            return e.copyWith(
                isDefault: 1); // Use the new instance returned by copyWith.
          } else {
            return e.copyWith(
                isDefault: 0); // Use the new instance returned by copyWith.
          }
        }).toList();
        inspect(addresses);

        return state.copyWith(addressList: addresses);
      } else {
        return state.copyWith(
          stauts: false,
        );
      }
    });

    emit(_state);
  }

  logout(Logout event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(isLoading: true));

    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';
    final deviceToken = await SharedPreferencesManager.getString(
            SharedPreferencesManager.fcmToken) ??
        '';
    final deviceType = await SharedPreferencesManager.getString(
            SharedPreferencesManager.deviceType) ??
        '';

    final result = await profileRepo.logout(userId, deviceToken, deviceType);

    result.fold((failure) {
      print(failure.toString());
      return emit(state.copyWith(stauts: false, isLoading: false));
    }, (success) async {
      if (success.status == true) {
        print(success.status);
        SharedPreferences preferences = await SharedPreferences.getInstance();
        await preferences.clear();
        BlocProvider.of<CartBloc>(event.context).add(ClearCartAndWishList());
        BlocProvider.of<DashBoradBloc>(event.context).add(ClearLocation());
        Navigator.of(event.context).pushNamedAndRemoveUntil(
            HomeContainer.routeHomeContainer, (val) => false);
        return emit(state.copyWith(
          isLoading: false,
        ));
      } else {
        return emit(state.copyWith(isLoading: false));
      }
    });
  }

  cancelOrder(CancelOrder event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(isLoading: true));

    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    final result =
        await profileRepo.cancelOrder(userId, event.orderId, event.secretKey);

    result.fold((failure) {
      print(failure.toString());
      return emit(state.copyWith(stauts: false, isLoading: false));
    }, (success) async {
      print(success);
      if (success.status == true) {
        List<Product>? updatedOrderDetailsProduct =
            state.orderDetails?.data?.products?.map((e) {
          return e.copyWith(
              cancelledDate: '',
              orderStatus:
                  'Cancelled'); // Use the new instance returned by copyWith.
        }).toList();

        return emit(state.copyWith(
            isLoading: false,
            orderDetails: state.orderDetails?.copyWith(
                data: state.orderDetails?.data?.copyWith(
                    isCancellable: false,
                    // orderFinalAmount: 0,
                    cancelledAmount: state.orderDetails?.data?.orderFinalAmount,
                    products: updatedOrderDetailsProduct))));
      } else {
        return emit(state.copyWith(isLoading: false));
      }
    });
  }

  cancelItem(CancelItem event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(isLoading: true));

    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    final result = await profileRepo.cancelItem(userId, event.orderProductId);

    result.fold((failure) {
      print(failure.toString());
      return emit(state.copyWith(stauts: false, isLoading: false));
    }, (success) async {
      if (success.status == true) {
        List<Product>? updatedOrderDetailsProduct =
            state.orderDetails?.data?.products?.map((e) {
          if (event.orderProductId == e.orderProductId.toString()) {
            return e.copyWith(cancelledDate: '', orderStatus: 'Cancelled');
          } else {
            return e;
          }
        }).toList();
        return emit(state.copyWith(
          orderDetails: state.orderDetails?.copyWith(
              data: state.orderDetails?.data?.copyWith(
                  products: updatedOrderDetailsProduct,
                  isCancellable: false,
                  vat: success.vat,
                  cancelledAmount: success.cancelledAmount,
                  orderFinalAmount: success.orderFinalAmount,
                  orderSubTotal: success.orderSubTotal)),
          isLoading: false,
        ));
      } else {
        return emit(state.copyWith(isLoading: false));
      }
    });
  }

  getOrderReturnOptions(
      GetOrderReturnOptions event, Emitter<ProfileState> emit) async {
    // emit(state.copyWith(isLoading: true));

    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    final result =
        await profileRepo.getOrderReturnOptions(userId, event.orderProductId);

    result.fold((failure) {
      print(failure.toString());
      return emit(state.copyWith(stauts: false, isLoading: false));
    }, (success) async {
      if (success.status == true) {
        return emit(state.copyWith(
            returnOptionDialog: true, orderReturnOptionModel: success));
      } else {
        return emit(state.copyWith(isLoading: false));
      }
    });
  }

  returnOrder(ReturnOrder event, Emitter<ProfileState> emit) async {
    // emit(state.copyWith(isLoading: true));

    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    final result = await profileRepo.returnOrder(userId, event.returnType,
        event.reason, event.orderProductId, event.description);

    result.fold((failure) {
      print(failure.toString());
      return emit(state.copyWith(stauts: false, isLoading: false));
    }, (success) async {
      if (success.status == true) {
        Navigator.of(event.context).pop();
        return emit(state.copyWith(returnOptionDialog: false));
      } else {
        return emit(state.copyWith(isLoading: false));
      }
    });
  }

  cancelReturnDialogBox(
      CancelReturnDialogBox event, Emitter<ProfileState> emit) async {
    return emit(state.copyWith(isLoading: false));
  }

  reviewAndRating(ReviewAndRating event, Emitter<ProfileState> emit) async {
    // emit(state.copyWith(isLoading: true));

    final userId = await SharedPreferencesManager.getString(
            SharedPreferencesManager.userId) ??
        '';

    final result = await profileRepo.reviewAndRating(
        userId, event.endPoint, event.rating, event.productId,
        review: event.review);

    result.fold((failure) {
      print(failure.toString());
      return emit(state.copyWith(stauts: false, isLoading: false));
    }, (success) async {
      if (success.status == true) {
        Navigator.of(event.context).pop();
        return emit(state.copyWith(isLoading: false));
      }
    });
  }
}
