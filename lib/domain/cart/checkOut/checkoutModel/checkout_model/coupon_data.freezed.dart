// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CouponData _$CouponDataFromJson(Map<String, dynamic> json) {
  return _CouponData.fromJson(json);
}

/// @nodoc
mixin _$CouponData {
  @JsonKey(name: 'status')
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'applied_rule')
  bool? get appliedRule => throw _privateConstructorUsedError;
  @JsonKey(name: 'coupon_code')
  CouponCode? get couponCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponDataCopyWith<CouponData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponDataCopyWith<$Res> {
  factory $CouponDataCopyWith(
          CouponData value, $Res Function(CouponData) then) =
      _$CouponDataCopyWithImpl<$Res, CouponData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'applied_rule') bool? appliedRule,
      @JsonKey(name: 'coupon_code') CouponCode? couponCode});

  $CouponCodeCopyWith<$Res>? get couponCode;
}

/// @nodoc
class _$CouponDataCopyWithImpl<$Res, $Val extends CouponData>
    implements $CouponDataCopyWith<$Res> {
  _$CouponDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? appliedRule = freezed,
    Object? couponCode = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      appliedRule: freezed == appliedRule
          ? _value.appliedRule
          : appliedRule // ignore: cast_nullable_to_non_nullable
              as bool?,
      couponCode: freezed == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as CouponCode?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CouponCodeCopyWith<$Res>? get couponCode {
    if (_value.couponCode == null) {
      return null;
    }

    return $CouponCodeCopyWith<$Res>(_value.couponCode!, (value) {
      return _then(_value.copyWith(couponCode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CouponDataImplCopyWith<$Res>
    implements $CouponDataCopyWith<$Res> {
  factory _$$CouponDataImplCopyWith(
          _$CouponDataImpl value, $Res Function(_$CouponDataImpl) then) =
      __$$CouponDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') bool? status,
      @JsonKey(name: 'applied_rule') bool? appliedRule,
      @JsonKey(name: 'coupon_code') CouponCode? couponCode});

  @override
  $CouponCodeCopyWith<$Res>? get couponCode;
}

/// @nodoc
class __$$CouponDataImplCopyWithImpl<$Res>
    extends _$CouponDataCopyWithImpl<$Res, _$CouponDataImpl>
    implements _$$CouponDataImplCopyWith<$Res> {
  __$$CouponDataImplCopyWithImpl(
      _$CouponDataImpl _value, $Res Function(_$CouponDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? appliedRule = freezed,
    Object? couponCode = freezed,
  }) {
    return _then(_$CouponDataImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      appliedRule: freezed == appliedRule
          ? _value.appliedRule
          : appliedRule // ignore: cast_nullable_to_non_nullable
              as bool?,
      couponCode: freezed == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as CouponCode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CouponDataImpl implements _CouponData {
  _$CouponDataImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'applied_rule') this.appliedRule,
      @JsonKey(name: 'coupon_code') this.couponCode});

  factory _$CouponDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CouponDataImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final bool? status;
  @override
  @JsonKey(name: 'applied_rule')
  final bool? appliedRule;
  @override
  @JsonKey(name: 'coupon_code')
  final CouponCode? couponCode;

  @override
  String toString() {
    return 'CouponData(status: $status, appliedRule: $appliedRule, couponCode: $couponCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponDataImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.appliedRule, appliedRule) ||
                other.appliedRule == appliedRule) &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, appliedRule, couponCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponDataImplCopyWith<_$CouponDataImpl> get copyWith =>
      __$$CouponDataImplCopyWithImpl<_$CouponDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CouponDataImplToJson(
      this,
    );
  }
}

abstract class _CouponData implements CouponData {
  factory _CouponData(
          {@JsonKey(name: 'status') final bool? status,
          @JsonKey(name: 'applied_rule') final bool? appliedRule,
          @JsonKey(name: 'coupon_code') final CouponCode? couponCode}) =
      _$CouponDataImpl;

  factory _CouponData.fromJson(Map<String, dynamic> json) =
      _$CouponDataImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  bool? get status;
  @override
  @JsonKey(name: 'applied_rule')
  bool? get appliedRule;
  @override
  @JsonKey(name: 'coupon_code')
  CouponCode? get couponCode;
  @override
  @JsonKey(ignore: true)
  _$$CouponDataImplCopyWith<_$CouponDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
