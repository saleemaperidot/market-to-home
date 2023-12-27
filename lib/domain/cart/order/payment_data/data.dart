import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'access_code')
  String? accessCode;
  @JsonKey(name: 'encrypted_data')
  String? encryptedData;
  @JsonKey(name: 'redirect_url')
  String? redirectUrl;

  Data({this.accessCode, this.encryptedData, this.redirectUrl});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
