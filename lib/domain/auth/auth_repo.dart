import 'package:dartz/dartz.dart';
import 'package:market_2_home/application/auth/signInBloc/sing_in_bloc_bloc.dart';
import 'package:market_2_home/domain/auth/model/login_response/login_response.dart';
import 'package:market_2_home/domain/auth/model/login_with_otp_response/login_with_otp_response/login_with_otp_response.dart';
import 'package:market_2_home/domain/auth/model/registration_response/registration_response.dart';
import 'package:market_2_home/domain/common/common_response/common_response.dart';

import '../main_failures/main_failures.dart';

// this abstract call take all function call related to home screen and it can be impliment by home repository
abstract class AuthRepo {
  // which means the  method is asynchronous and can return either a mainfailure or a homeresponse wrapped in an Either monad.
  Future<Either<MainFailure, LoginResponse>> loginWithEmailPassword(
      String email, String password,
      {String? lat, String? long});

  Future<Either<MainFailure, LoginWithOtpResponse>> loginWithNumber(
      String number,
      {String tempUserId});
  Future<Either<MainFailure, LoginResponse>> verifyOtp(
      String phoneNumber, String otp, String deviceType, String deviceToken,
      {String? lat, String? long});
  Future<Either<MainFailure, CommonResponse>> forgotPassword(String email);

  Future<Either<MainFailure, RegistrationResponse>> userRegisteration(
      String username,
      String email,
      String password,
      String phoneNumber,
      String referalCode);
}
