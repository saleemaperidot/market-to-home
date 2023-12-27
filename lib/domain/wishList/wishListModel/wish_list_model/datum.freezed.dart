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

WishListData _$WishListDataFromJson(Map<String, dynamic> json) {
  return _WishListData.fromJson(json);
}

/// @nodoc
mixin _$WishListData {
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_price')
  double? get productPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_image')
  String? get productImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_status')
  int? get productStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishListDataCopyWith<WishListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListDataCopyWith<$Res> {
  factory $WishListDataCopyWith(
          WishListData value, $Res Function(WishListData) then) =
      _$WishListDataCopyWithImpl<$Res, WishListData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'product_id') int? productId,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_price') double? productPrice,
      @JsonKey(name: 'product_image') String? productImage,
      @JsonKey(name: 'product_status') int? productStatus});
}

/// @nodoc
class _$WishListDataCopyWithImpl<$Res, $Val extends WishListData>
    implements $WishListDataCopyWith<$Res> {
  _$WishListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? productName = freezed,
    Object? productPrice = freezed,
    Object? productImage = freezed,
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
      productPrice: freezed == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      productImage: freezed == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String?,
      productStatus: freezed == productStatus
          ? _value.productStatus
          : productStatus // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishListDataImplCopyWith<$Res>
    implements $WishListDataCopyWith<$Res> {
  factory _$$WishListDataImplCopyWith(
          _$WishListDataImpl value, $Res Function(_$WishListDataImpl) then) =
      __$$WishListDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'product_id') int? productId,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_price') double? productPrice,
      @JsonKey(name: 'product_image') String? productImage,
      @JsonKey(name: 'product_status') int? productStatus});
}

/// @nodoc
class __$$WishListDataImplCopyWithImpl<$Res>
    extends _$WishListDataCopyWithImpl<$Res, _$WishListDataImpl>
    implements _$$WishListDataImplCopyWith<$Res> {
  __$$WishListDataImplCopyWithImpl(
      _$WishListDataImpl _value, $Res Function(_$WishListDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = freezed,
    Object? productName = freezed,
    Object? productPrice = freezed,
    Object? productImage = freezed,
    Object? productStatus = freezed,
  }) {
    return _then(_$WishListDataImpl(
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productPrice: freezed == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      productImage: freezed == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
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
class _$WishListDataImpl implements _WishListData {
  _$WishListDataImpl(
      {@JsonKey(name: 'product_id') this.productId,
      @JsonKey(name: 'product_name') this.productName,
      @JsonKey(name: 'product_price') this.productPrice,
      @JsonKey(name: 'product_image') this.productImage,
      @JsonKey(name: 'product_status') this.productStatus});

  factory _$WishListDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishListDataImplFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  final int? productId;
  @override
  @JsonKey(name: 'product_name')
  final String? productName;
  @override
  @JsonKey(name: 'product_price')
  final double? productPrice;
  @override
  @JsonKey(name: 'product_image')
  final String? productImage;
  @override
  @JsonKey(name: 'product_status')
  final int? productStatus;

  @override
  String toString() {
    return 'WishListData(productId: $productId, productName: $productName, productPrice: $productPrice, productImage: $productImage, productStatus: $productStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishListDataImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productPrice, productPrice) ||
                other.productPrice == productPrice) &&
            (identical(other.productImage, productImage) ||
                other.productImage == productImage) &&
            (identical(other.productStatus, productStatus) ||
                other.productStatus == productStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, productName,
      productPrice, productImage, productStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WishListDataImplCopyWith<_$WishListDataImpl> get copyWith =>
      __$$WishListDataImplCopyWithImpl<_$WishListDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishListDataImplToJson(
      this,
    );
  }
}

abstract class _WishListData implements WishListData {
  factory _WishListData(
          {@JsonKey(name: 'product_id') final int? productId,
          @JsonKey(name: 'product_name') final String? productName,
          @JsonKey(name: 'product_price') final double? productPrice,
          @JsonKey(name: 'product_image') final String? productImage,
          @JsonKey(name: 'product_status') final int? productStatus}) =
      _$WishListDataImpl;

  factory _WishListData.fromJson(Map<String, dynamic> json) =
      _$WishListDataImpl.fromJson;

  @override
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  @JsonKey(name: 'product_name')
  String? get productName;
  @override
  @JsonKey(name: 'product_price')
  double? get productPrice;
  @override
  @JsonKey(name: 'product_image')
  String? get productImage;
  @override
  @JsonKey(name: 'product_status')
  int? get productStatus;
  @override
  @JsonKey(ignore: true)
  _$$WishListDataImplCopyWith<_$WishListDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
