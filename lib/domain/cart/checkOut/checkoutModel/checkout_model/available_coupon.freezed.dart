// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_coupon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AvailableCoupon _$AvailableCouponFromJson(Map<String, dynamic> json) {
  return _AvailableCoupon.fromJson(json);
}

/// @nodoc
mixin _$AvailableCoupon {
  @JsonKey(name: 'coupon_code')
  String? get couponCode => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_applicable')
  bool? get isApplicable => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableCouponCopyWith<AvailableCoupon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableCouponCopyWith<$Res> {
  factory $AvailableCouponCopyWith(
          AvailableCoupon value, $Res Function(AvailableCoupon) then) =
      _$AvailableCouponCopyWithImpl<$Res, AvailableCoupon>;
  @useResult
  $Res call(
      {@JsonKey(name: 'coupon_code') String? couponCode,
      String? description,
      @JsonKey(name: 'is_applicable') bool? isApplicable});
}

/// @nodoc
class _$AvailableCouponCopyWithImpl<$Res, $Val extends AvailableCoupon>
    implements $AvailableCouponCopyWith<$Res> {
  _$AvailableCouponCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponCode = freezed,
    Object? description = freezed,
    Object? isApplicable = freezed,
  }) {
    return _then(_value.copyWith(
      couponCode: freezed == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isApplicable: freezed == isApplicable
          ? _value.isApplicable
          : isApplicable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailableCouponImplCopyWith<$Res>
    implements $AvailableCouponCopyWith<$Res> {
  factory _$$AvailableCouponImplCopyWith(_$AvailableCouponImpl value,
          $Res Function(_$AvailableCouponImpl) then) =
      __$$AvailableCouponImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'coupon_code') String? couponCode,
      String? description,
      @JsonKey(name: 'is_applicable') bool? isApplicable});
}

/// @nodoc
class __$$AvailableCouponImplCopyWithImpl<$Res>
    extends _$AvailableCouponCopyWithImpl<$Res, _$AvailableCouponImpl>
    implements _$$AvailableCouponImplCopyWith<$Res> {
  __$$AvailableCouponImplCopyWithImpl(
      _$AvailableCouponImpl _value, $Res Function(_$AvailableCouponImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponCode = freezed,
    Object? description = freezed,
    Object? isApplicable = freezed,
  }) {
    return _then(_$AvailableCouponImpl(
      couponCode: freezed == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      isApplicable: freezed == isApplicable
          ? _value.isApplicable
          : isApplicable // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailableCouponImpl implements _AvailableCoupon {
  _$AvailableCouponImpl(
      {@JsonKey(name: 'coupon_code') this.couponCode,
      this.description,
      @JsonKey(name: 'is_applicable') this.isApplicable});

  factory _$AvailableCouponImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailableCouponImplFromJson(json);

  @override
  @JsonKey(name: 'coupon_code')
  final String? couponCode;
  @override
  final String? description;
  @override
  @JsonKey(name: 'is_applicable')
  final bool? isApplicable;

  @override
  String toString() {
    return 'AvailableCoupon(couponCode: $couponCode, description: $description, isApplicable: $isApplicable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableCouponImpl &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isApplicable, isApplicable) ||
                other.isApplicable == isApplicable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, couponCode, description, isApplicable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableCouponImplCopyWith<_$AvailableCouponImpl> get copyWith =>
      __$$AvailableCouponImplCopyWithImpl<_$AvailableCouponImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailableCouponImplToJson(
      this,
    );
  }
}

abstract class _AvailableCoupon implements AvailableCoupon {
  factory _AvailableCoupon(
          {@JsonKey(name: 'coupon_code') final String? couponCode,
          final String? description,
          @JsonKey(name: 'is_applicable') final bool? isApplicable}) =
      _$AvailableCouponImpl;

  factory _AvailableCoupon.fromJson(Map<String, dynamic> json) =
      _$AvailableCouponImpl.fromJson;

  @override
  @JsonKey(name: 'coupon_code')
  String? get couponCode;
  @override
  String? get description;
  @override
  @JsonKey(name: 'is_applicable')
  bool? get isApplicable;
  @override
  @JsonKey(ignore: true)
  _$$AvailableCouponImplCopyWith<_$AvailableCouponImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
