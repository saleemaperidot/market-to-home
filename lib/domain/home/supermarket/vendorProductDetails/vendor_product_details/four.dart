import 'package:freezed_annotation/freezed_annotation.dart';

part 'four.freezed.dart';
part 'four.g.dart';

@freezed
class Four with _$Four {
  factory Four({
    double? rating,
    @JsonKey(name: 'rating_formatted') String? ratingFormatted,
    double? percentage,
  }) = _Four;

  factory Four.fromJson(Map<String, dynamic> json) => _$FourFromJson(json);
}
