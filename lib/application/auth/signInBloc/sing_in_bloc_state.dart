part of 'sing_in_bloc_bloc.dart';

@freezed
class SingInBlocState with _$SingInBlocState {
  const factory SingInBlocState(
      {required bool stauts,
      required bool isLoading,
      required bool firstLauch,
      required bool loginWithNumberStatus,
      required bool loginWithNumberIsLoading,
      required bool otpVerifyIsLoading,
      required int userIdTemp,
      @Default('') String phoneNumber,
      @Default(false) bool loginOtpView}) = _Initial;
  factory SingInBlocState.initial() => const SingInBlocState(
      stauts: false,
      isLoading: false,
      loginWithNumberIsLoading: false,
      loginWithNumberStatus: false,
      otpVerifyIsLoading: false,
      firstLauch: false,
      userIdTemp: 0);
}
