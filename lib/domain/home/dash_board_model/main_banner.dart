import 'package:json_annotation/json_annotation.dart';

part 'main_banner.g.dart';

@JsonSerializable()
class MainBanner {
  String? title;
  String? image;
  String? action;

  MainBanner({this.title, this.image, this.action});

  factory MainBanner.fromJson(Map<String, dynamic> json) {
    return _$MainBannerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MainBannerToJson(this);
}
