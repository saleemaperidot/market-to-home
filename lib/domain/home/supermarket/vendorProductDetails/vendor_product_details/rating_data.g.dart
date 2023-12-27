// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RatingDataImpl _$$RatingDataImplFromJson(Map<String, dynamic> json) =>
    _$RatingDataImpl(
      avgRating: json['avg_rating'] as String?,
      totalReviews: json['total_reviews'] as int?,
      individualReviews: json['individual_reviews'] == null
          ? null
          : IndividualReviews.fromJson(
              json['individual_reviews'] as Map<String, dynamic>),
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RatingDataImplToJson(_$RatingDataImpl instance) =>
    <String, dynamic>{
      'avg_rating': instance.avgRating,
      'total_reviews': instance.totalReviews,
      'individual_reviews': instance.individualReviews,
      'reviews': instance.reviews,
    };
