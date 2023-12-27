// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'four.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FourImpl _$$FourImplFromJson(Map<String, dynamic> json) => _$FourImpl(
      rating: (json['rating'] as num?)?.toDouble(),
      ratingFormatted: json['rating_formatted'] as String?,
      percentage: (json['percentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$FourImplToJson(_$FourImpl instance) =>
    <String, dynamic>{
      'rating': instance.rating,
      'rating_formatted': instance.ratingFormatted,
      'percentage': instance.percentage,
    };
