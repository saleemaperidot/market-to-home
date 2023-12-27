part of 'dash_borad_bloc.dart';

@freezed
class DashBoradState with _$DashBoradState {
  const factory DashBoradState.initial({
    @Default(false) bool stauts,
    @Default(false) bool isLoading,
    @Default('') String addressName,
    @Default([]) List<MainBanner> mainBanner,
    @Default([]) List<MiddleBanner> middleBanners,
    @Default([]) List<Category> categories,
    @Default([]) List<Service> services,
  }) = _Initials;
}
