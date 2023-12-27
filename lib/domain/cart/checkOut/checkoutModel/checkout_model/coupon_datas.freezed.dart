// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_datas.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CouponDatas _$CouponDatasFromJson(Map<String, dynamic> json) {
  return _CouponDatas.fromJson(json);
}

/// @nodoc
mixin _$CouponDatas {
  @JsonKey(name: 'discount')
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'coupon_value')
  double? get couponAalue => throw _privateConstructorUsedError;
  @JsonKey(name: 'coupon_amount')
  double? get couponAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_type')
  String? get discountType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponDatasCopyWith<CouponDatas> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponDatasCopyWith<$Res> {
  factory $CouponDatasCopyWith(
          CouponDatas value, $Res Function(CouponDatas) then) =
      _$CouponDatasCopyWithImpl<$Res, CouponDatas>;
  @useResult
  $Res call(
      {@JsonKey(name: 'discount') double? discount,
      @JsonKey(name: 'coupon_value') double? couponAalue,
      @JsonKey(name: 'coupon_amount') double? couponAmount,
      @JsonKey(name: 'discount_type') String? discountType});
}

/// @nodoc
class _$CouponDatasCopyWithImpl<$Res, $Val extends CouponDatas>
    implements $CouponDatasCopyWith<$Res> {
  _$CouponDatasCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = freezed,
    Object? couponAalue = freezed,
    Object? couponAmount = freezed,
    Object? discountType = freezed,
  }) {
    return _then(_value.copyWith(
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      couponAalue: freezed == couponAalue
          ? _value.couponAalue
          : couponAalue // ignore: cast_nullable_to_non_nullable
              as double?,
      couponAmount: freezed == couponAmount
          ? _value.couponAmount
          : couponAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CouponDatasImplCopyWith<$Res>
    implements $CouponDatasCopyWith<$Res> {
  factory _$$CouponDatasImplCopyWith(
          _$CouponDatasImpl value, $Res Function(_$CouponDatasImpl) then) =
      __$$CouponDatasImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'discount') double? discount,
      @JsonKey(name: 'coupon_value') double? couponAalue,
      @JsonKey(name: 'coupon_amount') double? couponAmount,
      @JsonKey(name: 'discount_type') String? discountType});
}

/// @nodoc
class __$$CouponDatasImplCopyWithImpl<$Res>
    extends _$CouponDatasCopyWithImpl<$Res, _$CouponDatasImpl>
    implements _$$CouponDatasImplCopyWith<$Res> {
  __$$CouponDatasImplCopyWithImpl(
      _$CouponDatasImpl _value, $Res Function(_$CouponDatasImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = freezed,
    Object? couponAalue = freezed,
    Object? couponAmount = freezed,
    Object? discountType = freezed,
  }) {
    return _then(_$CouponDatasImpl(
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      couponAalue: freezed == couponAalue
          ? _value.couponAalue
          : couponAalue // ignore: cast_nullable_to_non_nullable
              as double?,
      couponAmount: freezed == couponAmount
          ? _value.couponAmount
          : couponAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      discountType: freezed == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CouponDatasImpl implements _CouponDatas {
  _$CouponDatasImpl(
      {@JsonKey(name: 'discount') this.discount,
      @JsonKey(name: 'coupon_value') this.couponAalue,
      @JsonKey(name: 'coupon_amount') this.couponAmount,
      @JsonKey(name: 'discount_type') this.discountType});

  factory _$CouponDatasImpl.fromJson(Map<String, dynamic> json) =>
      _$$CouponDatasImplFromJson(json);

  @override
  @JsonKey(name: 'discount')
  final double? discount;
  @override
  @JsonKey(name: 'coupon_value')
  final double? couponAalue;
  @override
  @JsonKey(name: 'coupon_amount')
  final double? couponAmount;
  @override
  @JsonKey(name: 'discount_type')
  final String? discountType;

  @override
  String toString() {
    return 'CouponDatas(discount: $discount, couponAalue: $couponAalue, couponAmount: $couponAmount, discountType: $discountType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponDatasImpl &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.couponAalue, couponAalue) ||
                other.couponAalue == couponAalue) &&
            (identical(other.couponAmount, couponAmount) ||
                other.couponAmount == couponAmount) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, discount, couponAalue, couponAmount, discountType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponDatasImplCopyWith<_$CouponDatasImpl> get copyWith =>
      __$$CouponDatasImplCopyWithImpl<_$CouponDatasImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CouponDatasImplToJson(
      this,
    );
  }
}

abstract class _CouponDatas implements CouponDatas {
  factory _CouponDatas(
          {@JsonKey(name: 'discount') final double? discount,
          @JsonKey(name: 'coupon_value') final double? couponAalue,
          @JsonKey(name: 'coupon_amount') final double? couponAmount,
          @JsonKey(name: 'discount_type') final String? discountType}) =
      _$CouponDatasImpl;

  factory _CouponDatas.fromJson(Map<String, dynamic> json) =
      _$CouponDatasImpl.fromJson;

  @override
  @JsonKey(name: 'discount')
  double? get discount;
  @override
  @JsonKey(name: 'coupon_value')
  double? get couponAalue;
  @override
  @JsonKey(name: 'coupon_amount')
  double? get couponAmount;
  @override
  @JsonKey(name: 'discount_type')
  String? get discountType;
  @override
  @JsonKey(ignore: true)
  _$$CouponDatasImplCopyWith<_$CouponDatasImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
