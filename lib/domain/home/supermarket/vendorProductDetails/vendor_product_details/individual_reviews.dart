import 'package:freezed_annotation/freezed_annotation.dart';

import 'five.dart';
import 'four.dart';
import 'one.dart';
import 'three.dart';
import 'two.dart';

part 'individual_reviews.freezed.dart';
part 'individual_reviews.g.dart';

@freezed
class IndividualReviews with _$IndividualReviews {
  factory IndividualReviews({
    Five? five,
    Four? four,
    Three? three,
    Two? two,
    One? one,
  }) = _IndividualReviews;

  factory IndividualReviews.fromJson(Map<String, dynamic> json) =>
      _$IndividualReviewsFromJson(json);
}
