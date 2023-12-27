import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  @JsonKey(name: 'vendor_id')
  int? vendorId;
  @JsonKey(name: 'vendor_shop_name')
  String? vendorShopName;
  @JsonKey(name: 'vendor_url_code')
  String? vendorUrlCode;
  @JsonKey(name: 'vendor_latitude')
  String? vendorLatitude;
  @JsonKey(name: 'vendor_longitude')
  String? vendorLongitude;
  @JsonKey(name: 'vendor_shop_type')
  int? vendorShopType;
  @JsonKey(name: 'vendor_shop_image')
  String? vendorShopImage;
  double? distance;
  @JsonKey(name: 'duration_seconds')
  int? durationSeconds;
  @JsonKey(name: 'duration_text')
  String? durationText;
  @JsonKey(name: 'distance_meters')
  int? distanceMeters;
  @JsonKey(name: 'distance_text')
  String? distanceText;
  @JsonKey(name: 'avg_rating')
  String? avgRating;
  @JsonKey(name: 'working_status')
  String? workingStatus;
  @JsonKey(name: 'vendor_logo')
  String? vendorLogo;

  Datum({
    this.vendorId,
    this.vendorShopName,
    this.vendorUrlCode,
    this.vendorLatitude,
    this.vendorLongitude,
    this.vendorShopType,
    this.vendorShopImage,
    this.distance,
    this.durationSeconds,
    this.durationText,
    this.distanceMeters,
    this.distanceText,
    this.avgRating,
    this.workingStatus,
    this.vendorLogo,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
