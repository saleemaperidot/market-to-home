// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      vendorId: json['vendor_id'] as int?,
      vendorShopName: json['vendor_shop_name'] as String?,
      vendorUrlCode: json['vendor_url_code'] as String?,
      vendorLatitude: json['vendor_latitude'] as String?,
      vendorLongitude: json['vendor_longitude'] as String?,
      vendorShopType: json['vendor_shop_type'] as int?,
      vendorShopImage: json['vendor_shop_image'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
      durationSeconds: json['duration_seconds'] as int?,
      durationText: json['duration_text'] as String?,
      distanceMeters: json['distance_meters'] as int?,
      distanceText: json['distance_text'] as String?,
      avgRating: json['avg_rating'] as String?,
      workingStatus: json['working_status'] as String?,
      vendorLogo: json['vendor_logo'] as String?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'vendor_id': instance.vendorId,
      'vendor_shop_name': instance.vendorShopName,
      'vendor_url_code': instance.vendorUrlCode,
      'vendor_latitude': instance.vendorLatitude,
      'vendor_longitude': instance.vendorLongitude,
      'vendor_shop_type': instance.vendorShopType,
      'vendor_shop_image': instance.vendorShopImage,
      'distance': instance.distance,
      'duration_seconds': instance.durationSeconds,
      'duration_text': instance.durationText,
      'distance_meters': instance.distanceMeters,
      'distance_text': instance.distanceText,
      'avg_rating': instance.avgRating,
      'working_status': instance.workingStatus,
      'vendor_logo': instance.vendorLogo,
    };
