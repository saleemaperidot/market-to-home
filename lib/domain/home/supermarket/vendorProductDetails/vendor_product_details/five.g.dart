// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'five.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FiveImpl _$$FiveImplFromJson(Map<String, dynamic> json) => _$FiveImpl(
      rating: (json['rating'] as num?)?.toDouble(),
      ratingFormatted: json['rating_formatted'] as String?,
      percentage: (json['percentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$FiveImplToJson(_$FiveImpl instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'rating_formatted': instance.ratingFormatted,
      'percentage': instance.percentage,
    };
