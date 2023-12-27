// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WalletDetailsImpl _$$WalletDetailsImplFromJson(Map<String, dynamic> json) =>
    _$WalletDetailsImpl(
      isActive: json['is_active'] as int?,
      balance: (json['balance'] as num?)?.toDouble(),
      redeemablePoints: json['redeemable_points'] as int?,
      balancePoints: (json['balance_points'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
      redeemableCurrency: (json['redeemable_currency'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$WalletDetailsImplToJson(_$WalletDetailsImpl instance) =>
    <String, dynamic>{
      'is_active': instance.isActive,
      'balance': instance.balance,
      'redeemable_points': instance.redeemablePoints,
      'balance_points': instance.balancePoints,
      'currency': instance.currency,
      'redeemable_currency': instance.redeemableCurrency,
    };
