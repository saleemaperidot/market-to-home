import 'package:json_annotation/json_annotation.dart';

import 'category.dart';
import 'main_banner.dart';
import 'middle_banner.dart';
import 'service.dart';

part 'dash_board_model.g.dart';

@JsonSerializable()
class DashBoardModel {
  bool? status;
  @JsonKey(name: 'main_banners')
  List<MainBanner>? mainBanners;
  @JsonKey(name: 'middle_banners')
  List<MiddleBanner>? middleBanners;
  List<Category>? categories;
  List<Service>? services;

  DashBoardModel({
    this.status,
    this.mainBanners,
    this.middleBanners,
    this.categories,
    this.services,
  });

  factory DashBoardModel.fromJson(Map<String, dynamic> json) {
    return _$DashBoardModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DashBoardModelToJson(this);
}
