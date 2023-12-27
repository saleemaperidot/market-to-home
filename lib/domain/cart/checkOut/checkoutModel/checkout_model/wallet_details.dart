import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_details.freezed.dart';
part 'wallet_details.g.dart';

@freezed
class WalletDetails with _$WalletDetails {
  factory WalletDetails({
    @JsonKey(name: 'is_active') int? isActive,
    double? balance,
    @JsonKey(name: 'redeemable_points') int? redeemablePoints,
    @JsonKey(name: 'balance_points') double? balancePoints,
    String? currency,
    @JsonKey(name: 'redeemable_currency') double? redeemableCurrency,
  }) = _WalletDetails;

  factory WalletDetails.fromJson(Map<String, dynamic> json) =>
      _$WalletDetailsFromJson(json);
}
