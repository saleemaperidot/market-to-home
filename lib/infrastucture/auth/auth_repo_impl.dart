import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:market_2_home/domain/auth/auth_repo.dart';
import 'package:market_2_home/domain/auth/model/login_with_otp_response/login_with_otp_response/login_with_otp_response.dart';
import 'package:market_2_home/domain/auth/model/registration_response/registration_response.dart';
import 'package:market_2_home/domain/common/common_response/common_response.dart';
import 'package:market_2_home/domain/core/constant.dart';
import 'package:market_2_home/domain/error/error_response/erorr_response/erorr_response.dart';

import '../../domain/auth/model/login_response/login_response.dart';
import '../../domain/main_failures/main_failures.dart';

@LazySingleton(as: AuthRepo)
class AuthRepoImpl implements AuthRepo {
  @override
  Future<Either<MainFailure, LoginResponse>> loginWithEmailPassword(
      String email, String password,
      {String? lat, String? long}) async {
    final formData = FormData.fromMap({
      'email': email,
      'password': password,
      'latitude': lat,
      'longitude': long
    });

    try {
      // for http client call
      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.login,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json'},
        ),
      );
      print(response);
      if (response.statusCode == 200) {
        // if request successfull pass data to model class
        final result = LoginResponse.fromJson(response.data);
        log(result.toString());
// right object comes from dart package .it wrap result is successfull
        return Right(result);
      } else {
        // wrapper class for if if request faailed pass thourgh this wrappper class
        return Left(MainFailure.serverFailure(response.data));
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, LoginWithOtpResponse>> loginWithNumber(
      String number,
      {String? tempUserId}) async {
    log(number + tempUserId.toString());
    final formData = FormData.fromMap(
        {'phone_number': number, 'temp_user_id': tempUserId ?? ''});

    try {
      // for http client call
      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.loginWithOTP,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json'},
        ),
      );

      if (response.statusCode == 200) {
        // if request successfull pass data to model class
        final result = LoginWithOtpResponse.fromJson(response.data);
        log(result.toJson().toString());

// right object comes from dart package .it wrap result is successfull
        return Right(result);
      } else {
        // wrapper class for if if request faailed pass thourgh this wrappper class
        return Left(MainFailure.serverFailure(response.data));
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, LoginResponse>> verifyOtp(
      String phoneNumber, String otp, String deviceType, String deviceToken,
      {String? lat, String? long}) async {
    print('device type' + deviceType);
    print('device type' + deviceToken);
    final formData = FormData.fromMap({
      'phone_number': phoneNumber,
      'otp': otp,
      'device_type': deviceType,
      'device_token': deviceToken,
      'latitude': lat,
      'longitude': long
    });

    try {
      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.validateOTP,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json'},
        ),
      );

      print(response);
      if (response.statusCode == 200) {
        final result = LoginResponse.fromJson(response.data);

        return Right(result);
      } else {
        return Left(MainFailure.serverFailure(response.data));
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, CommonResponse>> forgotPassword(
      String email) async {
    final formData = FormData.fromMap({
      'email': email,
    });

    try {
      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.forgotPassword,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json'},
        ),
      );

      if (response.statusCode == 200) {
        final result = CommonResponse.fromJson(response.data);

        return Right(result);
      } else {
        return Left(
            MainFailure.serverFailure(ErorrResponse.fromJson(response.data)));
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, RegistrationResponse>> userRegisteration(
      String username,
      String email,
      String password,
      String phoneNumber,
      String referalCode) async {
    final formData = FormData.fromMap({
      'customer_name': username,
      'customer_email': email,
      'customer_password': password,
      'customer_phone': '971$phoneNumber',
      'referral_code': referalCode
    });
    print(formData.fields);
    try {
      // for http client call
      final Response response = await Dio(BaseOptions()).post(
        Apis.baseUrl + Apis.register,
        data: formData,
        options: Options(
          headers: {'Accept': 'application/json'},
        ),
      );

      if (response.statusCode == 200) {
        // if request successfull pass data to model class
        final result = RegistrationResponse.fromJson(response.data);
        log(result.toString());
// right object comes from dart package .it wrap result is successfull
        return Right(result);
      } else {
        // wrapper class for if if request faailed pass thourgh this wrappper class
        return Left(MainFailure.serverFailure(response.data));
      }
    } catch (e) {
      log(e.toString());

      return const Left(MainFailure.clientFailure());
    }
  }
}
