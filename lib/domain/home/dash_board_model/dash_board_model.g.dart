// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dash_board_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DashBoardModel _$DashBoardModelFromJson(Map<String, dynamic> json) =>
    DashBoardModel(
      status: json['status'] as bool?,
      mainBanners: (json['main_banners'] as List<dynamic>?)
          ?.map((e) => MainBanner.fromJson(e as Map<String, dynamic>))
          .toList(),
      middleBanners: (json['middle_banners'] as List<dynamic>?)
          ?.map((e) => MiddleBanner.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => Service.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DashBoardModelToJson(DashBoardModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'main_banners': instance.mainBanners,
      'middle_banners': instance.middleBanners,
      'categories': instance.categories,
      'services': instance.services,
    };
