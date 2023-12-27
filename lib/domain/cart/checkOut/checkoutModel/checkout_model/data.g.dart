// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      containsUnavailableVendor: json['contains_unavailable_vendor'] as bool?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      couponData: json['coupon_data'] == null
          ? null
          : CouponData.fromJson(json['coupon_data'] as Map<String, dynamic>),
      prescriptionNeeded: json['prescription_needed'] as bool?,
      insuranceApplicable: json['insurance_applicable'] as bool?,
      productsCount: json['products_count'] as int?,
      subTotal: (json['sub_total'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      subTotalFormatted: json['sub_total_formatted'] as String?,
      grandTotal: (json['grand_total'] as num?)?.toDouble(),
      grandTotalFormatted: json['grand_total_formatted'] as String?,
      payableAmount: (json['payable_amount'] as num?)?.toDouble(),
      payableAmountFormatted: json['payable_amount_formatted'] as String?,
      vat: (json['vat'] as num?)?.toDouble(),
      vatFormatted: json['vat_formatted'] as String?,
      address: json['address'] == null
          ? null
          : Address.fromJson(json['address'] as Map<String, dynamic>),
      walletPointEarns: json['wallet_point_earns'] as int?,
      availableCoupons: (json['available_coupons'] as List<dynamic>?)
          ?.map((e) => AvailableCoupon.fromJson(e as Map<String, dynamic>))
          .toList(),
      walletDetails: json['wallet_details'] == null
          ? null
          : WalletDetails.fromJson(
              json['wallet_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'contains_unavailable_vendor': instance.containsUnavailableVendor,
      'products': instance.products,
      'coupon_data': instance.couponData,
      'prescription_needed': instance.prescriptionNeeded,
      'insurance_applicable': instance.insuranceApplicable,
      'products_count': instance.productsCount,
      'sub_total': instance.subTotal,
      'discount': instance.discount,
      'sub_total_formatted': instance.subTotalFormatted,
      'grand_total': instance.grandTotal,
      'grand_total_formatted': instance.grandTotalFormatted,
      'payable_amount': instance.payableAmount,
      'payable_amount_formatted': instance.payableAmountFormatted,
      'vat': instance.vat,
      'vat_formatted': instance.vatFormatted,
      'address': instance.address,
      'wallet_point_earns': instance.walletPointEarns,
      'available_coupons': instance.availableCoupons,
      'wallet_details': instance.walletDetails,
    };
