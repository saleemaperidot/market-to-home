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

CartData _$CartDataFromJson(Map<String, dynamic> json) {
  return _CartData.fromJson(json);
}

/// @nodoc
mixin _$CartData {
  List<CartProduct> get products => throw _privateConstructorUsedError;
  @JsonKey(name: 'products_count')
  int? get productsCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'cart_sub_total')
  double? get cartSubTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'cart_sub_total_formatted')
  String? get cartSubTotalFormatted => throw _privateConstructorUsedError;
  @JsonKey(name: 'cart_total')
  double? get cartTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'cart_total_formatted')
  String? get cartTotalFormatted => throw _privateConstructorUsedError;
  double? get vat => throw _privateConstructorUsedError;
  @JsonKey(name: 'vat_formatted')
  String? get vatFormatted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartDataCopyWith<CartData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartDataCopyWith<$Res> {
  factory $CartDataCopyWith(CartData value, $Res Function(CartData) then) =
      _$CartDataCopyWithImpl<$Res, CartData>;
  @useResult
  $Res call(
      {List<CartProduct> products,
      @JsonKey(name: 'products_count') int? productsCount,
      @JsonKey(name: 'cart_sub_total') double? cartSubTotal,
      @JsonKey(name: 'cart_sub_total_formatted') String? cartSubTotalFormatted,
      @JsonKey(name: 'cart_total') double? cartTotal,
      @JsonKey(name: 'cart_total_formatted') String? cartTotalFormatted,
      double? vat,
      @JsonKey(name: 'vat_formatted') String? vatFormatted});
}

/// @nodoc
class _$CartDataCopyWithImpl<$Res, $Val extends CartData>
    implements $CartDataCopyWith<$Res> {
  _$CartDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? productsCount = freezed,
    Object? cartSubTotal = freezed,
    Object? cartSubTotalFormatted = freezed,
    Object? cartTotal = freezed,
    Object? cartTotalFormatted = freezed,
    Object? vat = freezed,
    Object? vatFormatted = freezed,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
      productsCount: freezed == productsCount
          ? _value.productsCount
          : productsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      cartSubTotal: freezed == cartSubTotal
          ? _value.cartSubTotal
          : cartSubTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      cartSubTotalFormatted: freezed == cartSubTotalFormatted
          ? _value.cartSubTotalFormatted
          : cartSubTotalFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
      cartTotal: freezed == cartTotal
          ? _value.cartTotal
          : cartTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      cartTotalFormatted: freezed == cartTotalFormatted
          ? _value.cartTotalFormatted
          : cartTotalFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      vatFormatted: freezed == vatFormatted
          ? _value.vatFormatted
          : vatFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartDataImplCopyWith<$Res>
    implements $CartDataCopyWith<$Res> {
  factory _$$CartDataImplCopyWith(
          _$CartDataImpl value, $Res Function(_$CartDataImpl) then) =
      __$$CartDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CartProduct> products,
      @JsonKey(name: 'products_count') int? productsCount,
      @JsonKey(name: 'cart_sub_total') double? cartSubTotal,
      @JsonKey(name: 'cart_sub_total_formatted') String? cartSubTotalFormatted,
      @JsonKey(name: 'cart_total') double? cartTotal,
      @JsonKey(name: 'cart_total_formatted') String? cartTotalFormatted,
      double? vat,
      @JsonKey(name: 'vat_formatted') String? vatFormatted});
}

/// @nodoc
class __$$CartDataImplCopyWithImpl<$Res>
    extends _$CartDataCopyWithImpl<$Res, _$CartDataImpl>
    implements _$$CartDataImplCopyWith<$Res> {
  __$$CartDataImplCopyWithImpl(
      _$CartDataImpl _value, $Res Function(_$CartDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? productsCount = freezed,
    Object? cartSubTotal = freezed,
    Object? cartSubTotalFormatted = freezed,
    Object? cartTotal = freezed,
    Object? cartTotalFormatted = freezed,
    Object? vat = freezed,
    Object? vatFormatted = freezed,
  }) {
    return _then(_$CartDataImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProduct>,
      productsCount: freezed == productsCount
          ? _value.productsCount
          : productsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      cartSubTotal: freezed == cartSubTotal
          ? _value.cartSubTotal
          : cartSubTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      cartSubTotalFormatted: freezed == cartSubTotalFormatted
          ? _value.cartSubTotalFormatted
          : cartSubTotalFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
      cartTotal: freezed == cartTotal
          ? _value.cartTotal
          : cartTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      cartTotalFormatted: freezed == cartTotalFormatted
          ? _value.cartTotalFormatted
          : cartTotalFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
      vat: freezed == vat
          ? _value.vat
          : vat // ignore: cast_nullable_to_non_nullable
              as double?,
      vatFormatted: freezed == vatFormatted
          ? _value.vatFormatted
          : vatFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartDataImpl implements _CartData {
  _$CartDataImpl(
      {final List<CartProduct> products = const [],
      @JsonKey(name: 'products_count') this.productsCount,
      @JsonKey(name: 'cart_sub_total') this.cartSubTotal,
      @JsonKey(name: 'cart_sub_total_formatted') this.cartSubTotalFormatted,
      @JsonKey(name: 'cart_total') this.cartTotal,
      @JsonKey(name: 'cart_total_formatted') this.cartTotalFormatted,
      this.vat,
      @JsonKey(name: 'vat_formatted') this.vatFormatted})
      : _products = products;

  factory _$CartDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartDataImplFromJson(json);

  final List<CartProduct> _products;
  @override
  @JsonKey()
  List<CartProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey(name: 'products_count')
  final int? productsCount;
  @override
  @JsonKey(name: 'cart_sub_total')
  final double? cartSubTotal;
  @override
  @JsonKey(name: 'cart_sub_total_formatted')
  final String? cartSubTotalFormatted;
  @override
  @JsonKey(name: 'cart_total')
  final double? cartTotal;
  @override
  @JsonKey(name: 'cart_total_formatted')
  final String? cartTotalFormatted;
  @override
  final double? vat;
  @override
  @JsonKey(name: 'vat_formatted')
  final String? vatFormatted;

  @override
  String toString() {
    return 'CartData(products: $products, productsCount: $productsCount, cartSubTotal: $cartSubTotal, cartSubTotalFormatted: $cartSubTotalFormatted, cartTotal: $cartTotal, cartTotalFormatted: $cartTotalFormatted, vat: $vat, vatFormatted: $vatFormatted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartDataImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.productsCount, productsCount) ||
                other.productsCount == productsCount) &&
            (identical(other.cartSubTotal, cartSubTotal) ||
                other.cartSubTotal == cartSubTotal) &&
            (identical(other.cartSubTotalFormatted, cartSubTotalFormatted) ||
                other.cartSubTotalFormatted == cartSubTotalFormatted) &&
            (identical(other.cartTotal, cartTotal) ||
                other.cartTotal == cartTotal) &&
            (identical(other.cartTotalFormatted, cartTotalFormatted) ||
                other.cartTotalFormatted == cartTotalFormatted) &&
            (identical(other.vat, vat) || other.vat == vat) &&
            (identical(other.vatFormatted, vatFormatted) ||
                other.vatFormatted == vatFormatted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      productsCount,
      cartSubTotal,
      cartSubTotalFormatted,
      cartTotal,
      cartTotalFormatted,
      vat,
      vatFormatted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartDataImplCopyWith<_$CartDataImpl> get copyWith =>
      __$$CartDataImplCopyWithImpl<_$CartDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartDataImplToJson(
      this,
    );
  }
}

abstract class _CartData implements CartData {
  factory _CartData(
      {final List<CartProduct> products,
      @JsonKey(name: 'products_count') final int? productsCount,
      @JsonKey(name: 'cart_sub_total') final double? cartSubTotal,
      @JsonKey(name: 'cart_sub_total_formatted')
      final String? cartSubTotalFormatted,
      @JsonKey(name: 'cart_total') final double? cartTotal,
      @JsonKey(name: 'cart_total_formatted') final String? cartTotalFormatted,
      final double? vat,
      @JsonKey(name: 'vat_formatted')
      final String? vatFormatted}) = _$CartDataImpl;

  factory _CartData.fromJson(Map<String, dynamic> json) =
      _$CartDataImpl.fromJson;

  @override
  List<CartProduct> get products;
  @override
  @JsonKey(name: 'products_count')
  int? get productsCount;
  @override
  @JsonKey(name: 'cart_sub_total')
  double? get cartSubTotal;
  @override
  @JsonKey(name: 'cart_sub_total_formatted')
  String? get cartSubTotalFormatted;
  @override
  @JsonKey(name: 'cart_total')
  double? get cartTotal;
  @override
  @JsonKey(name: 'cart_total_formatted')
  String? get cartTotalFormatted;
  @override
  double? get vat;
  @override
  @JsonKey(name: 'vat_formatted')
  String? get vatFormatted;
  @override
  @JsonKey(ignore: true)
  _$$CartDataImplCopyWith<_$CartDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
