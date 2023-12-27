// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'two.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TwoImpl _$$TwoImplFromJson(Map<String, dynamic> json) => _$TwoImpl(
      rating: (json['rating'] as num?)?.toDouble(),
      ratingFormatted: json['rating_formatted'] as String?,
      percentage: (json['percentage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$TwoImplToJson(_$TwoImpl instance) => <String, dynamic>{
      'rating': instance.rating,
      'rating_formatted': instance.ratingFormatted,
      'percentage': instance.percentage,
    };
