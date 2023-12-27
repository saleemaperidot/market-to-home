import 'package:freezed_annotation/freezed_annotation.dart';

import 'address.dart';
import 'available_coupon.dart';
import 'coupon_data.dart';
import 'product.dart';
import 'wallet_details.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    @JsonKey(name: 'contains_unavailable_vendor')
    bool? containsUnavailableVendor,
    List<Product>? products,
    @JsonKey(name: 'coupon_data') CouponData? couponData,
    @JsonKey(name: 'prescription_needed') bool? prescriptionNeeded,
    @JsonKey(name: 'insurance_applicable') bool? insuranceApplicable,
    @JsonKey(name: 'products_count') int? productsCount,
    @JsonKey(name: 'sub_total') double? subTotal,
    double? discount,
    @JsonKey(name: 'sub_total_formatted') String? subTotalFormatted,
    @JsonKey(name: 'grand_total') double? grandTotal,
    @JsonKey(name: 'grand_total_formatted') String? grandTotalFormatted,
    @JsonKey(name: 'payable_amount') double? payableAmount,
    @JsonKey(name: 'payable_amount_formatted') String? payableAmountFormatted,
    double? vat,
    @JsonKey(name: 'vat_formatted') String? vatFormatted,
    Address? address,
    @JsonKey(name: 'wallet_point_earns') int? walletPointEarns,
    @JsonKey(name: 'available_coupons') List<AvailableCoupon>? availableCoupons,
    @JsonKey(name: 'wallet_details') WalletDetails? walletDetails,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
