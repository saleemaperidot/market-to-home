import 'package:freezed_annotation/freezed_annotation.dart';

part 'one.freezed.dart';
part 'one.g.dart';

@freezed
class One with _$One {
  factory One({
    double? rating,
    @JsonKey(name: 'rating_formatted') String? ratingFormatted,
    double? percentage,
  }) = _One;

  factory One.fromJson(Map<String, dynamic> json) => _$OneFromJson(json);
}
