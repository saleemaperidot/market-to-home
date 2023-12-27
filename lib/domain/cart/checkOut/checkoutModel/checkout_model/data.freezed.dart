// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'contains_unavailable_vendor')
  bool? get containsUnavailableVendor => throw _privateConstructorUsedError;
  List<Product>? get products => throw _privateConstructorUsedError;
  @JsonKey(name: 'coupon_data')
  CouponData? get couponData => throw _privateConstructorUsedError;
  @JsonKey(name: 'prescription_needed')
  bool? get prescriptionNeeded => throw _privateConstructorUsedError;
  @JsonKey(name: 'insurance_applicable')
  bool? get insuranceApplicable => throw _privateConstructorUsedError;
  @JsonKey(name: 'products_count')
  int? get productsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_total')
  double? get subTotal => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_total_formatted')
  String? get subTotalFormatted => throw _privateConstructorUsedError;
  @JsonKey(name: 'grand_total')
  double? get grandTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'grand_total_formatted')
  String? get grandTotalFormatted => throw _privateConstructorUsedError;
  @JsonKey(name: 'payable_amount')
  double? get payableAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'payable_amount_formatted')
  String? get payableAmountFormatted => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: 'vat_formatted')
  String? get vatFormatted => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'wallet_point_earns')
  int? get walletPointEarns => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_coupons')
  List<AvailableCoupon>? get availableCoupons =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'wallet_details')
  WalletDetails? get walletDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: 'contains_unavailable_vendor')
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
      @JsonKey(name: 'available_coupons')
      List<AvailableCoupon>? availableCoupons,
      @JsonKey(name: 'wallet_details') WalletDetails? walletDetails});

  $CouponDataCopyWith<$Res>? get couponData;
  $AddressCopyWith<$Res>? get address;
  $WalletDetailsCopyWith<$Res>? get walletDetails;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? containsUnavailableVendor = freezed,
    Object? products = freezed,
    Object? couponData = freezed,
    Object? prescriptionNeeded = freezed,
    Object? insuranceApplicable = freezed,
    Object? productsCount = freezed,
    Object? subTotal = freezed,
    Object? discount = freezed,
    Object? subTotalFormatted = freezed,
    Object? grandTotal = freezed,
    Object? grandTotalFormatted = freezed,
    Object? payableAmount = freezed,
    Object? payableAmountFormatted = freezed,
    Object? vat = freezed,
    Object? vatFormatted = freezed,
    Object? address = freezed,
    Object? walletPointEarns = freezed,
    Object? availableCoupons = freezed,
    Object? walletDetails = freezed,
  }) {
    return _then(_value.copyWith(
      containsUnavailableVendor: freezed == containsUnavailableVendor
          ? _value.containsUnavailableVendor
          : containsUnavailableVendor // ignore: cast_nullable_to_non_nullable
              as bool?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      couponData: freezed == couponData
          ? _value.couponData
          : couponData // ignore: cast_nullable_to_non_nullable
              as CouponData?,
      prescriptionNeeded: freezed == prescriptionNeeded
          ? _value.prescriptionNeeded
          : prescriptionNeeded // ignore: cast_nullable_to_non_nullable
              as bool?,
      insuranceApplicable: freezed == insuranceApplicable
          ? _value.insuranceApplicable
          : insuranceApplicable // ignore: cast_nullable_to_non_nullable
              as bool?,
      productsCount: freezed == productsCount
          ? _value.productsCount
          : productsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      subTotalFormatted: freezed == subTotalFormatted
          ? _value.subTotalFormatted
          : subTotalFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
      grandTotal: freezed == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotalFormatted: freezed == grandTotalFormatted
          ? _value.grandTotalFormatted
          : grandTotalFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
      payableAmount: freezed == payableAmount
          ? _value.payableAmount
          : payableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      payableAmountFormatted: freezed == payableAmountFormatted
          ? _value.payableAmountFormatted
          : payableAmountFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      vatFormatted: freezed == vatFormatted
          ? _value.vatFormatted
          : vatFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      walletPointEarns: freezed == walletPointEarns
          ? _value.walletPointEarns
          : walletPointEarns // ignore: cast_nullable_to_non_nullable
              as int?,
      availableCoupons: freezed == availableCoupons
          ? _value.availableCoupons
          : availableCoupons // ignore: cast_nullable_to_non_nullable
              as List<AvailableCoupon>?,
      walletDetails: freezed == walletDetails
          ? _value.walletDetails
          : walletDetails // ignore: cast_nullable_to_non_nullable
              as WalletDetails?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CouponDataCopyWith<$Res>? get couponData {
    if (_value.couponData == null) {
      return null;
    }

    return $CouponDataCopyWith<$Res>(_value.couponData!, (value) {
      return _then(_value.copyWith(couponData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletDetailsCopyWith<$Res>? get walletDetails {
    if (_value.walletDetails == null) {
      return null;
    }

    return $WalletDetailsCopyWith<$Res>(_value.walletDetails!, (value) {
      return _then(_value.copyWith(walletDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'contains_unavailable_vendor')
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
      @JsonKey(name: 'available_coupons')
      List<AvailableCoupon>? availableCoupons,
      @JsonKey(name: 'wallet_details') WalletDetails? walletDetails});

  @override
  $CouponDataCopyWith<$Res>? get couponData;
  @override
  $AddressCopyWith<$Res>? get address;
  @override
  $WalletDetailsCopyWith<$Res>? get walletDetails;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? containsUnavailableVendor = freezed,
    Object? products = freezed,
    Object? couponData = freezed,
    Object? prescriptionNeeded = freezed,
    Object? insuranceApplicable = freezed,
    Object? productsCount = freezed,
    Object? subTotal = freezed,
    Object? discount = freezed,
    Object? subTotalFormatted = freezed,
    Object? grandTotal = freezed,
    Object? grandTotalFormatted = freezed,
    Object? payableAmount = freezed,
    Object? payableAmountFormatted = freezed,
    Object? vat = freezed,
    Object? vatFormatted = freezed,
    Object? address = freezed,
    Object? walletPointEarns = freezed,
    Object? availableCoupons = freezed,
    Object? walletDetails = freezed,
  }) {
    return _then(_$DataImpl(
      containsUnavailableVendor: freezed == containsUnavailableVendor
          ? _value.containsUnavailableVendor
          : containsUnavailableVendor // ignore: cast_nullable_to_non_nullable
              as bool?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      couponData: freezed == couponData
          ? _value.couponData
          : couponData // ignore: cast_nullable_to_non_nullable
              as CouponData?,
      prescriptionNeeded: freezed == prescriptionNeeded
          ? _value.prescriptionNeeded
          : prescriptionNeeded // ignore: cast_nullable_to_non_nullable
              as bool?,
      insuranceApplicable: freezed == insuranceApplicable
          ? _value.insuranceApplicable
          : insuranceApplicable // ignore: cast_nullable_to_non_nullable
              as bool?,
      productsCount: freezed == productsCount
          ? _value.productsCount
          : productsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      subTotalFormatted: freezed == subTotalFormatted
          ? _value.subTotalFormatted
          : subTotalFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
      grandTotal: freezed == grandTotal
          ? _value.grandTotal
          : grandTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      grandTotalFormatted: freezed == grandTotalFormatted
          ? _value.grandTotalFormatted
          : grandTotalFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
      payableAmount: freezed == payableAmount
          ? _value.payableAmount
          : payableAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      payableAmountFormatted: freezed == payableAmountFormatted
          ? _value.payableAmountFormatted
          : payableAmountFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      vatFormatted: freezed == vatFormatted
          ? _value.vatFormatted
          : vatFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      walletPointEarns: freezed == walletPointEarns
          ? _value.walletPointEarns
          : walletPointEarns // ignore: cast_nullable_to_non_nullable
              as int?,
      availableCoupons: freezed == availableCoupons
          ? _value._availableCoupons
          : availableCoupons // ignore: cast_nullable_to_non_nullable
              as List<AvailableCoupon>?,
      walletDetails: freezed == walletDetails
          ? _value.walletDetails
          : walletDetails // ignore: cast_nullable_to_non_nullable
              as WalletDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  _$DataImpl(
      {@JsonKey(name: 'contains_unavailable_vendor')
      this.containsUnavailableVendor,
      final List<Product>? products,
      @JsonKey(name: 'coupon_data') this.couponData,
      @JsonKey(name: 'prescription_needed') this.prescriptionNeeded,
      @JsonKey(name: 'insurance_applicable') this.insuranceApplicable,
      @JsonKey(name: 'products_count') this.productsCount,
      @JsonKey(name: 'sub_total') this.subTotal,
      this.discount,
      @JsonKey(name: 'sub_total_formatted') this.subTotalFormatted,
      @JsonKey(name: 'grand_total') this.grandTotal,
      @JsonKey(name: 'grand_total_formatted') this.grandTotalFormatted,
      @JsonKey(name: 'payable_amount') this.payableAmount,
      @JsonKey(name: 'payable_amount_formatted') this.payableAmountFormatted,
      this.vat,
      @JsonKey(name: 'vat_formatted') this.vatFormatted,
      this.address,
      @JsonKey(name: 'wallet_point_earns') this.walletPointEarns,
      @JsonKey(name: 'available_coupons')
      final List<AvailableCoupon>? availableCoupons,
      @JsonKey(name: 'wallet_details') this.walletDetails})
      : _products = products,
        _availableCoupons = availableCoupons;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: 'contains_unavailable_vendor')
  final bool? containsUnavailableVendor;
  final List<Product>? _products;
  @override
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'coupon_data')
  final CouponData? couponData;
  @override
  @JsonKey(name: 'prescription_needed')
  final bool? prescriptionNeeded;
  @override
  @JsonKey(name: 'insurance_applicable')
  final bool? insuranceApplicable;
  @override
  @JsonKey(name: 'products_count')
  final int? productsCount;
  @override
  @JsonKey(name: 'sub_total')
  final double? subTotal;
  @override
  final double? discount;
  @override
  @JsonKey(name: 'sub_total_formatted')
  final String? subTotalFormatted;
  @override
  @JsonKey(name: 'grand_total')
  final double? grandTotal;
  @override
  @JsonKey(name: 'grand_total_formatted')
  final String? grandTotalFormatted;
  @override
  @JsonKey(name: 'payable_amount')
  final double? payableAmount;
  @override
  @JsonKey(name: 'payable_amount_formatted')
  final String? payableAmountFormatted;
  @override
  final double? vat;
  @override
  @JsonKey(name: 'vat_formatted')
  final String? vatFormatted;
  @override
  final Address? address;
  @override
  @JsonKey(name: 'wallet_point_earns')
  final int? walletPointEarns;
  final List<AvailableCoupon>? _availableCoupons;
  @override
  @JsonKey(name: 'available_coupons')
  List<AvailableCoupon>? get availableCoupons {
    final value = _availableCoupons;
    if (value == null) return null;
    if (_availableCoupons is EqualUnmodifiableListView)
      return _availableCoupons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'wallet_details')
  final WalletDetails? walletDetails;

  @override
  String toString() {
    return 'Data(containsUnavailableVendor: $containsUnavailableVendor, products: $products, couponData: $couponData, prescriptionNeeded: $prescriptionNeeded, insuranceApplicable: $insuranceApplicable, productsCount: $productsCount, subTotal: $subTotal, discount: $discount, subTotalFormatted: $subTotalFormatted, grandTotal: $grandTotal, grandTotalFormatted: $grandTotalFormatted, payableAmount: $payableAmount, payableAmountFormatted: $payableAmountFormatted, vat: $vat, vatFormatted: $vatFormatted, address: $address, walletPointEarns: $walletPointEarns, availableCoupons: $availableCoupons, walletDetails: $walletDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.containsUnavailableVendor,
                    containsUnavailableVendor) ||
                other.containsUnavailableVendor == containsUnavailableVendor) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.couponData, couponData) ||
                other.couponData == couponData) &&
            (identical(other.prescriptionNeeded, prescriptionNeeded) ||
                other.prescriptionNeeded == prescriptionNeeded) &&
            (identical(other.insuranceApplicable, insuranceApplicable) ||
                other.insuranceApplicable == insuranceApplicable) &&
            (identical(other.productsCount, productsCount) ||
                other.productsCount == productsCount) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.subTotalFormatted, subTotalFormatted) ||
                other.subTotalFormatted == subTotalFormatted) &&
            (identical(other.grandTotal, grandTotal) ||
                other.grandTotal == grandTotal) &&
            (identical(other.grandTotalFormatted, grandTotalFormatted) ||
                other.grandTotalFormatted == grandTotalFormatted) &&
            (identical(other.payableAmount, payableAmount) ||
                other.payableAmount == payableAmount) &&
            (identical(other.payableAmountFormatted, payableAmountFormatted) ||
                other.payableAmountFormatted == payableAmountFormatted) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.vatFormatted, vatFormatted) ||
                other.vatFormatted == vatFormatted) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.walletPointEarns, walletPointEarns) ||
                other.walletPointEarns == walletPointEarns) &&
            const DeepCollectionEquality()
                .equals(other._availableCoupons, _availableCoupons) &&
            (identical(other.walletDetails, walletDetails) ||
                other.walletDetails == walletDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        containsUnavailableVendor,
        const DeepCollectionEquality().hash(_products),
        couponData,
        prescriptionNeeded,
        insuranceApplicable,
        productsCount,
        subTotal,
        discount,
        subTotalFormatted,
        grandTotal,
        grandTotalFormatted,
        payableAmount,
        payableAmountFormatted,
        vat,
        vatFormatted,
        address,
        walletPointEarns,
        const DeepCollectionEquality().hash(_availableCoupons),
        walletDetails
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  factory _Data(
      {@JsonKey(name: 'contains_unavailable_vendor')
      final bool? containsUnavailableVendor,
      final List<Product>? products,
      @JsonKey(name: 'coupon_data') final CouponData? couponData,
      @JsonKey(name: 'prescription_needed') final bool? prescriptionNeeded,
      @JsonKey(name: 'insurance_applicable') final bool? insuranceApplicable,
      @JsonKey(name: 'products_count') final int? productsCount,
      @JsonKey(name: 'sub_total') final double? subTotal,
      final double? discount,
      @JsonKey(name: 'sub_total_formatted') final String? subTotalFormatted,
      @JsonKey(name: 'grand_total') final double? grandTotal,
      @JsonKey(name: 'grand_total_formatted') final String? grandTotalFormatted,
      @JsonKey(name: 'payable_amount') final double? payableAmount,
      @JsonKey(name: 'payable_amount_formatted')
      final String? payableAmountFormatted,
      final double? vat,
      @JsonKey(name: 'vat_formatted') final String? vatFormatted,
      final Address? address,
      @JsonKey(name: 'wallet_point_earns') final int? walletPointEarns,
      @JsonKey(name: 'available_coupons')
      final List<AvailableCoupon>? availableCoupons,
      @JsonKey(name: 'wallet_details')
      final WalletDetails? walletDetails}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'contains_unavailable_vendor')
  bool? get containsUnavailableVendor;
  @override
  List<Product>? get products;
  @override
  @JsonKey(name: 'coupon_data')
  CouponData? get couponData;
  @override
  @JsonKey(name: 'prescription_needed')
  bool? get prescriptionNeeded;
  @override
  @JsonKey(name: 'insurance_applicable')
  bool? get insuranceApplicable;
  @override
  @JsonKey(name: 'products_count')
  int? get productsCount;
  @override
  @JsonKey(name: 'sub_total')
  double? get subTotal;
  @override
  double? get discount;
  @override
  @JsonKey(name: 'sub_total_formatted')
  String? get subTotalFormatted;
  @override
  @JsonKey(name: 'grand_total')
  double? get grandTotal;
  @override
  @JsonKey(name: 'grand_total_formatted')
  String? get grandTotalFormatted;
  @override
  @JsonKey(name: 'payable_amount')
  double? get payableAmount;
  @override
  @JsonKey(name: 'payable_amount_formatted')
  String? get payableAmountFormatted;
  @override
  double? get vat;
  @override
  @JsonKey(name: 'vat_formatted')
  String? get vatFormatted;
  @override
  Address? get address;
  @override
  @JsonKey(name: 'wallet_point_earns')
  int? get walletPointEarns;
  @override
  @JsonKey(name: 'available_coupons')
  List<AvailableCoupon>? get availableCoupons;
  @override
  @JsonKey(name: 'wallet_details')
  WalletDetails? get walletDetails;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
