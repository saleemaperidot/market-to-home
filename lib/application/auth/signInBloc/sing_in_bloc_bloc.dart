import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:market_2_home/domain/auth/auth_repo.dart';
import 'package:market_2_home/presentation/auth/auth.dart';
import 'package:market_2_home/presentation/commonWidgets/components.dart';
import 'package:market_2_home/presentation/home_container.dart';

import '../../../domain/core/push_notificatioon_helper.dart';
import '../../../domain/core/shared_pref/shared_pref.dart';

part 'sing_in_bloc_event.dart';
part 'sing_in_bloc_state.dart';
part 'sing_in_bloc_bloc.freezed.dart';

@injectable
class SingInBlocBloc extends Bloc<SingInBlocEvent, SingInBlocState> {
  final AuthRepo _authRepo;
  SingInBlocBloc(this._authRepo) : super(SingInBlocState.initial()) {
    on<LoginWithEmailPassword>((loginWithEmailPassword));
    on<LoginWithPhoneNumber>((loginWithPhoneNumber));
    on<ResendOtp>((resendOtp));
    on<VerifyOtp>((verifyOtp));
    on<Back>((back));
    on<ForgotPasswordEvent>((forgotPassword));
    on<UserRegistration>((userRegistration));
    on<AppInitCheck>((appInitCheck));
  }

  loginWithEmailPassword(
      LoginWithEmailPassword event, Emitter<SingInBlocState> emit) async {
    emit(state.copyWith(isLoading: true));

    // await emailPasswordValidator(event.email, event.password, event.context);
    if (event.email.isEmpty) {
      toast(event.context, 'Email Field Is Empty');
      emit(state.copyWith(isLoading: false));
      return;
    } else if (event.password.isEmpty && event.password.length < 6) {
      toast(event.context, 'Password Field Is Empty / Should be 6 characters');
      emit(state.copyWith(isLoading: false));
      return;
    }

    String? lat =
        await SharedPreferencesManager.getString(SharedPreferencesManager.lat);

    String? long =
        await SharedPreferencesManager.getString(SharedPreferencesManager.long);

    print(lat);
    print(long);

    final result = await _authRepo.loginWithEmailPassword(
        event.email, event.password,
        lat: lat, long: long);

    // print(result.toString());
    final _state = result.fold((failure) {
      toast(event.context, 'Enter Valid Email/Password');

      return state.copyWith(stauts: false, isLoading: false);
    }, (success) {
      if (success.status == true) {
        if (success.addressData?.buildingName != null) {
          SharedPreferencesManager.setString(SharedPreferencesManager.apartment,
              success.addressData?.buildingName ?? '');
          SharedPreferencesManager.setString(SharedPreferencesManager.lat,
              success.addressData?.latitude ?? '');
          SharedPreferencesManager.setString(SharedPreferencesManager.long,
              success.addressData?.longitude ?? '');
        }

        SharedPreferencesManager.setString(SharedPreferencesManager.userId,
            success.data!.customerId.toString());
        SharedPreferencesManager.setString(
            SharedPreferencesManager.email, success.data?.customerEmail ?? '');
        SharedPreferencesManager.setString(
            SharedPreferencesManager.authToken, success.token ?? '');
        Navigator.of(event.context).pushNamedAndRemoveUntil(
            HomeContainer.routeHomeContainer, (val) => false);

        return state.copyWith(isLoading: false);
      } else {
        toast(event.context, success.message.toString());
        return state.copyWith(stauts: false, isLoading: false);
      }
    });

    emit(_state);
  }

  loginWithPhoneNumber(
      LoginWithPhoneNumber event, Emitter<SingInBlocState> emit) async {
    emit(state.copyWith(loginWithNumberIsLoading: true));

    if (event.phoneNumber.isEmpty) {
      toast(event.context, 'Phone Number Field Is Empty');
      emit(state.copyWith(loginWithNumberIsLoading: false));
      return;
    }

    final result = await _authRepo.loginWithNumber(event.phoneNumber,
        tempUserId: event.tempUserId ?? '');

    // print(result.toString());
    final _state = result.fold((failure) {
      toast(event.context, 'Enter Valid Phone Number');

      return state.copyWith(
          loginWithNumberStatus: false, loginWithNumberIsLoading: false);
    }, (success) {
      if (success.status == true) {
        return state.copyWith(
            loginWithNumberIsLoading: false,
            phoneNumber: event.phoneNumber,
            loginOtpView: success.status);
      } else {
        toast(event.context, success.message.toString());
        return state.copyWith(
            loginWithNumberStatus: false, loginWithNumberIsLoading: false);
      }
    });

    emit(_state);
  }

  resendOtp(ResendOtp event, Emitter<SingInBlocState> emit) async {
    final result = await _authRepo.loginWithNumber(state.phoneNumber);
    final _state = result.fold((failure) {
      toast(event.context, 'Failed OTP');
    }, (success) {
      if (success.status == true) {
        toast(event.context, 'OTP Sent Succesfully');
        return state.copyWith(
          loginOtpView: success.status,
        );
      } else {
        toast(event.context, success.message.toString());
      }
    });
  }

  verifyOtp(VerifyOtp event, Emitter<SingInBlocState> emit) async {
    emit(state.copyWith(otpVerifyIsLoading: true));
    if (Platform.isAndroid) {
      await SharedPreferencesManager.setString(
          SharedPreferencesManager.deviceType, 'android');
    } else if (Platform.isIOS) {
      await SharedPreferencesManager.setString(
          SharedPreferencesManager.deviceType, 'ios');
    }
    String fcmToken =
        await PushNotificationHelper.getDeviceTokenToSendNotification();

    String deviceType = await SharedPreferencesManager.getString(
            SharedPreferencesManager.deviceType) ??
        '';

    String? lat =
        await SharedPreferencesManager.getString(SharedPreferencesManager.lat);
    String? long =
        await SharedPreferencesManager.getString(SharedPreferencesManager.long);

    final result = await _authRepo.verifyOtp(
        state.phoneNumber, event.otp, deviceType, fcmToken,
        lat: lat, long: long);

    final _state = result.fold((failure) {
      // toast(event.context, 'Enter Valid Email/Password');

      return state.copyWith(stauts: false, otpVerifyIsLoading: false);
    }, (success) {
      if (success.status == true) {
        if (success.addressData?.buildingName != null) {
          SharedPreferencesManager.setString(SharedPreferencesManager.apartment,
              success.addressData?.buildingName ?? '');
          SharedPreferencesManager.setString(SharedPreferencesManager.lat,
              success.addressData?.latitude ?? '');
          SharedPreferencesManager.setString(SharedPreferencesManager.long,
              success.addressData?.longitude ?? '');
        }

        SharedPreferencesManager.setString(SharedPreferencesManager.userId,
            success.data!.customerId.toString());
        SharedPreferencesManager.setString(
            SharedPreferencesManager.email, success.data?.customerEmail ?? '');
        SharedPreferencesManager.setString(
            SharedPreferencesManager.authToken, success.token ?? '');
        Navigator.of(event.context).pushNamedAndRemoveUntil(
            HomeContainer.routeHomeContainer, (value) => false);

        return state.copyWith(otpVerifyIsLoading: false, loginOtpView: false);
      } else {
        toast(event.context, success.message.toString());
        return state.copyWith(stauts: false, otpVerifyIsLoading: false);
      }
    });

    emit(_state);
  }

  forgotPassword(
      ForgotPasswordEvent event, Emitter<SingInBlocState> emit) async {
    emit(state.copyWith(isLoading: true));

    if (event.email.isEmpty) {
      toast(event.context, 'Email Field Is Empty');
      emit(state.copyWith(isLoading: false));
      return;
    }

    final result = await _authRepo.forgotPassword(event.email);
    print(result.toString());

    final _state = result.fold((failure) {
      toast(event.context, 'Enter Valid Email');

      return state.copyWith(stauts: false, isLoading: false);
    }, (success) {
      if (success.status == true) {
        // toast(event.context, success.message.toString());
        // Navigator.of(event.context).pushNamedAndRemoveUntil(
        //     HomeContainer.routeHomeContainer, (Route<dynamic> route) => false);
        showToast(event.context, 'Successfully Sent Email');
        Navigator.of(event.context).pushNamed(Auth.routeAuth);

        return state.copyWith(isLoading: false);
      } else {
        toast(event.context, success.message.toString());
        return state.copyWith(stauts: false, isLoading: false);
      }
    });

    emit(_state);
  }

  userRegistration(
      UserRegistration event, Emitter<SingInBlocState> emit) async {
    emit(state.copyWith(isLoading: true));

    // await emailPasswordValidator(event.email, event.password, event.context);
    if (event.userName.isEmpty) {
      toast(event.context, 'Full Name Field Is Empty');
      emit(state.copyWith(isLoading: false));
      return;
    } else if (event.email.isEmpty) {
      toast(event.context, 'Email Field Is Empty');
      emit(state.copyWith(isLoading: false));
      return;
    } else if (event.phoneNumber.isEmpty) {
      toast(event.context, 'Phone Number Field Is Empty');
      emit(state.copyWith(isLoading: false));
      return;
    } else if (event.password.isEmpty || event.password.length < 6) {
      toast(event.context, 'Password Field Is Empty / Should be 6 characters');
      emit(state.copyWith(isLoading: false));
      return;
    } else if (event.password.length < 6) {
      toast(event.context, 'Password Should be 6 characters');
      emit(state.copyWith(isLoading: false));
    }
    final result = await _authRepo.userRegisteration(event.userName,
        event.email, event.password, event.phoneNumber, event.referalCode);

    inspect(result);
    final _state = result.fold((failure) {
      toast(event.context, 'The given data was invalid');

      return state.copyWith(stauts: false, isLoading: false);
    }, (success) {
      if (success.status == true) {
        // toast(event.context, 'The given data was invalid');
        // Navigator.of(event.context).pushNamedAndRemoveUntil(
        //     HomeContainer.routeHomeContainer, (Route<dynamic> route) => false);
        // Navigator.of(event.context).pushNamed(HomeContainer.routeHomeContainer);

        BlocProvider.of<SingInBlocBloc>(event.context).add(LoginWithPhoneNumber(
            success.phoneNumber!, event.context,
            tempUserId: success.tempUserId!.toString()));

        return state.copyWith(
            isLoading: false,
            userIdTemp: success.tempUserId!,
            phoneNumber: success.phoneNumber!);
      } else {
        toast(event.context, success.message.toString());
        return state.copyWith(stauts: false, isLoading: false);
      }
    });

    emit(_state);
  }

  back(Back event, Emitter<SingInBlocState> emit) {
    if (event.form == 'registration') {
      emit(state.copyWith(userIdTemp: 0));
    } else if (event.form == 'loginWithOtp') {
      emit(state.copyWith(loginOtpView: false));
    }
  }

  appInitCheck(AppInitCheck event, Emitter<SingInBlocState> emit) async {
    emit(state.copyWith(isLoading: true));
    String lat = await SharedPreferencesManager.getString(
            SharedPreferencesManager.lat) ??
        '';

    if (lat == '') {
      emit(state.copyWith(firstLauch: true, isLoading: false));
    } else {
      emit(state.copyWith(firstLauch: false, isLoading: false));
    }
  }
}

// Future<void> emailPasswordValidator(
//     String email, String password, BuildContext context) async {
//   if (email.isEmpty) {
//     toast(context, 'Email Field Is Empty');
//     return;
//   } else if (password.isEmpty && password.length >= 6) {
//     toast(context, 'Password Field Is Empty');
//     return;
//   }
// }
