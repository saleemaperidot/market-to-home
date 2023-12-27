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

VendorProductDetailsData _$VendorProductDetailsDataFromJson(
    Map<String, dynamic> json) {
  return _VendorProductDetailsData.fromJson(json);
}

/// @nodoc
mixin _$VendorProductDetailsData {
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_descr')
  String? get productDescr => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_barcode')
  String? get productBarcode => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_image')
  String? get productImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_price')
  double? get productPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_quantity_type')
  String? get productQuantityType => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_status')
  double? get productStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_name')
  String? get vendorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor_slug')
  String? get vendorSlug => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_returnable')
  double? get isReturnable => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_deliverable')
  bool? get isDeliverable => throw _privateConstructorUsedError;
  @JsonKey(name: 'cart_quantity')
  int? get cartQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_added_wishlist')
  bool? get isAddedWishlist => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_data')
  RatingData? get ratingData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorProductDetailsDataCopyWith<VendorProductDetailsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorProductDetailsDataCopyWith<$Res> {
  factory $VendorProductDetailsDataCopyWith(VendorProductDetailsData value,
          $Res Function(VendorProductDetailsData) then) =
      _$VendorProductDetailsDataCopyWithImpl<$Res, VendorProductDetailsData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'product_id') int? productId,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_descr') String? productDescr,
      @JsonKey(name: 'product_barcode') String? productBarcode,
      @JsonKey(name: 'product_image') String? productImage,
      @JsonKey(name: 'product_price') double? productPrice,
      @JsonKey(name: 'product_quantity_type') String? productQuantityType,
      @JsonKey(name: 'product_status') double? productStatus,
      @JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'vendor_slug') String? vendorSlug,
      @JsonKey(name: 'is_returnable') double? isReturnable,
      @JsonKey(name: 'is_deliverable') bool? isDeliverable,
      @JsonKey(name: 'cart_quantity') int? cartQuantity,
      @JsonKey(name: 'is_added_wishlist') bool? isAddedWishlist,
      @JsonKey(name: 'rating_data') RatingData? ratingData});

  $RatingDataCopyWith<$Res>? get ratingData;
}

/// @nodoc
class _$VendorProductDetailsDataCopyWithImpl<$Res,
        $Val extends VendorProductDetailsData>
    implements $VendorProductDetailsDataCopyWith<$Res> {
  _$VendorProductDetailsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? productName = freezed,
    Object? productDescr = freezed,
    Object? productBarcode = freezed,
    Object? productImage = freezed,
    Object? productPrice = freezed,
    Object? productQuantityType = freezed,
    Object? productStatus = freezed,
    Object? vendorName = freezed,
    Object? vendorSlug = freezed,
    Object? isReturnable = freezed,
    Object? isDeliverable = freezed,
    Object? cartQuantity = freezed,
    Object? isAddedWishlist = freezed,
    Object? ratingData = freezed,
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
      productDescr: freezed == productDescr
          ? _value.productDescr
          : productDescr // ignore: cast_nullable_to_non_nullable
              as String?,
      productBarcode: freezed == productBarcode
          ? _value.productBarcode
          : productBarcode // ignore: cast_nullable_to_non_nullable
              as String?,
      productImage: freezed == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String?,
      productPrice: freezed == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      productQuantityType: freezed == productQuantityType
          ? _value.productQuantityType
          : productQuantityType // ignore: cast_nullable_to_non_nullable
              as String?,
      productStatus: freezed == productStatus
          ? _value.productStatus
          : productStatus // ignore: cast_nullable_to_non_nullable
              as double?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorSlug: freezed == vendorSlug
          ? _value.vendorSlug
          : vendorSlug // ignore: cast_nullable_to_non_nullable
              as String?,
      isReturnable: freezed == isReturnable
          ? _value.isReturnable
          : isReturnable // ignore: cast_nullable_to_non_nullable
              as double?,
      isDeliverable: freezed == isDeliverable
          ? _value.isDeliverable
          : isDeliverable // ignore: cast_nullable_to_non_nullable
              as bool?,
      cartQuantity: freezed == cartQuantity
          ? _value.cartQuantity
          : cartQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      isAddedWishlist: freezed == isAddedWishlist
          ? _value.isAddedWishlist
          : isAddedWishlist // ignore: cast_nullable_to_non_nullable
              as bool?,
      ratingData: freezed == ratingData
          ? _value.ratingData
          : ratingData // ignore: cast_nullable_to_non_nullable
              as RatingData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingDataCopyWith<$Res>? get ratingData {
    if (_value.ratingData == null) {
      return null;
    }

    return $RatingDataCopyWith<$Res>(_value.ratingData!, (value) {
      return _then(_value.copyWith(ratingData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendorProductDetailsDataImplCopyWith<$Res>
    implements $VendorProductDetailsDataCopyWith<$Res> {
  factory _$$VendorProductDetailsDataImplCopyWith(
          _$VendorProductDetailsDataImpl value,
          $Res Function(_$VendorProductDetailsDataImpl) then) =
      __$$VendorProductDetailsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'product_id') int? productId,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_descr') String? productDescr,
      @JsonKey(name: 'product_barcode') String? productBarcode,
      @JsonKey(name: 'product_image') String? productImage,
      @JsonKey(name: 'product_price') double? productPrice,
      @JsonKey(name: 'product_quantity_type') String? productQuantityType,
      @JsonKey(name: 'product_status') double? productStatus,
      @JsonKey(name: 'vendor_name') String? vendorName,
      @JsonKey(name: 'vendor_slug') String? vendorSlug,
      @JsonKey(name: 'is_returnable') double? isReturnable,
      @JsonKey(name: 'is_deliverable') bool? isDeliverable,
      @JsonKey(name: 'cart_quantity') int? cartQuantity,
      @JsonKey(name: 'is_added_wishlist') bool? isAddedWishlist,
      @JsonKey(name: 'rating_data') RatingData? ratingData});

  @override
  $RatingDataCopyWith<$Res>? get ratingData;
}

/// @nodoc
class __$$VendorProductDetailsDataImplCopyWithImpl<$Res>
    extends _$VendorProductDetailsDataCopyWithImpl<$Res,
        _$VendorProductDetailsDataImpl>
    implements _$$VendorProductDetailsDataImplCopyWith<$Res> {
  __$$VendorProductDetailsDataImplCopyWithImpl(
      _$VendorProductDetailsDataImpl _value,
      $Res Function(_$VendorProductDetailsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? productName = freezed,
    Object? productDescr = freezed,
    Object? productBarcode = freezed,
    Object? productImage = freezed,
    Object? productPrice = freezed,
    Object? productQuantityType = freezed,
    Object? productStatus = freezed,
    Object? vendorName = freezed,
    Object? vendorSlug = freezed,
    Object? isReturnable = freezed,
    Object? isDeliverable = freezed,
    Object? cartQuantity = freezed,
    Object? isAddedWishlist = freezed,
    Object? ratingData = freezed,
  }) {
    return _then(_$VendorProductDetailsDataImpl(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productDescr: freezed == productDescr
          ? _value.productDescr
          : productDescr // ignore: cast_nullable_to_non_nullable
              as String?,
      productBarcode: freezed == productBarcode
          ? _value.productBarcode
          : productBarcode // ignore: cast_nullable_to_non_nullable
              as String?,
      productImage: freezed == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String?,
      productPrice: freezed == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      productQuantityType: freezed == productQuantityType
          ? _value.productQuantityType
          : productQuantityType // ignore: cast_nullable_to_non_nullable
              as String?,
      productStatus: freezed == productStatus
          ? _value.productStatus
          : productStatus // ignore: cast_nullable_to_non_nullable
              as double?,
      vendorName: freezed == vendorName
          ? _value.vendorName
          : vendorName // ignore: cast_nullable_to_non_nullable
              as String?,
      vendorSlug: freezed == vendorSlug
          ? _value.vendorSlug
          : vendorSlug // ignore: cast_nullable_to_non_nullable
              as String?,
      isReturnable: freezed == isReturnable
          ? _value.isReturnable
          : isReturnable // ignore: cast_nullable_to_non_nullable
              as double?,
      isDeliverable: freezed == isDeliverable
          ? _value.isDeliverable
          : isDeliverable // ignore: cast_nullable_to_non_nullable
              as bool?,
      cartQuantity: freezed == cartQuantity
          ? _value.cartQuantity
          : cartQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      isAddedWishlist: freezed == isAddedWishlist
          ? _value.isAddedWishlist
          : isAddedWishlist // ignore: cast_nullable_to_non_nullable
              as bool?,
      ratingData: freezed == ratingData
          ? _value.ratingData
          : ratingData // ignore: cast_nullable_to_non_nullable
              as RatingData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorProductDetailsDataImpl implements _VendorProductDetailsData {
  _$VendorProductDetailsDataImpl(
      {@JsonKey(name: 'product_id') this.productId,
      @JsonKey(name: 'product_name') this.productName,
      @JsonKey(name: 'product_descr') this.productDescr,
      @JsonKey(name: 'product_barcode') this.productBarcode,
      @JsonKey(name: 'product_image') this.productImage,
      @JsonKey(name: 'product_price') this.productPrice,
      @JsonKey(name: 'product_quantity_type') this.productQuantityType,
      @JsonKey(name: 'product_status') this.productStatus,
      @JsonKey(name: 'vendor_name') this.vendorName,
      @JsonKey(name: 'vendor_slug') this.vendorSlug,
      @JsonKey(name: 'is_returnable') this.isReturnable,
      @JsonKey(name: 'is_deliverable') this.isDeliverable,
      @JsonKey(name: 'cart_quantity') this.cartQuantity,
      @JsonKey(name: 'is_added_wishlist') this.isAddedWishlist,
      @JsonKey(name: 'rating_data') this.ratingData});

  factory _$VendorProductDetailsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorProductDetailsDataImplFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final int? productId;
  @override
  @JsonKey(name: 'product_name')
  final String? productName;
  @override
  @JsonKey(name: 'product_descr')
  final String? productDescr;
  @override
  @JsonKey(name: 'product_barcode')
  final String? productBarcode;
  @override
  @JsonKey(name: 'product_image')
  final String? productImage;
  @override
  @JsonKey(name: 'product_price')
  final double? productPrice;
  @override
  @JsonKey(name: 'product_quantity_type')
  final String? productQuantityType;
  @override
  @JsonKey(name: 'product_status')
  final double? productStatus;
  @override
  @JsonKey(name: 'vendor_name')
  final String? vendorName;
  @override
  @JsonKey(name: 'vendor_slug')
  final String? vendorSlug;
  @override
  @JsonKey(name: 'is_returnable')
  final double? isReturnable;
  @override
  @JsonKey(name: 'is_deliverable')
  final bool? isDeliverable;
  @override
  @JsonKey(name: 'cart_quantity')
  final int? cartQuantity;
  @override
  @JsonKey(name: 'is_added_wishlist')
  final bool? isAddedWishlist;
  @override
  @JsonKey(name: 'rating_data')
  final RatingData? ratingData;

  @override
  String toString() {
    return 'VendorProductDetailsData(productId: $productId, productName: $productName, productDescr: $productDescr, productBarcode: $productBarcode, productImage: $productImage, productPrice: $productPrice, productQuantityType: $productQuantityType, productStatus: $productStatus, vendorName: $vendorName, vendorSlug: $vendorSlug, isReturnable: $isReturnable, isDeliverable: $isDeliverable, cartQuantity: $cartQuantity, isAddedWishlist: $isAddedWishlist, ratingData: $ratingData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorProductDetailsDataImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productDescr, productDescr) ||
                other.productDescr == productDescr) &&
            (identical(other.productBarcode, productBarcode) ||
                other.productBarcode == productBarcode) &&
            (identical(other.productImage, productImage) ||
                other.productImage == productImage) &&
            (identical(other.productPrice, productPrice) ||
                other.productPrice == productPrice) &&
            (identical(other.productQuantityType, productQuantityType) ||
                other.productQuantityType == productQuantityType) &&
            (identical(other.productStatus, productStatus) ||
                other.productStatus == productStatus) &&
            (identical(other.vendorName, vendorName) ||
                other.vendorName == vendorName) &&
            (identical(other.vendorSlug, vendorSlug) ||
                other.vendorSlug == vendorSlug) &&
            (identical(other.isReturnable, isReturnable) ||
                other.isReturnable == isReturnable) &&
            (identical(other.isDeliverable, isDeliverable) ||
                other.isDeliverable == isDeliverable) &&
            (identical(other.cartQuantity, cartQuantity) ||
                other.cartQuantity == cartQuantity) &&
            (identical(other.isAddedWishlist, isAddedWishlist) ||
                other.isAddedWishlist == isAddedWishlist) &&
            (identical(other.ratingData, ratingData) ||
                other.ratingData == ratingData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productId,
      productName,
      productDescr,
      productBarcode,
      productImage,
      productPrice,
      productQuantityType,
      productStatus,
      vendorName,
      vendorSlug,
      isReturnable,
      isDeliverable,
      cartQuantity,
      isAddedWishlist,
      ratingData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorProductDetailsDataImplCopyWith<_$VendorProductDetailsDataImpl>
      get copyWith => __$$VendorProductDetailsDataImplCopyWithImpl<
          _$VendorProductDetailsDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorProductDetailsDataImplToJson(
      this,
    );
  }
}

abstract class _VendorProductDetailsData implements VendorProductDetailsData {
  factory _VendorProductDetailsData(
      {@JsonKey(name: 'product_id') final int? productId,
      @JsonKey(name: 'product_name') final String? productName,
      @JsonKey(name: 'product_descr') final String? productDescr,
      @JsonKey(name: 'product_barcode') final String? productBarcode,
      @JsonKey(name: 'product_image') final String? productImage,
      @JsonKey(name: 'product_price') final double? productPrice,
      @JsonKey(name: 'product_quantity_type') final String? productQuantityType,
      @JsonKey(name: 'product_status') final double? productStatus,
      @JsonKey(name: 'vendor_name') final String? vendorName,
      @JsonKey(name: 'vendor_slug') final String? vendorSlug,
      @JsonKey(name: 'is_returnable') final double? isReturnable,
      @JsonKey(name: 'is_deliverable') final bool? isDeliverable,
      @JsonKey(name: 'cart_quantity') final int? cartQuantity,
      @JsonKey(name: 'is_added_wishlist') final bool? isAddedWishlist,
      @JsonKey(name: 'rating_data')
      final RatingData? ratingData}) = _$VendorProductDetailsDataImpl;

  factory _VendorProductDetailsData.fromJson(Map<String, dynamic> json) =
      _$VendorProductDetailsDataImpl.fromJson;

  @override
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  @JsonKey(name: 'product_name')
  String? get productName;
  @override
  @JsonKey(name: 'product_descr')
  String? get productDescr;
  @override
  @JsonKey(name: 'product_barcode')
  String? get productBarcode;
  @override
  @JsonKey(name: 'product_image')
  String? get productImage;
  @override
  @JsonKey(name: 'product_price')
  double? get productPrice;
  @override
  @JsonKey(name: 'product_quantity_type')
  String? get productQuantityType;
  @override
  @JsonKey(name: 'product_status')
  double? get productStatus;
  @override
  @JsonKey(name: 'vendor_name')
  String? get vendorName;
  @override
  @JsonKey(name: 'vendor_slug')
  String? get vendorSlug;
  @override
  @JsonKey(name: 'is_returnable')
  double? get isReturnable;
  @override
  @JsonKey(name: 'is_deliverable')
  bool? get isDeliverable;
  @override
  @JsonKey(name: 'cart_quantity')
  int? get cartQuantity;
  @override
  @JsonKey(name: 'is_added_wishlist')
  bool? get isAddedWishlist;
  @override
  @JsonKey(name: 'rating_data')
  RatingData? get ratingData;
  @override
  @JsonKey(ignore: true)
  _$$VendorProductDetailsDataImplCopyWith<_$VendorProductDetailsDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
