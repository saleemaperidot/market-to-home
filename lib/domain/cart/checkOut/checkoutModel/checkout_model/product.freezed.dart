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

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
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
  @JsonKey(name: 'vendor_status')
  String? get vendorStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_available')
  bool? get vendorAvailable => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_available_message')
  String? get vendorAvailableMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_status')
  int? get productStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: 'product_id') int? productId,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_quantity') int? productQuantity,
      @JsonKey(name: 'product_price') double? productPrice,
      @JsonKey(name: 'sub_total') double? subTotal,
      @JsonKey(name: 'product_image') String? productImage,
      String? vendor,
      @JsonKey(name: 'vendor_status') String? vendorStatus,
      @JsonKey(name: 'vendor_available') bool? vendorAvailable,
      @JsonKey(name: 'vendor_available_message') String? vendorAvailableMessage,
      @JsonKey(name: 'product_status') int? productStatus});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

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
    Object? vendorStatus = freezed,
    Object? vendorAvailable = freezed,
    Object? vendorAvailableMessage = freezed,
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
      vendorStatus: freezed == vendorStatus
          ? _value.vendorStatus
          : vendorStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAvailable: freezed == vendorAvailable
          ? _value.vendorAvailable
          : vendorAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      vendorAvailableMessage: freezed == vendorAvailableMessage
          ? _value.vendorAvailableMessage
          : vendorAvailableMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      productStatus: freezed == productStatus
          ? _value.productStatus
          : productStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'vendor_status') String? vendorStatus,
      @JsonKey(name: 'vendor_available') bool? vendorAvailable,
      @JsonKey(name: 'vendor_available_message') String? vendorAvailableMessage,
      @JsonKey(name: 'product_status') int? productStatus});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
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
    Object? vendorStatus = freezed,
    Object? vendorAvailable = freezed,
    Object? vendorAvailableMessage = freezed,
    Object? productStatus = freezed,
  }) {
    return _then(_$ProductImpl(
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
      vendorStatus: freezed == vendorStatus
          ? _value.vendorStatus
          : vendorStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorAvailable: freezed == vendorAvailable
          ? _value.vendorAvailable
          : vendorAvailable // ignore: cast_nullable_to_non_nullable
              as bool?,
      vendorAvailableMessage: freezed == vendorAvailableMessage
          ? _value.vendorAvailableMessage
          : vendorAvailableMessage // ignore: cast_nullable_to_non_nullable
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
class _$ProductImpl implements _Product {
  _$ProductImpl(
      {@JsonKey(name: 'product_id') this.productId,
      @JsonKey(name: 'product_name') this.productName,
      @JsonKey(name: 'product_quantity') this.productQuantity,
      @JsonKey(name: 'product_price') this.productPrice,
      @JsonKey(name: 'sub_total') this.subTotal,
      @JsonKey(name: 'product_image') this.productImage,
      this.vendor,
      @JsonKey(name: 'vendor_status') this.vendorStatus,
      @JsonKey(name: 'vendor_available') this.vendorAvailable,
      @JsonKey(name: 'vendor_available_message') this.vendorAvailableMessage,
      @JsonKey(name: 'product_status') this.productStatus});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

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
  @JsonKey(name: 'vendor_status')
  final String? vendorStatus;
  @override
  @JsonKey(name: 'vendor_available')
  final bool? vendorAvailable;
  @override
  @JsonKey(name: 'vendor_available_message')
  final String? vendorAvailableMessage;
  @override
  @JsonKey(name: 'product_status')
  final int? productStatus;

  @override
  String toString() {
    return 'Product(productId: $productId, productName: $productName, productQuantity: $productQuantity, productPrice: $productPrice, subTotal: $subTotal, productImage: $productImage, vendor: $vendor, vendorStatus: $vendorStatus, vendorAvailable: $vendorAvailable, vendorAvailableMessage: $vendorAvailableMessage, productStatus: $productStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
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
            (identical(other.vendorStatus, vendorStatus) ||
                other.vendorStatus == vendorStatus) &&
            (identical(other.vendorAvailable, vendorAvailable) ||
                other.vendorAvailable == vendorAvailable) &&
            (identical(other.vendorAvailableMessage, vendorAvailableMessage) ||
                other.vendorAvailableMessage == vendorAvailableMessage) &&
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
      vendorStatus,
      vendorAvailable,
      vendorAvailableMessage,
      productStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  factory _Product(
          {@JsonKey(name: 'product_id') final int? productId,
          @JsonKey(name: 'product_name') final String? productName,
          @JsonKey(name: 'product_quantity') final int? productQuantity,
          @JsonKey(name: 'product_price') final double? productPrice,
          @JsonKey(name: 'sub_total') final double? subTotal,
          @JsonKey(name: 'product_image') final String? productImage,
          final String? vendor,
          @JsonKey(name: 'vendor_status') final String? vendorStatus,
          @JsonKey(name: 'vendor_available') final bool? vendorAvailable,
          @JsonKey(name: 'vendor_available_message')
          final String? vendorAvailableMessage,
          @JsonKey(name: 'product_status') final int? productStatus}) =
      _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

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
  @JsonKey(name: 'vendor_status')
  String? get vendorStatus;
  @override
  @JsonKey(name: 'vendor_available')
  bool? get vendorAvailable;
  @override
  @JsonKey(name: 'vendor_available_message')
  String? get vendorAvailableMessage;
  @override
  @JsonKey(name: 'product_status')
  int? get productStatus;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
