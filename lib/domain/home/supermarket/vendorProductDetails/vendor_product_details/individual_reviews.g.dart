// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'individual_reviews.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndividualReviewsImpl _$$IndividualReviewsImplFromJson(
        Map<String, dynamic> json) =>
    _$IndividualReviewsImpl(
      five: json['five'] == null
          ? null
          : Five.fromJson(json['five'] as Map<String, dynamic>),
      four: json['four'] == null
          ? null
          : Four.fromJson(json['four'] as Map<String, dynamic>),
      three: json['three'] == null
          ? null
          : Three.fromJson(json['three'] as Map<String, dynamic>),
      two: json['two'] == null
          ? null
          : Two.fromJson(json['two'] as Map<String, dynamic>),
      one: json['one'] == null
          ? null
          : One.fromJson(json['one'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$IndividualReviewsImplToJson(
        _$IndividualReviewsImpl instance) =>
    <String, dynamic>{
      'five': instance.five,
      'four': instance.four,
      'three': instance.three,
      'two': instance.two,
      'one': instance.one,
    };
