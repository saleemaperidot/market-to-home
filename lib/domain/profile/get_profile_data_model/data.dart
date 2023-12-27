import 'package:freezed_annotation/freezed_annotation.dart';

import 'profile_data.dart';
import 'referral_data.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    ProfileData? profileData,
    ReferralData? referralData,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
