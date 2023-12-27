import 'package:freezed_annotation/freezed_annotation.dart';

part 'five.freezed.dart';
part 'five.g.dart';

@freezed
class Five with _$Five {
  factory Five({
    double? rating,
    @JsonKey(name: 'rating_formatted') String? ratingFormatted,
    double? percentage,
  }) = _Five;

  factory Five.fromJson(Map<String, dynamic> json) => _$FiveFromJson(json);
}
