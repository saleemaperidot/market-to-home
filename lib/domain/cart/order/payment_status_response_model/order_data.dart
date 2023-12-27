import 'package:json_annotation/json_annotation.dart';

part 'order_data.g.dart';

@JsonSerializable()
class OrderData {
  @JsonKey(name: 'order_id')
  int? orderId;
  String? uuid;
  @JsonKey(name: 'invoice_id')
  String? invoiceId;
  @JsonKey(name: 'secret_key')
  String? secretKey;
  @JsonKey(name: 'shop_type_id')
  dynamic shopTypeId;
  @JsonKey(name: 'order_sub_total')
  double? orderSubTotal;
  @JsonKey(name: 'order_shipping')
  int? orderShipping;
  double? vat;
  @JsonKey(name: 'wallet_used')
  int? walletUsed;
  @JsonKey(name: 'order_coupon_discount')
  int? orderCouponDiscount;
  @JsonKey(name: 'order_final_amount')
  double? orderFinalAmount;
  @JsonKey(name: 'exchange_rate')
  int? exchangeRate;
  @JsonKey(name: 'currency_id')
  int? currencyId;
  @JsonKey(name: 'coupon_id')
  int? couponId;
  @JsonKey(name: 'rule_property_id')
  int? rulePropertyId;
  @JsonKey(name: 'payment_method')
  String? paymentMethod;
  @JsonKey(name: 'payment_status')
  String? paymentStatus;
  @JsonKey(name: 'customer_id')
  int? customerId;
  @JsonKey(name: 'billing_first_name')
  String? billingFirstName;
  @JsonKey(name: 'billing_last_name')
  String? billingLastName;
  @JsonKey(name: 'billing_country')
  String? billingCountry;
  @JsonKey(name: 'billing_street_name')
  String? billingStreetName;
  @JsonKey(name: 'billing_apartment_details')
  String? billingApartmentDetails;
  @JsonKey(name: 'building_no')
  String? buildingNo;
  @JsonKey(name: 'building_name')
  String? buildingName;
  @JsonKey(name: 'building_location')
  String? buildingLocation;
  @JsonKey(name: 'building_emirate')
  String? buildingEmirate;
  @JsonKey(name: 'billing_pincode')
  String? billingPincode;
  @JsonKey(name: 'billing_town_city')
  String? billingTownCity;
  @JsonKey(name: 'billing_email_id')
  String? billingEmailId;
  @JsonKey(name: 'billing_phone')
  String? billingPhone;
  @JsonKey(name: 'billing_latitude')
  dynamic billingLatitude;
  @JsonKey(name: 'billing_longitude')
  dynamic billingLongitude;
  @JsonKey(name: 'billing_order_notes')
  String? billingOrderNotes;
  @JsonKey(name: 'payment_order_number')
  String? paymentOrderNumber;
  @JsonKey(name: 'created_time')
  String? createdTime;
  @JsonKey(name: 'time_period')
  dynamic timePeriod;
  @JsonKey(name: 'transaction_amount')
  dynamic transactionAmount;
  @JsonKey(name: 'transaction_status')
  dynamic transactionStatus;
  @JsonKey(name: 'created_ip')
  String? createdIp;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;

  OrderData({
    this.orderId,
    this.uuid,
    this.invoiceId,
    this.secretKey,
    this.shopTypeId,
    this.orderSubTotal,
    this.orderShipping,
    this.vat,
    this.walletUsed,
    this.orderCouponDiscount,
    this.orderFinalAmount,
    this.exchangeRate,
    this.currencyId,
    this.couponId,
    this.rulePropertyId,
    this.paymentMethod,
    this.paymentStatus,
    this.customerId,
    this.billingFirstName,
    this.billingLastName,
    this.billingCountry,
    this.billingStreetName,
    this.billingApartmentDetails,
    this.buildingNo,
    this.buildingName,
    this.buildingLocation,
    this.buildingEmirate,
    this.billingPincode,
    this.billingTownCity,
    this.billingEmailId,
    this.billingPhone,
    this.billingLatitude,
    this.billingLongitude,
    this.billingOrderNotes,
    this.paymentOrderNumber,
    this.createdTime,
    this.timePeriod,
    this.transactionAmount,
    this.transactionStatus,
    this.createdIp,
    this.createdAt,
    this.updatedAt,
  });

  factory OrderData.fromJson(Map<String, dynamic> json) {
    return _$OrderDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrderDataToJson(this);
}
