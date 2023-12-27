import 'package:freezed_annotation/freezed_annotation.dart';

part 'two.freezed.dart';
part 'two.g.dart';

@freezed
class Two with _$Two {
  factory Two({
    double? rating,
    @JsonKey(name: 'rating_formatted') String? ratingFormatted,
    double? percentage,
  }) = _Two;

  factory Two.fromJson(Map<String, dynamic> json) => _$TwoFromJson(json);
}
