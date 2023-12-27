part of 'dash_borad_bloc.dart';

@freezed
class DashBoradEvent with _$DashBoradEvent {
  const factory DashBoradEvent.initial() = Initial;
  const factory DashBoradEvent.categoryClick(
      BuildContext context, String categroySlug) = CategoryClick;
  const factory DashBoradEvent.searchClick(BuildContext context) = SearchClick;
  const factory DashBoradEvent.locationConfirmation(
      BuildContext context, String from, String lat, String long,
      {String? categorySlug}) = LocationConfimation;

        const factory DashBoradEvent.clearLocation() = ClearLocation;

         const factory DashBoradEvent.changeLoactionNameFromMyAddress(String address) = ChangeLoactionNameFromMyAddress;
}
