// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletDataModel _$WalletDataModelFromJson(Map<String, dynamic> json) =>
    WalletDataModel(
      status: json['status'] as bool?,
      walletData: json['wallet_data'] == null
          ? null
          : WalletData.fromJson(json['wallet_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WalletDataModelToJson(WalletDataModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'wallet_data': instance.walletData,
    };
