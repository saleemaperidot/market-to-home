// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'three.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThreeImpl _$$ThreeImplFromJson(Map<String, dynamic> json) => _$ThreeImpl(
      rating: (json['rating'] as num?)?.toDouble(),
      ratingFormatted: json['rating_formatted'] as String?,
      percentage: (json['percentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ThreeImplToJson(_$ThreeImpl instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'rating_formatted': instance.ratingFormatted,
      'percentage': instance.percentage,
    };
