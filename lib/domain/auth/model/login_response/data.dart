import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'customer_id')
  int? customerId;
  @JsonKey(name: 'customer_name')
  String? customerName;
  @JsonKey(name: 'customer_house_name')
  String? customerHouseName;
  @JsonKey(name: 'customer_street_address')
  dynamic customerStreetAddress;
  @JsonKey(name: 'customer_country')
  String? customerCountry;
  @JsonKey(name: 'customer_state')
  dynamic customerState;
  @JsonKey(name: 'customer_pin')
  dynamic customerPin;
  @JsonKey(name: 'customer_nearest_location')
  dynamic customerNearestLocation;
  @JsonKey(name: 'customer_building')
  String? customerBuilding;
  @JsonKey(name: 'customer_country_code')
  dynamic customerCountryCode;
  @JsonKey(name: 'customer_phone')
  String? customerPhone;
  @JsonKey(name: 'customer_email')
  String? customerEmail;
  @JsonKey(name: 'customer_password')
  String? customerPassword;
  @JsonKey(name: 'customer_latitude')
  dynamic customerLatitude;
  @JsonKey(name: 'customer_longitude')
  dynamic customerLongitude;
  @JsonKey(name: 'email_verified')
  int? emailVerified;
  @JsonKey(name: 'email_key')
  String? emailKey;
  dynamic otp;
  @JsonKey(name: 'otp_created_at')
  dynamic otpCreatedAt;
  @JsonKey(name: 'otp_verified')
  int? otpVerified;
  @JsonKey(name: 'reg_sms_sent')
  int? regSmsSent;
  @JsonKey(name: 'customer_status')
  int? customerStatus;
  @JsonKey(name: 'customer_ip')
  String? customerIp;
  @JsonKey(name: 'referral_code')
  String? referralCode;
  @JsonKey(name: 'referred_by')
  dynamic referredBy;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'reset_key')
  dynamic resetKey;
  dynamic uuid;

  Data({
    this.customerId,
    this.customerName,
    this.customerHouseName,
    this.customerStreetAddress,
    this.customerCountry,
    this.customerState,
    this.customerPin,
    this.customerNearestLocation,
    this.customerBuilding,
    this.customerCountryCode,
    this.customerPhone,
    this.customerEmail,
    this.customerPassword,
    this.customerLatitude,
    this.customerLongitude,
    this.emailVerified,
    this.emailKey,
    this.otp,
    this.otpCreatedAt,
    this.otpVerified,
    this.regSmsSent,
    this.customerStatus,
    this.customerIp,
    this.referralCode,
    this.referredBy,
    this.createdAt,
    this.resetKey,
    this.uuid,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
