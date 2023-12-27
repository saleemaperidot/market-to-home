import 'package:freezed_annotation/freezed_annotation.dart';

part 'three.freezed.dart';
part 'three.g.dart';

@freezed
class Three with _$Three {
  factory Three({
    double? rating,
    @JsonKey(name: 'rating_formatted') String? ratingFormatted,
    double? percentage,
  }) = _Three;

  factory Three.fromJson(Map<String, dynamic> json) => _$ThreeFromJson(json);
}
