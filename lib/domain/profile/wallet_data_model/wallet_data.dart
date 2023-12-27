import 'package:json_annotation/json_annotation.dart';

import 'transactions.dart';

part 'wallet_data.g.dart';

@JsonSerializable()
class WalletData {
  String? walletNumber;
  int? balance;
  Transactions? transactions;

  WalletData({this.walletNumber, this.balance, this.transactions});

  factory WalletData.fromJson(Map<String, dynamic> json) {
    return _$WalletDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WalletDataToJson(this);
}
