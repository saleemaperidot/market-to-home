import 'package:json_annotation/json_annotation.dart';

import 'wallet_data.dart';

part 'wallet_data_model.g.dart';

@JsonSerializable()
class WalletDataModel {
  bool? status;
  @JsonKey(name: 'wallet_data')
  WalletData? walletData;

  WalletDataModel({this.status, this.walletData});

  factory WalletDataModel.fromJson(Map<String, dynamic> json) {
    return _$WalletDataModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WalletDataModelToJson(this);
}
