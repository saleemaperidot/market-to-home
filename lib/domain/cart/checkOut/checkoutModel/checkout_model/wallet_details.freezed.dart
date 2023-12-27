// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletDetails _$WalletDetailsFromJson(Map<String, dynamic> json) {
  return _WalletDetails.fromJson(json);
}

/// @nodoc
mixin _$WalletDetails {
  @JsonKey(name: 'is_active')
  int? get isActive => throw _privateConstructorUsedError;
  double? get balance => throw _privateConstructorUsedError;
  @JsonKey(name: 'redeemable_points')
  int? get redeemablePoints => throw _privateConstructorUsedError;
  @JsonKey(name: 'balance_points')
  double? get balancePoints => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'redeemable_currency')
  double? get redeemableCurrency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletDetailsCopyWith<WalletDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletDetailsCopyWith<$Res> {
  factory $WalletDetailsCopyWith(
          WalletDetails value, $Res Function(WalletDetails) then) =
      _$WalletDetailsCopyWithImpl<$Res, WalletDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_active') int? isActive,
      double? balance,
      @JsonKey(name: 'redeemable_points') int? redeemablePoints,
      @JsonKey(name: 'balance_points') double? balancePoints,
      String? currency,
      @JsonKey(name: 'redeemable_currency') double? redeemableCurrency});
}

/// @nodoc
class _$WalletDetailsCopyWithImpl<$Res, $Val extends WalletDetails>
    implements $WalletDetailsCopyWith<$Res> {
  _$WalletDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = freezed,
    Object? balance = freezed,
    Object? redeemablePoints = freezed,
    Object? balancePoints = freezed,
    Object? currency = freezed,
    Object? redeemableCurrency = freezed,
  }) {
    return _then(_value.copyWith(
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      redeemablePoints: freezed == redeemablePoints
          ? _value.redeemablePoints
          : redeemablePoints // ignore: cast_nullable_to_non_nullable
              as int?,
      balancePoints: freezed == balancePoints
          ? _value.balancePoints
          : balancePoints // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      redeemableCurrency: freezed == redeemableCurrency
          ? _value.redeemableCurrency
          : redeemableCurrency // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletDetailsImplCopyWith<$Res>
    implements $WalletDetailsCopyWith<$Res> {
  factory _$$WalletDetailsImplCopyWith(
          _$WalletDetailsImpl value, $Res Function(_$WalletDetailsImpl) then) =
      __$$WalletDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_active') int? isActive,
      double? balance,
      @JsonKey(name: 'redeemable_points') int? redeemablePoints,
      @JsonKey(name: 'balance_points') double? balancePoints,
      String? currency,
      @JsonKey(name: 'redeemable_currency') double? redeemableCurrency});
}

/// @nodoc
class __$$WalletDetailsImplCopyWithImpl<$Res>
    extends _$WalletDetailsCopyWithImpl<$Res, _$WalletDetailsImpl>
    implements _$$WalletDetailsImplCopyWith<$Res> {
  __$$WalletDetailsImplCopyWithImpl(
      _$WalletDetailsImpl _value, $Res Function(_$WalletDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = freezed,
    Object? balance = freezed,
    Object? redeemablePoints = freezed,
    Object? balancePoints = freezed,
    Object? currency = freezed,
    Object? redeemableCurrency = freezed,
  }) {
    return _then(_$WalletDetailsImpl(
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int?,
      balance: freezed == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      redeemablePoints: freezed == redeemablePoints
          ? _value.redeemablePoints
          : redeemablePoints // ignore: cast_nullable_to_non_nullable
              as int?,
      balancePoints: freezed == balancePoints
          ? _value.balancePoints
          : balancePoints // ignore: cast_nullable_to_non_nullable
              as double?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      redeemableCurrency: freezed == redeemableCurrency
          ? _value.redeemableCurrency
          : redeemableCurrency // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletDetailsImpl implements _WalletDetails {
  _$WalletDetailsImpl(
      {@JsonKey(name: 'is_active') this.isActive,
      this.balance,
      @JsonKey(name: 'redeemable_points') this.redeemablePoints,
      @JsonKey(name: 'balance_points') this.balancePoints,
      this.currency,
      @JsonKey(name: 'redeemable_currency') this.redeemableCurrency});

  factory _$WalletDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'is_active')
  final int? isActive;
  @override
  final double? balance;
  @override
  @JsonKey(name: 'redeemable_points')
  final int? redeemablePoints;
  @override
  @JsonKey(name: 'balance_points')
  final double? balancePoints;
  @override
  final String? currency;
  @override
  @JsonKey(name: 'redeemable_currency')
  final double? redeemableCurrency;

  @override
  String toString() {
    return 'WalletDetails(isActive: $isActive, balance: $balance, redeemablePoints: $redeemablePoints, balancePoints: $balancePoints, currency: $currency, redeemableCurrency: $redeemableCurrency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletDetailsImpl &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.redeemablePoints, redeemablePoints) ||
                other.redeemablePoints == redeemablePoints) &&
            (identical(other.balancePoints, balancePoints) ||
                other.balancePoints == balancePoints) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.redeemableCurrency, redeemableCurrency) ||
                other.redeemableCurrency == redeemableCurrency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isActive, balance,
      redeemablePoints, balancePoints, currency, redeemableCurrency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletDetailsImplCopyWith<_$WalletDetailsImpl> get copyWith =>
      __$$WalletDetailsImplCopyWithImpl<_$WalletDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletDetailsImplToJson(
      this,
    );
  }
}

abstract class _WalletDetails implements WalletDetails {
  factory _WalletDetails(
      {@JsonKey(name: 'is_active') final int? isActive,
      final double? balance,
      @JsonKey(name: 'redeemable_points') final int? redeemablePoints,
      @JsonKey(name: 'balance_points') final double? balancePoints,
      final String? currency,
      @JsonKey(name: 'redeemable_currency')
      final double? redeemableCurrency}) = _$WalletDetailsImpl;

  factory _WalletDetails.fromJson(Map<String, dynamic> json) =
      _$WalletDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'is_active')
  int? get isActive;
  @override
  double? get balance;
  @override
  @JsonKey(name: 'redeemable_points')
  int? get redeemablePoints;
  @override
  @JsonKey(name: 'balance_points')
  double? get balancePoints;
  @override
  String? get currency;
  @override
  @JsonKey(name: 'redeemable_currency')
  double? get redeemableCurrency;
  @override
  @JsonKey(ignore: true)
  _$$WalletDetailsImplCopyWith<_$WalletDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
