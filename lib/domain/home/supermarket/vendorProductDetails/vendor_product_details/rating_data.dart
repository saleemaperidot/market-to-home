import 'package:freezed_annotation/freezed_annotation.dart';

import 'individual_reviews.dart';
import 'review.dart';

part 'rating_data.freezed.dart';
part 'rating_data.g.dart';

@freezed
class RatingData with _$RatingData {
  factory RatingData({
    @JsonKey(name: 'avg_rating') String? avgRating,
    @JsonKey(name: 'total_reviews') int? totalReviews,
    @JsonKey(name: 'individual_reviews') IndividualReviews? individualReviews,
    List<Review>? reviews,
  }) = _RatingData;

  factory RatingData.fromJson(Map<String, dynamic> json) =>
      _$RatingDataFromJson(json);
}
