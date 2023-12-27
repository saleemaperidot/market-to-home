import 'package:json_annotation/json_annotation.dart';

part 'order_data.g.dart';

@JsonSerializable()
class OrderData {
  String? uuid;
  @JsonKey(name: 'order_coupon_discount')
  double? orderCouponDiscount;
  @JsonKey(name: 'order_sub_total')
  double? orderSubTotal;
  @JsonKey(name: 'order_shipping')
  double? orderShipping;
  @JsonKey(name: 'order_final_amount')
  double? orderFinalAmount;
  @JsonKey(name: 'currency_id')
  int? currencyId;
  double? vat;
  @JsonKey(name: 'wallet_used')
  int? walletUsed;
  @JsonKey(name: 'exchange_rate')
  double? exchangeRate;
  @JsonKey(name: 'coupon_id')
  int? couponId;
  @JsonKey(name: 'rule_property_id')
  int? rulePropertyId;
  @JsonKey(name: 'payment_method')
  String? paymentMethod;
  @JsonKey(name: 'customer_id')
  dynamic customerId;
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
  @JsonKey(name: 'billing_order_notes')
  String? billingOrderNotes;
  @JsonKey(name: 'created_ip')
  String? createdIp;
  @JsonKey(name: 'invoice_id')
  String? invoiceId;
  @JsonKey(name: 'secret_key')
  String? secretKey;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'created_time')
  String? createdTime;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @JsonKey(name: 'order_id')
  int? orderId;
  @JsonKey(name: 'order_time')
  String? orderTime;

  OrderData({
    this.uuid,
    this.orderCouponDiscount,
    this.orderSubTotal,
    this.orderShipping,
    this.orderFinalAmount,
    this.currencyId,
    this.vat,
    this.walletUsed,
    this.exchangeRate,
    this.couponId,
    this.rulePropertyId,
    this.paymentMethod,
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
    this.billingOrderNotes,
    this.createdIp,
    this.invoiceId,
    this.secretKey,
    this.createdAt,
    this.createdTime,
    this.updatedAt,
    this.orderId,
  });

  factory OrderData.fromJson(Map<String, dynamic> json) {
    return _$OrderDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrderDataToJson(this);
}
