// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OneImpl _$$OneImplFromJson(Map<String, dynamic> json) => _$OneImpl(
      rating: (json['rating'] as num?)?.toDouble(),
      ratingFormatted: json['rating_formatted'] as String?,
      percentage: (json['percentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$OneImplToJson(_$OneImpl instance) => <String, dynamic>{
      'rating': instance.rating,
      'rating_formatted': instance.ratingFormatted,
      'percentage': instance.percentage,
    };
