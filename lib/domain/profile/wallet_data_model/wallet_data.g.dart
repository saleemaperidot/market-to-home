// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletData _$WalletDataFromJson(Map<String, dynamic> json) => WalletData(
      walletNumber: json['walletNumber'] as String?,
      balance: json['balance'] as int?,
      transactions: json['transactions'] == null
          ? null
          : Transactions.fromJson(json['transactions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WalletDataToJson(WalletData instance) =>
    <String, dynamic>{
      'walletNumber': instance.walletNumber,
      'balance': instance.balance,
      'transactions': instance.transactions,
    };
