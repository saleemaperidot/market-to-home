// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartProduct _$CartProductFromJson(Map<String, dynamic> json) {
  return _CartProduct.fromJson(json);
}

/// @nodoc
mixin _$CartProduct {
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_quantity')
  int? get productQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_price')
  double? get productPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_total')
  double? get subTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_image')
  String? get productImage => throw _privateConstructorUsedError;
  String? get vendor => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_status')
  int? get productStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartProductCopyWith<CartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductCopyWith<$Res> {
  factory $CartProductCopyWith(
          CartProduct value, $Res Function(CartProduct) then) =
      _$CartProductCopyWithImpl<$Res, CartProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: 'product_id') int? productId,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_quantity') int? productQuantity,
      @JsonKey(name: 'product_price') double? productPrice,
      @JsonKey(name: 'sub_total') double? subTotal,
      @JsonKey(name: 'product_image') String? productImage,
      String? vendor,
      @JsonKey(name: 'product_status') int? productStatus});
}

/// @nodoc
class _$CartProductCopyWithImpl<$Res, $Val extends CartProduct>
    implements $CartProductCopyWith<$Res> {
  _$CartProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? productName = freezed,
    Object? productQuantity = freezed,
    Object? productPrice = freezed,
    Object? subTotal = freezed,
    Object? productImage = freezed,
    Object? vendor = freezed,
    Object? productStatus = freezed,
  }) {
    return _then(_value.copyWith(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productQuantity: freezed == productQuantity
          ? _value.productQuantity
          : productQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      productPrice: freezed == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      productImage: freezed == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String?,
      productStatus: freezed == productStatus
          ? _value.productStatus
          : productStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartProductImplCopyWith<$Res>
    implements $CartProductCopyWith<$Res> {
  factory _$$CartProductImplCopyWith(
          _$CartProductImpl value, $Res Function(_$CartProductImpl) then) =
      __$$CartProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'product_id') int? productId,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_quantity') int? productQuantity,
      @JsonKey(name: 'product_price') double? productPrice,
      @JsonKey(name: 'sub_total') double? subTotal,
      @JsonKey(name: 'product_image') String? productImage,
      String? vendor,
      @JsonKey(name: 'product_status') int? productStatus});
}

/// @nodoc
class __$$CartProductImplCopyWithImpl<$Res>
    extends _$CartProductCopyWithImpl<$Res, _$CartProductImpl>
    implements _$$CartProductImplCopyWith<$Res> {
  __$$CartProductImplCopyWithImpl(
      _$CartProductImpl _value, $Res Function(_$CartProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? productName = freezed,
    Object? productQuantity = freezed,
    Object? productPrice = freezed,
    Object? subTotal = freezed,
    Object? productImage = freezed,
    Object? vendor = freezed,
    Object? productStatus = freezed,
  }) {
    return _then(_$CartProductImpl(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productQuantity: freezed == productQuantity
          ? _value.productQuantity
          : productQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      productPrice: freezed == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      productImage: freezed == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String?,
      productStatus: freezed == productStatus
          ? _value.productStatus
          : productStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartProductImpl implements _CartProduct {
  _$CartProductImpl(
      {@JsonKey(name: 'product_id') this.productId,
      @JsonKey(name: 'product_name') this.productName,
      @JsonKey(name: 'product_quantity') this.productQuantity,
      @JsonKey(name: 'product_price') this.productPrice,
      @JsonKey(name: 'sub_total') this.subTotal,
      @JsonKey(name: 'product_image') this.productImage,
      this.vendor,
      @JsonKey(name: 'product_status') this.productStatus});

  factory _$CartProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartProductImplFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final int? productId;
  @override
  @JsonKey(name: 'product_name')
  final String? productName;
  @override
  @JsonKey(name: 'product_quantity')
  final int? productQuantity;
  @override
  @JsonKey(name: 'product_price')
  final double? productPrice;
  @override
  @JsonKey(name: 'sub_total')
  final double? subTotal;
  @override
  @JsonKey(name: 'product_image')
  final String? productImage;
  @override
  final String? vendor;
  @override
  @JsonKey(name: 'product_status')
  final int? productStatus;

  @override
  String toString() {
    return 'CartProduct(productId: $productId, productName: $productName, productQuantity: $productQuantity, productPrice: $productPrice, subTotal: $subTotal, productImage: $productImage, vendor: $vendor, productStatus: $productStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartProductImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productQuantity, productQuantity) ||
                other.productQuantity == productQuantity) &&
            (identical(other.productPrice, productPrice) ||
                other.productPrice == productPrice) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            (identical(other.productImage, productImage) ||
                other.productImage == productImage) &&
            (identical(other.vendor, vendor) || other.vendor == vendor) &&
            (identical(other.productStatus, productStatus) ||
                other.productStatus == productStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productId,
      productName,
      productQuantity,
      productPrice,
      subTotal,
      productImage,
      vendor,
      productStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartProductImplCopyWith<_$CartProductImpl> get copyWith =>
      __$$CartProductImplCopyWithImpl<_$CartProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartProductImplToJson(
      this,
    );
  }
}

abstract class _CartProduct implements CartProduct {
  factory _CartProduct(
          {@JsonKey(name: 'product_id') final int? productId,
          @JsonKey(name: 'product_name') final String? productName,
          @JsonKey(name: 'product_quantity') final int? productQuantity,
          @JsonKey(name: 'product_price') final double? productPrice,
          @JsonKey(name: 'sub_total') final double? subTotal,
          @JsonKey(name: 'product_image') final String? productImage,
          final String? vendor,
          @JsonKey(name: 'product_status') final int? productStatus}) =
      _$CartProductImpl;

  factory _CartProduct.fromJson(Map<String, dynamic> json) =
      _$CartProductImpl.fromJson;

  @override
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  @JsonKey(name: 'product_name')
  String? get productName;
  @override
  @JsonKey(name: 'product_quantity')
  int? get productQuantity;
  @override
  @JsonKey(name: 'product_price')
  double? get productPrice;
  @override
  @JsonKey(name: 'sub_total')
  double? get subTotal;
  @override
  @JsonKey(name: 'product_image')
  String? get productImage;
  @override
  String? get vendor;
  @override
  @JsonKey(name: 'product_status')
  int? get productStatus;
  @override
  @JsonKey(ignore: true)
  _$$CartProductImplCopyWith<_$CartProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
