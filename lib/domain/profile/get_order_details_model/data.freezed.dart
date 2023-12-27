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
  @JsonKey(name: 'order_id')
  int? get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'invoice_id')
  String? get invoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'secret_key')
  String? get secretKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_sub_total')
  double? get orderSubTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancelled_amount')
  double? get cancelledAmount => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_coupon_discount')
  double? get orderCouponDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_final_amount')
  double? get orderFinalAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_method')
  String? get paymentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_status')
  String? get paymentStatus => throw _privateConstructorUsedError;
  Address? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'ordered_on')
  String? get orderedOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_cancellable')
  bool? get isCancellable => throw _privateConstructorUsedError;
  @JsonKey(name: 'already_cancelled')
  bool? get alreadyCancelled => throw _privateConstructorUsedError;
  List<Product>? get products => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'order_id') int? orderId,
      @JsonKey(name: 'invoice_id') String? invoiceId,
      @JsonKey(name: 'secret_key') String? secretKey,
      @JsonKey(name: 'order_sub_total') double? orderSubTotal,
      @JsonKey(name: 'cancelled_amount') double? cancelledAmount,
      double? vat,
      @JsonKey(name: 'order_coupon_discount') double? orderCouponDiscount,
      @JsonKey(name: 'order_final_amount') double? orderFinalAmount,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      @JsonKey(name: 'payment_status') String? paymentStatus,
      Address? address,
      @JsonKey(name: 'ordered_on') String? orderedOn,
      @JsonKey(name: 'is_cancellable') bool? isCancellable,
      @JsonKey(name: 'already_cancelled') bool? alreadyCancelled,
      List<Product>? products});

  $AddressCopyWith<$Res>? get address;
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
    Object? orderId = freezed,
    Object? invoiceId = freezed,
    Object? secretKey = freezed,
    Object? orderSubTotal = freezed,
    Object? cancelledAmount = freezed,
    Object? vat = freezed,
    Object? orderCouponDiscount = freezed,
    Object? orderFinalAmount = freezed,
    Object? paymentMethod = freezed,
    Object? paymentStatus = freezed,
    Object? address = freezed,
    Object? orderedOn = freezed,
    Object? isCancellable = freezed,
    Object? alreadyCancelled = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceId: freezed == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      secretKey: freezed == secretKey
          ? _value.secretKey
          : secretKey // ignore: cast_nullable_to_non_nullable
              as String?,
      orderSubTotal: freezed == orderSubTotal
          ? _value.orderSubTotal
          : orderSubTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      cancelledAmount: freezed == cancelledAmount
          ? _value.cancelledAmount
          : cancelledAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      orderCouponDiscount: freezed == orderCouponDiscount
          ? _value.orderCouponDiscount
          : orderCouponDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      orderFinalAmount: freezed == orderFinalAmount
          ? _value.orderFinalAmount
          : orderFinalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      orderedOn: freezed == orderedOn
          ? _value.orderedOn
          : orderedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      isCancellable: freezed == isCancellable
          ? _value.isCancellable
          : isCancellable // ignore: cast_nullable_to_non_nullable
              as bool?,
      alreadyCancelled: freezed == alreadyCancelled
          ? _value.alreadyCancelled
          : alreadyCancelled // ignore: cast_nullable_to_non_nullable
              as bool?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ) as $Val);
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
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'order_id') int? orderId,
      @JsonKey(name: 'invoice_id') String? invoiceId,
      @JsonKey(name: 'secret_key') String? secretKey,
      @JsonKey(name: 'order_sub_total') double? orderSubTotal,
      @JsonKey(name: 'cancelled_amount') double? cancelledAmount,
      double? vat,
      @JsonKey(name: 'order_coupon_discount') double? orderCouponDiscount,
      @JsonKey(name: 'order_final_amount') double? orderFinalAmount,
      @JsonKey(name: 'payment_method') String? paymentMethod,
      @JsonKey(name: 'payment_status') String? paymentStatus,
      Address? address,
      @JsonKey(name: 'ordered_on') String? orderedOn,
      @JsonKey(name: 'is_cancellable') bool? isCancellable,
      @JsonKey(name: 'already_cancelled') bool? alreadyCancelled,
      List<Product>? products});

  @override
  $AddressCopyWith<$Res>? get address;
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
    Object? orderId = freezed,
    Object? invoiceId = freezed,
    Object? secretKey = freezed,
    Object? orderSubTotal = freezed,
    Object? cancelledAmount = freezed,
    Object? vat = freezed,
    Object? orderCouponDiscount = freezed,
    Object? orderFinalAmount = freezed,
    Object? paymentMethod = freezed,
    Object? paymentStatus = freezed,
    Object? address = freezed,
    Object? orderedOn = freezed,
    Object? isCancellable = freezed,
    Object? alreadyCancelled = freezed,
    Object? products = freezed,
  }) {
    return _then(_$DataImpl(
      orderId: freezed == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int?,
      invoiceId: freezed == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      secretKey: freezed == secretKey
          ? _value.secretKey
          : secretKey // ignore: cast_nullable_to_non_nullable
              as String?,
      orderSubTotal: freezed == orderSubTotal
          ? _value.orderSubTotal
          : orderSubTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      cancelledAmount: freezed == cancelledAmount
          ? _value.cancelledAmount
          : cancelledAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      orderCouponDiscount: freezed == orderCouponDiscount
          ? _value.orderCouponDiscount
          : orderCouponDiscount // ignore: cast_nullable_to_non_nullable
              as double?,
      orderFinalAmount: freezed == orderFinalAmount
          ? _value.orderFinalAmount
          : orderFinalAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      orderedOn: freezed == orderedOn
          ? _value.orderedOn
          : orderedOn // ignore: cast_nullable_to_non_nullable
              as String?,
      isCancellable: freezed == isCancellable
          ? _value.isCancellable
          : isCancellable // ignore: cast_nullable_to_non_nullable
              as bool?,
      alreadyCancelled: freezed == alreadyCancelled
          ? _value.alreadyCancelled
          : alreadyCancelled // ignore: cast_nullable_to_non_nullable
              as bool?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  _$DataImpl(
      {@JsonKey(name: 'order_id') this.orderId,
      @JsonKey(name: 'invoice_id') this.invoiceId,
      @JsonKey(name: 'secret_key') this.secretKey,
      @JsonKey(name: 'order_sub_total') this.orderSubTotal,
      @JsonKey(name: 'cancelled_amount') this.cancelledAmount,
      this.vat,
      @JsonKey(name: 'order_coupon_discount') this.orderCouponDiscount,
      @JsonKey(name: 'order_final_amount') this.orderFinalAmount,
      @JsonKey(name: 'payment_method') this.paymentMethod,
      @JsonKey(name: 'payment_status') this.paymentStatus,
      this.address,
      @JsonKey(name: 'ordered_on') this.orderedOn,
      @JsonKey(name: 'is_cancellable') this.isCancellable,
      @JsonKey(name: 'already_cancelled') this.alreadyCancelled,
      final List<Product>? products})
      : _products = products;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: 'order_id')
  final int? orderId;
  @override
  @JsonKey(name: 'invoice_id')
  final String? invoiceId;
  @override
  @JsonKey(name: 'secret_key')
  final String? secretKey;
  @override
  @JsonKey(name: 'order_sub_total')
  final double? orderSubTotal;
  @override
  @JsonKey(name: 'cancelled_amount')
  final double? cancelledAmount;
  @override
  final double? vat;
  @override
  @JsonKey(name: 'order_coupon_discount')
  final double? orderCouponDiscount;
  @override
  @JsonKey(name: 'order_final_amount')
  final double? orderFinalAmount;
  @override
  @JsonKey(name: 'payment_method')
  final String? paymentMethod;
  @override
  @JsonKey(name: 'payment_status')
  final String? paymentStatus;
  @override
  final Address? address;
  @override
  @JsonKey(name: 'ordered_on')
  final String? orderedOn;
  @override
  @JsonKey(name: 'is_cancellable')
  final bool? isCancellable;
  @override
  @JsonKey(name: 'already_cancelled')
  final bool? alreadyCancelled;
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
  String toString() {
    return 'Data(orderId: $orderId, invoiceId: $invoiceId, secretKey: $secretKey, orderSubTotal: $orderSubTotal, cancelledAmount: $cancelledAmount, vat: $vat, orderCouponDiscount: $orderCouponDiscount, orderFinalAmount: $orderFinalAmount, paymentMethod: $paymentMethod, paymentStatus: $paymentStatus, address: $address, orderedOn: $orderedOn, isCancellable: $isCancellable, alreadyCancelled: $alreadyCancelled, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.secretKey, secretKey) ||
                other.secretKey == secretKey) &&
            (identical(other.orderSubTotal, orderSubTotal) ||
                other.orderSubTotal == orderSubTotal) &&
            (identical(other.cancelledAmount, cancelledAmount) ||
                other.cancelledAmount == cancelledAmount) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.orderCouponDiscount, orderCouponDiscount) ||
                other.orderCouponDiscount == orderCouponDiscount) &&
            (identical(other.orderFinalAmount, orderFinalAmount) ||
                other.orderFinalAmount == orderFinalAmount) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.orderedOn, orderedOn) ||
                other.orderedOn == orderedOn) &&
            (identical(other.isCancellable, isCancellable) ||
                other.isCancellable == isCancellable) &&
            (identical(other.alreadyCancelled, alreadyCancelled) ||
                other.alreadyCancelled == alreadyCancelled) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      orderId,
      invoiceId,
      secretKey,
      orderSubTotal,
      cancelledAmount,
      vat,
      orderCouponDiscount,
      orderFinalAmount,
      paymentMethod,
      paymentStatus,
      address,
      orderedOn,
      isCancellable,
      alreadyCancelled,
      const DeepCollectionEquality().hash(_products));

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
      {@JsonKey(name: 'order_id') final int? orderId,
      @JsonKey(name: 'invoice_id') final String? invoiceId,
      @JsonKey(name: 'secret_key') final String? secretKey,
      @JsonKey(name: 'order_sub_total') final double? orderSubTotal,
      @JsonKey(name: 'cancelled_amount') final double? cancelledAmount,
      final double? vat,
      @JsonKey(name: 'order_coupon_discount') final double? orderCouponDiscount,
      @JsonKey(name: 'order_final_amount') final double? orderFinalAmount,
      @JsonKey(name: 'payment_method') final String? paymentMethod,
      @JsonKey(name: 'payment_status') final String? paymentStatus,
      final Address? address,
      @JsonKey(name: 'ordered_on') final String? orderedOn,
      @JsonKey(name: 'is_cancellable') final bool? isCancellable,
      @JsonKey(name: 'already_cancelled') final bool? alreadyCancelled,
      final List<Product>? products}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'order_id')
  int? get orderId;
  @override
  @JsonKey(name: 'invoice_id')
  String? get invoiceId;
  @override
  @JsonKey(name: 'secret_key')
  String? get secretKey;
  @override
  @JsonKey(name: 'order_sub_total')
  double? get orderSubTotal;
  @override
  @JsonKey(name: 'cancelled_amount')
  double? get cancelledAmount;
  @override
  double? get vat;
  @override
  @JsonKey(name: 'order_coupon_discount')
  double? get orderCouponDiscount;
  @override
  @JsonKey(name: 'order_final_amount')
  double? get orderFinalAmount;
  @override
  @JsonKey(name: 'payment_method')
  String? get paymentMethod;
  @override
  @JsonKey(name: 'payment_status')
  String? get paymentStatus;
  @override
  Address? get address;
  @override
  @JsonKey(name: 'ordered_on')
  String? get orderedOn;
  @override
  @JsonKey(name: 'is_cancellable')
  bool? get isCancellable;
  @override
  @JsonKey(name: 'already_cancelled')
  bool? get alreadyCancelled;
  @override
  List<Product>? get products;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
