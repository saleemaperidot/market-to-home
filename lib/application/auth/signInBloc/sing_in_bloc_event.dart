part of 'sing_in_bloc_bloc.dart';

@freezed
class SingInBlocEvent with _$SingInBlocEvent {
  const factory SingInBlocEvent.loginWithEmailPassword(
          String email, String password, BuildContext context) =
      LoginWithEmailPassword;

  const factory SingInBlocEvent.loginWithPhoneNumber(
          String phoneNumber, BuildContext context, {String? tempUserId}) =
      LoginWithPhoneNumber;

  const factory SingInBlocEvent.resendOtp(BuildContext context) = ResendOtp;

  const factory SingInBlocEvent.verifyOtp(BuildContext context, String otp) =
      VerifyOtp;

  const factory SingInBlocEvent.back(String form) = Back;

  const factory SingInBlocEvent.forgotPassword(
      BuildContext context, String email) = ForgotPasswordEvent;

  const factory SingInBlocEvent.userRegistration(
      BuildContext context,
      String userName,
      String email,
      String password,
      String phoneNumber,
      String referalCode) = UserRegistration;

  const factory SingInBlocEvent.appInitCheck() = AppInitCheck;
}
