import 'package:json_annotation/json_annotation.dart';

import '../../../profile/myAddress/address_model/datum.dart';
import 'data.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  String? token;
  bool? status;
  Data? data;
  AddressData? addressData;
  String? message;

  LoginResponse(
      {this.token, this.status, this.data, this.message, this.addressData});

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return _$LoginResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
