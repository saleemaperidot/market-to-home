import 'package:json_annotation/json_annotation.dart';

part 'middle_banner.g.dart';

@JsonSerializable()
class MiddleBanner {
  String? title;
  String? image;
  String? action;

  MiddleBanner({this.title, this.image, this.action});

  factory MiddleBanner.fromJson(Map<String, dynamic> json) {
    return _$MiddleBannerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MiddleBannerToJson(this);
}
