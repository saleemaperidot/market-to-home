// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'referral_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReferralData _$ReferralDataFromJson(Map<String, dynamic> json) {
  return _ReferralData.fromJson(json);
}

/// @nodoc
mixin _$ReferralData {
  String? get referralCode => throw _privateConstructorUsedError;
  dynamic get referredBy => throw _privateConstructorUsedError;
  int? get totalReferralCount => throw _privateConstructorUsedError;
  String? get referralReward => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferralDataCopyWith<ReferralData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralDataCopyWith<$Res> {
  factory $ReferralDataCopyWith(
          ReferralData value, $Res Function(ReferralData) then) =
      _$ReferralDataCopyWithImpl<$Res, ReferralData>;
  @useResult
  $Res call(
      {String? referralCode,
      dynamic referredBy,
      int? totalReferralCount,
      String? referralReward});
}

/// @nodoc
class _$ReferralDataCopyWithImpl<$Res, $Val extends ReferralData>
    implements $ReferralDataCopyWith<$Res> {
  _$ReferralDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referralCode = freezed,
    Object? referredBy = freezed,
    Object? totalReferralCount = freezed,
    Object? referralReward = freezed,
  }) {
    return _then(_value.copyWith(
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      referredBy: freezed == referredBy
          ? _value.referredBy
          : referredBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalReferralCount: freezed == totalReferralCount
          ? _value.totalReferralCount
          : totalReferralCount // ignore: cast_nullable_to_non_nullable
              as int?,
      referralReward: freezed == referralReward
          ? _value.referralReward
          : referralReward // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferralDataImplCopyWith<$Res>
    implements $ReferralDataCopyWith<$Res> {
  factory _$$ReferralDataImplCopyWith(
          _$ReferralDataImpl value, $Res Function(_$ReferralDataImpl) then) =
      __$$ReferralDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? referralCode,
      dynamic referredBy,
      int? totalReferralCount,
      String? referralReward});
}

/// @nodoc
class __$$ReferralDataImplCopyWithImpl<$Res>
    extends _$ReferralDataCopyWithImpl<$Res, _$ReferralDataImpl>
    implements _$$ReferralDataImplCopyWith<$Res> {
  __$$ReferralDataImplCopyWithImpl(
      _$ReferralDataImpl _value, $Res Function(_$ReferralDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referralCode = freezed,
    Object? referredBy = freezed,
    Object? totalReferralCount = freezed,
    Object? referralReward = freezed,
  }) {
    return _then(_$ReferralDataImpl(
      referralCode: freezed == referralCode
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      referredBy: freezed == referredBy
          ? _value.referredBy
          : referredBy // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalReferralCount: freezed == totalReferralCount
          ? _value.totalReferralCount
          : totalReferralCount // ignore: cast_nullable_to_non_nullable
              as int?,
      referralReward: freezed == referralReward
          ? _value.referralReward
          : referralReward // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferralDataImpl implements _ReferralData {
  _$ReferralDataImpl(
      {this.referralCode,
      this.referredBy,
      this.totalReferralCount,
      this.referralReward});

  factory _$ReferralDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferralDataImplFromJson(json);

  @override
  final String? referralCode;
  @override
  final dynamic referredBy;
  @override
  final int? totalReferralCount;
  @override
  final String? referralReward;

  @override
  String toString() {
    return 'ReferralData(referralCode: $referralCode, referredBy: $referredBy, totalReferralCount: $totalReferralCount, referralReward: $referralReward)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferralDataImpl &&
            (identical(other.referralCode, referralCode) ||
                other.referralCode == referralCode) &&
            const DeepCollectionEquality()
                .equals(other.referredBy, referredBy) &&
            (identical(other.totalReferralCount, totalReferralCount) ||
                other.totalReferralCount == totalReferralCount) &&
            (identical(other.referralReward, referralReward) ||
                other.referralReward == referralReward));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      referralCode,
      const DeepCollectionEquality().hash(referredBy),
      totalReferralCount,
      referralReward);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferralDataImplCopyWith<_$ReferralDataImpl> get copyWith =>
      __$$ReferralDataImplCopyWithImpl<_$ReferralDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferralDataImplToJson(
      this,
    );
  }
}

abstract class _ReferralData implements ReferralData {
  factory _ReferralData(
      {final String? referralCode,
      final dynamic referredBy,
      final int? totalReferralCount,
      final String? referralReward}) = _$ReferralDataImpl;

  factory _ReferralData.fromJson(Map<String, dynamic> json) =
      _$ReferralDataImpl.fromJson;

  @override
  String? get referralCode;
  @override
  dynamic get referredBy;
  @override
  int? get totalReferralCount;
  @override
  String? get referralReward;
  @override
  @JsonKey(ignore: true)
  _$$ReferralDataImplCopyWith<_$ReferralDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
