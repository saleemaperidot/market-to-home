import 'package:freezed_annotation/freezed_annotation.dart';

part 'referral_data.freezed.dart';
part 'referral_data.g.dart';

@freezed
class ReferralData with _$ReferralData {
  factory ReferralData({
    String? referralCode,
    dynamic referredBy,
    int? totalReferralCount,
    String? referralReward,
  }) = _ReferralData;

  factory ReferralData.fromJson(Map<String, dynamic> json) =>
      _$ReferralDataFromJson(json);
}
