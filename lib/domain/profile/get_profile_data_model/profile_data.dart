import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_data.freezed.dart';
part 'profile_data.g.dart';

@freezed
class ProfileData with _$ProfileData {
  factory ProfileData({
    String? customerName,
    String? customerMobile,
    String? customerEmail,
    String? customerLatitude,
    String? customerLongitude,
    String? referralCode,
    dynamic referredBy,
    @JsonKey(name: 'member_since') String? memberSince,
  }) = _ProfileData;

  factory ProfileData.fromJson(Map<String, dynamic> json) =>
      _$ProfileDataFromJson(json);
}
