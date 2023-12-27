import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class OrderOnlineInitiatData {
  @JsonKey(name: 'access_code')
  String? accessCode;
  @JsonKey(name: 'encrypted_data')
  String? encryptedData;
  @JsonKey(name: 'order_id')
  int? orderId;

  @JsonKey(name: 'redirect_url')
  String? redirectUrl;

  OrderOnlineInitiatData(
      {this.accessCode, this.encryptedData, this.redirectUrl});

  factory OrderOnlineInitiatData.fromJson(Map<String, dynamic> json) =>
      _$OrderOnlineInitiatDataFromJson(json);

  Map<String, dynamic> toJson() => _$OrderOnlineInitiatDataToJson(this);
}
