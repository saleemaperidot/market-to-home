// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'datum.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDatumFreezed _$ProductDatumFreezedFromJson(Map<String, dynamic> json) {
  return _ProductDatumFreezed.fromJson(json);
}

/// @nodoc
mixin _$ProductDatumFreezed {
  @JsonKey(name: 'vendor_product_id')
  int? get vendorProductId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_id')
  int? get vendorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_price')
  double? get productPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_discount')
  int? get productDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_returnable')
  int? get isReturnable => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_rule_id')
  dynamic get returnRuleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_url_code')
  String? get productUrlCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_by')
  int? get orderBy => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_deleted')
  int? get isDeleted => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'cart_quantity')
  int get cartQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_added_wishlist')
  bool get isAddedWishlist => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_image_url')
  String? get productImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_data')
  ProductData? get productData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDatumFreezedCopyWith<ProductDatumFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDatumFreezedCopyWith<$Res> {
  factory $ProductDatumFreezedCopyWith(
          ProductDatumFreezed value, $Res Function(ProductDatumFreezed) then) =
      _$ProductDatumFreezedCopyWithImpl<$Res, ProductDatumFreezed>;
  @useResult
  $Res call(
      {@JsonKey(name: 'vendor_product_id') int? vendorProductId,
      @JsonKey(name: 'product_id') int? productId,
      @JsonKey(name: 'vendor_id') int? vendorId,
      @JsonKey(name: 'product_price') double? productPrice,
      @JsonKey(name: 'product_discount') int? productDiscount,
      @JsonKey(name: 'is_returnable') int? isReturnable,
      @JsonKey(name: 'return_rule_id') dynamic returnRuleId,
      @JsonKey(name: 'product_url_code') String? productUrlCode,
      @JsonKey(name: 'order_by') int? orderBy,
      @JsonKey(name: 'is_deleted') int? isDeleted,
      int? status,
      @JsonKey(name: 'cart_quantity') int cartQuantity,
      @JsonKey(name: 'is_added_wishlist') bool isAddedWishlist,
      @JsonKey(name: 'product_image_url') String? productImageUrl,
      @JsonKey(name: 'product_data') ProductData? productData});

  $ProductDataCopyWith<$Res>? get productData;
}

/// @nodoc
class _$ProductDatumFreezedCopyWithImpl<$Res, $Val extends ProductDatumFreezed>
    implements $ProductDatumFreezedCopyWith<$Res> {
  _$ProductDatumFreezedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorProductId = freezed,
    Object? productId = freezed,
    Object? vendorId = freezed,
    Object? productPrice = freezed,
    Object? productDiscount = freezed,
    Object? isReturnable = freezed,
    Object? returnRuleId = freezed,
    Object? productUrlCode = freezed,
    Object? orderBy = freezed,
    Object? isDeleted = freezed,
    Object? status = freezed,
    Object? cartQuantity = null,
    Object? isAddedWishlist = null,
    Object? productImageUrl = freezed,
    Object? productData = freezed,
  }) {
    return _then(_value.copyWith(
      vendorProductId: freezed == vendorProductId
          ? _value.vendorProductId
          : vendorProductId // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int?,
      productPrice: freezed == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      productDiscount: freezed == productDiscount
          ? _value.productDiscount
          : productDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      isReturnable: freezed == isReturnable
          ? _value.isReturnable
          : isReturnable // ignore: cast_nullable_to_non_nullable
              as int?,
      returnRuleId: freezed == returnRuleId
          ? _value.returnRuleId
          : returnRuleId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      productUrlCode: freezed == productUrlCode
          ? _value.productUrlCode
          : productUrlCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderBy: freezed == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as int?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      cartQuantity: null == cartQuantity
          ? _value.cartQuantity
          : cartQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      isAddedWishlist: null == isAddedWishlist
          ? _value.isAddedWishlist
          : isAddedWishlist // ignore: cast_nullable_to_non_nullable
              as bool,
      productImageUrl: freezed == productImageUrl
          ? _value.productImageUrl
          : productImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      productData: freezed == productData
          ? _value.productData
          : productData // ignore: cast_nullable_to_non_nullable
              as ProductData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDataCopyWith<$Res>? get productData {
    if (_value.productData == null) {
      return null;
    }

    return $ProductDataCopyWith<$Res>(_value.productData!, (value) {
      return _then(_value.copyWith(productData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDatumFreezedImplCopyWith<$Res>
    implements $ProductDatumFreezedCopyWith<$Res> {
  factory _$$ProductDatumFreezedImplCopyWith(_$ProductDatumFreezedImpl value,
          $Res Function(_$ProductDatumFreezedImpl) then) =
      __$$ProductDatumFreezedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'vendor_product_id') int? vendorProductId,
      @JsonKey(name: 'product_id') int? productId,
      @JsonKey(name: 'vendor_id') int? vendorId,
      @JsonKey(name: 'product_price') double? productPrice,
      @JsonKey(name: 'product_discount') int? productDiscount,
      @JsonKey(name: 'is_returnable') int? isReturnable,
      @JsonKey(name: 'return_rule_id') dynamic returnRuleId,
      @JsonKey(name: 'product_url_code') String? productUrlCode,
      @JsonKey(name: 'order_by') int? orderBy,
      @JsonKey(name: 'is_deleted') int? isDeleted,
      int? status,
      @JsonKey(name: 'cart_quantity') int cartQuantity,
      @JsonKey(name: 'is_added_wishlist') bool isAddedWishlist,
      @JsonKey(name: 'product_image_url') String? productImageUrl,
      @JsonKey(name: 'product_data') ProductData? productData});

  @override
  $ProductDataCopyWith<$Res>? get productData;
}

/// @nodoc
class __$$ProductDatumFreezedImplCopyWithImpl<$Res>
    extends _$ProductDatumFreezedCopyWithImpl<$Res, _$ProductDatumFreezedImpl>
    implements _$$ProductDatumFreezedImplCopyWith<$Res> {
  __$$ProductDatumFreezedImplCopyWithImpl(_$ProductDatumFreezedImpl _value,
      $Res Function(_$ProductDatumFreezedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vendorProductId = freezed,
    Object? productId = freezed,
    Object? vendorId = freezed,
    Object? productPrice = freezed,
    Object? productDiscount = freezed,
    Object? isReturnable = freezed,
    Object? returnRuleId = freezed,
    Object? productUrlCode = freezed,
    Object? orderBy = freezed,
    Object? isDeleted = freezed,
    Object? status = freezed,
    Object? cartQuantity = null,
    Object? isAddedWishlist = null,
    Object? productImageUrl = freezed,
    Object? productData = freezed,
  }) {
    return _then(_$ProductDatumFreezedImpl(
      vendorProductId: freezed == vendorProductId
          ? _value.vendorProductId
          : vendorProductId // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      vendorId: freezed == vendorId
          ? _value.vendorId
          : vendorId // ignore: cast_nullable_to_non_nullable
              as int?,
      productPrice: freezed == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      productDiscount: freezed == productDiscount
          ? _value.productDiscount
          : productDiscount // ignore: cast_nullable_to_non_nullable
              as int?,
      isReturnable: freezed == isReturnable
          ? _value.isReturnable
          : isReturnable // ignore: cast_nullable_to_non_nullable
              as int?,
      returnRuleId: freezed == returnRuleId
          ? _value.returnRuleId
          : returnRuleId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      productUrlCode: freezed == productUrlCode
          ? _value.productUrlCode
          : productUrlCode // ignore: cast_nullable_to_non_nullable
              as String?,
      orderBy: freezed == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as int?,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      cartQuantity: null == cartQuantity
          ? _value.cartQuantity
          : cartQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      isAddedWishlist: null == isAddedWishlist
          ? _value.isAddedWishlist
          : isAddedWishlist // ignore: cast_nullable_to_non_nullable
              as bool,
      productImageUrl: freezed == productImageUrl
          ? _value.productImageUrl
          : productImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      productData: freezed == productData
          ? _value.productData
          : productData // ignore: cast_nullable_to_non_nullable
              as ProductData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDatumFreezedImpl implements _ProductDatumFreezed {
  _$ProductDatumFreezedImpl(
      {@JsonKey(name: 'vendor_product_id') this.vendorProductId,
      @JsonKey(name: 'product_id') this.productId,
      @JsonKey(name: 'vendor_id') this.vendorId,
      @JsonKey(name: 'product_price') this.productPrice,
      @JsonKey(name: 'product_discount') this.productDiscount,
      @JsonKey(name: 'is_returnable') this.isReturnable,
      @JsonKey(name: 'return_rule_id') this.returnRuleId,
      @JsonKey(name: 'product_url_code') this.productUrlCode,
      @JsonKey(name: 'order_by') this.orderBy,
      @JsonKey(name: 'is_deleted') this.isDeleted,
      this.status,
      @JsonKey(name: 'cart_quantity') required this.cartQuantity,
      @JsonKey(name: 'is_added_wishlist') required this.isAddedWishlist,
      @JsonKey(name: 'product_image_url') this.productImageUrl,
      @JsonKey(name: 'product_data') this.productData});

  factory _$ProductDatumFreezedImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDatumFreezedImplFromJson(json);

  @override
  @JsonKey(name: 'vendor_product_id')
  final int? vendorProductId;
  @override
  @JsonKey(name: 'product_id')
  final int? productId;
  @override
  @JsonKey(name: 'vendor_id')
  final int? vendorId;
  @override
  @JsonKey(name: 'product_price')
  final double? productPrice;
  @override
  @JsonKey(name: 'product_discount')
  final int? productDiscount;
  @override
  @JsonKey(name: 'is_returnable')
  final int? isReturnable;
  @override
  @JsonKey(name: 'return_rule_id')
  final dynamic returnRuleId;
  @override
  @JsonKey(name: 'product_url_code')
  final String? productUrlCode;
  @override
  @JsonKey(name: 'order_by')
  final int? orderBy;
  @override
  @JsonKey(name: 'is_deleted')
  final int? isDeleted;
  @override
  final int? status;
  @override
  @JsonKey(name: 'cart_quantity')
  final int cartQuantity;
  @override
  @JsonKey(name: 'is_added_wishlist')
  final bool isAddedWishlist;
  @override
  @JsonKey(name: 'product_image_url')
  final String? productImageUrl;
  @override
  @JsonKey(name: 'product_data')
  final ProductData? productData;

  @override
  String toString() {
    return 'ProductDatumFreezed(vendorProductId: $vendorProductId, productId: $productId, vendorId: $vendorId, productPrice: $productPrice, productDiscount: $productDiscount, isReturnable: $isReturnable, returnRuleId: $returnRuleId, productUrlCode: $productUrlCode, orderBy: $orderBy, isDeleted: $isDeleted, status: $status, cartQuantity: $cartQuantity, isAddedWishlist: $isAddedWishlist, productImageUrl: $productImageUrl, productData: $productData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDatumFreezedImpl &&
            (identical(other.vendorProductId, vendorProductId) ||
                other.vendorProductId == vendorProductId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.vendorId, vendorId) ||
                other.vendorId == vendorId) &&
            (identical(other.productPrice, productPrice) ||
                other.productPrice == productPrice) &&
            (identical(other.productDiscount, productDiscount) ||
                other.productDiscount == productDiscount) &&
            (identical(other.isReturnable, isReturnable) ||
                other.isReturnable == isReturnable) &&
            const DeepCollectionEquality()
                .equals(other.returnRuleId, returnRuleId) &&
            (identical(other.productUrlCode, productUrlCode) ||
                other.productUrlCode == productUrlCode) &&
            (identical(other.orderBy, orderBy) || other.orderBy == orderBy) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cartQuantity, cartQuantity) ||
                other.cartQuantity == cartQuantity) &&
            (identical(other.isAddedWishlist, isAddedWishlist) ||
                other.isAddedWishlist == isAddedWishlist) &&
            (identical(other.productImageUrl, productImageUrl) ||
                other.productImageUrl == productImageUrl) &&
            (identical(other.productData, productData) ||
                other.productData == productData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      vendorProductId,
      productId,
      vendorId,
      productPrice,
      productDiscount,
      isReturnable,
      const DeepCollectionEquality().hash(returnRuleId),
      productUrlCode,
      orderBy,
      isDeleted,
      status,
      cartQuantity,
      isAddedWishlist,
      productImageUrl,
      productData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDatumFreezedImplCopyWith<_$ProductDatumFreezedImpl> get copyWith =>
      __$$ProductDatumFreezedImplCopyWithImpl<_$ProductDatumFreezedImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDatumFreezedImplToJson(
      this,
    );
  }
}

abstract class _ProductDatumFreezed implements ProductDatumFreezed {
  factory _ProductDatumFreezed(
      {@JsonKey(name: 'vendor_product_id') final int? vendorProductId,
      @JsonKey(name: 'product_id') final int? productId,
      @JsonKey(name: 'vendor_id') final int? vendorId,
      @JsonKey(name: 'product_price') final double? productPrice,
      @JsonKey(name: 'product_discount') final int? productDiscount,
      @JsonKey(name: 'is_returnable') final int? isReturnable,
      @JsonKey(name: 'return_rule_id') final dynamic returnRuleId,
      @JsonKey(name: 'product_url_code') final String? productUrlCode,
      @JsonKey(name: 'order_by') final int? orderBy,
      @JsonKey(name: 'is_deleted') final int? isDeleted,
      final int? status,
      @JsonKey(name: 'cart_quantity') required final int cartQuantity,
      @JsonKey(name: 'is_added_wishlist') required final bool isAddedWishlist,
      @JsonKey(name: 'product_image_url') final String? productImageUrl,
      @JsonKey(name: 'product_data')
      final ProductData? productData}) = _$ProductDatumFreezedImpl;

  factory _ProductDatumFreezed.fromJson(Map<String, dynamic> json) =
      _$ProductDatumFreezedImpl.fromJson;

  @override
  @JsonKey(name: 'vendor_product_id')
  int? get vendorProductId;
  @override
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  @JsonKey(name: 'vendor_id')
  int? get vendorId;
  @override
  @JsonKey(name: 'product_price')
  double? get productPrice;
  @override
  @JsonKey(name: 'product_discount')
  int? get productDiscount;
  @override
  @JsonKey(name: 'is_returnable')
  int? get isReturnable;
  @override
  @JsonKey(name: 'return_rule_id')
  dynamic get returnRuleId;
  @override
  @JsonKey(name: 'product_url_code')
  String? get productUrlCode;
  @override
  @JsonKey(name: 'order_by')
  int? get orderBy;
  @override
  @JsonKey(name: 'is_deleted')
  int? get isDeleted;
  @override
  int? get status;
  @override
  @JsonKey(name: 'cart_quantity')
  int get cartQuantity;
  @override
  @JsonKey(name: 'is_added_wishlist')
  bool get isAddedWishlist;
  @override
  @JsonKey(name: 'product_image_url')
  String? get productImageUrl;
  @override
  @JsonKey(name: 'product_data')
  ProductData? get productData;
  @override
  @JsonKey(ignore: true)
  _$$ProductDatumFreezedImplCopyWith<_$ProductDatumFreezedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
