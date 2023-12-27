import 'package:freezed_annotation/freezed_annotation.dart';

part 'return_option.freezed.dart';
part 'return_option.g.dart';

@freezed
class ReturnOption with _$ReturnOption {
  factory ReturnOption({
    int? id,
    String? option,
  }) = _ReturnOption;

  factory ReturnOption.fromJson(Map<String, dynamic> json) =>
      _$ReturnOptionFromJson(json);
}
