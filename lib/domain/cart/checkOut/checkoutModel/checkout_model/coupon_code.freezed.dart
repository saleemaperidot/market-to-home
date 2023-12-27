// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_code.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CouponCode _$CouponCodeFromJson(Map<String, dynamic> json) {
  return _CouponCode.fromJson(json);
}

/// @nodoc
mixin _$CouponCode {
  @JsonKey(name: 'coupon_id')
  int? get couponId => throw _privateConstructorUsedError;
  @JsonKey(name: 'coupon_name')
  String? get couponName => throw _privateConstructorUsedError;
  @JsonKey(name: 'validation_success')
  bool? get validationSuccess => throw _privateConstructorUsedError;
  @JsonKey(name: 'coupon_data')
  CouponDatas? get couponDatas => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponCodeCopyWith<CouponCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponCodeCopyWith<$Res> {
  factory $CouponCodeCopyWith(
          CouponCode value, $Res Function(CouponCode) then) =
      _$CouponCodeCopyWithImpl<$Res, CouponCode>;
  @useResult
  $Res call(
      {@JsonKey(name: 'coupon_id') int? couponId,
      @JsonKey(name: 'coupon_name') String? couponName,
      @JsonKey(name: 'validation_success') bool? validationSuccess,
      @JsonKey(name: 'coupon_data') CouponDatas? couponDatas});

  $CouponDatasCopyWith<$Res>? get couponDatas;
}

/// @nodoc
class _$CouponCodeCopyWithImpl<$Res, $Val extends CouponCode>
    implements $CouponCodeCopyWith<$Res> {
  _$CouponCodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponId = freezed,
    Object? couponName = freezed,
    Object? validationSuccess = freezed,
    Object? couponDatas = freezed,
  }) {
    return _then(_value.copyWith(
      couponId: freezed == couponId
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as int?,
      couponName: freezed == couponName
          ? _value.couponName
          : couponName // ignore: cast_nullable_to_non_nullable
              as String?,
      validationSuccess: freezed == validationSuccess
          ? _value.validationSuccess
          : validationSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      couponDatas: freezed == couponDatas
          ? _value.couponDatas
          : couponDatas // ignore: cast_nullable_to_non_nullable
              as CouponDatas?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CouponDatasCopyWith<$Res>? get couponDatas {
    if (_value.couponDatas == null) {
      return null;
    }

    return $CouponDatasCopyWith<$Res>(_value.couponDatas!, (value) {
      return _then(_value.copyWith(couponDatas: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CouponCodeImplCopyWith<$Res>
    implements $CouponCodeCopyWith<$Res> {
  factory _$$CouponCodeImplCopyWith(
          _$CouponCodeImpl value, $Res Function(_$CouponCodeImpl) then) =
      __$$CouponCodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'coupon_id') int? couponId,
      @JsonKey(name: 'coupon_name') String? couponName,
      @JsonKey(name: 'validation_success') bool? validationSuccess,
      @JsonKey(name: 'coupon_data') CouponDatas? couponDatas});

  @override
  $CouponDatasCopyWith<$Res>? get couponDatas;
}

/// @nodoc
class __$$CouponCodeImplCopyWithImpl<$Res>
    extends _$CouponCodeCopyWithImpl<$Res, _$CouponCodeImpl>
    implements _$$CouponCodeImplCopyWith<$Res> {
  __$$CouponCodeImplCopyWithImpl(
      _$CouponCodeImpl _value, $Res Function(_$CouponCodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponId = freezed,
    Object? couponName = freezed,
    Object? validationSuccess = freezed,
    Object? couponDatas = freezed,
  }) {
    return _then(_$CouponCodeImpl(
      couponId: freezed == couponId
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as int?,
      couponName: freezed == couponName
          ? _value.couponName
          : couponName // ignore: cast_nullable_to_non_nullable
              as String?,
      validationSuccess: freezed == validationSuccess
          ? _value.validationSuccess
          : validationSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      couponDatas: freezed == couponDatas
          ? _value.couponDatas
          : couponDatas // ignore: cast_nullable_to_non_nullable
              as CouponDatas?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CouponCodeImpl implements _CouponCode {
  _$CouponCodeImpl(
      {@JsonKey(name: 'coupon_id') this.couponId,
      @JsonKey(name: 'coupon_name') this.couponName,
      @JsonKey(name: 'validation_success') this.validationSuccess,
      @JsonKey(name: 'coupon_data') this.couponDatas});

  factory _$CouponCodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$CouponCodeImplFromJson(json);

  @override
  @JsonKey(name: 'coupon_id')
  final int? couponId;
  @override
  @JsonKey(name: 'coupon_name')
  final String? couponName;
  @override
  @JsonKey(name: 'validation_success')
  final bool? validationSuccess;
  @override
  @JsonKey(name: 'coupon_data')
  final CouponDatas? couponDatas;

  @override
  String toString() {
    return 'CouponCode(couponId: $couponId, couponName: $couponName, validationSuccess: $validationSuccess, couponDatas: $couponDatas)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponCodeImpl &&
            (identical(other.couponId, couponId) ||
                other.couponId == couponId) &&
            (identical(other.couponName, couponName) ||
                other.couponName == couponName) &&
            (identical(other.validationSuccess, validationSuccess) ||
                other.validationSuccess == validationSuccess) &&
            (identical(other.couponDatas, couponDatas) ||
                other.couponDatas == couponDatas));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, couponId, couponName, validationSuccess, couponDatas);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponCodeImplCopyWith<_$CouponCodeImpl> get copyWith =>
      __$$CouponCodeImplCopyWithImpl<_$CouponCodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CouponCodeImplToJson(
      this,
    );
  }
}

abstract class _CouponCode implements CouponCode {
  factory _CouponCode(
          {@JsonKey(name: 'coupon_id') final int? couponId,
          @JsonKey(name: 'coupon_name') final String? couponName,
          @JsonKey(name: 'validation_success') final bool? validationSuccess,
          @JsonKey(name: 'coupon_data') final CouponDatas? couponDatas}) =
      _$CouponCodeImpl;

  factory _CouponCode.fromJson(Map<String, dynamic> json) =
      _$CouponCodeImpl.fromJson;

  @override
  @JsonKey(name: 'coupon_id')
  int? get couponId;
  @override
  @JsonKey(name: 'coupon_name')
  String? get couponName;
  @override
  @JsonKey(name: 'validation_success')
  bool? get validationSuccess;
  @override
  @JsonKey(name: 'coupon_data')
  CouponDatas? get couponDatas;
  @override
  @JsonKey(ignore: true)
  _$$CouponCodeImplCopyWith<_$CouponCodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
