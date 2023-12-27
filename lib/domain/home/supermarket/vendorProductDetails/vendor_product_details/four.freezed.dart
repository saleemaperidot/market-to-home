// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'four.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Four _$FourFromJson(Map<String, dynamic> json) {
  return _Four.fromJson(json);
}

/// @nodoc
mixin _$Four {
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_formatted')
  String? get ratingFormatted => throw _privateConstructorUsedError;
  double? get percentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FourCopyWith<Four> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FourCopyWith<$Res> {
  factory $FourCopyWith(Four value, $Res Function(Four) then) =
      _$FourCopyWithImpl<$Res, Four>;
  @useResult
  $Res call(
      {double? rating,
      @JsonKey(name: 'rating_formatted') String? ratingFormatted,
      double? percentage});
}

/// @nodoc
class _$FourCopyWithImpl<$Res, $Val extends Four>
    implements $FourCopyWith<$Res> {
  _$FourCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? ratingFormatted = freezed,
    Object? percentage = freezed,
  }) {
    return _then(_value.copyWith(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      ratingFormatted: freezed == ratingFormatted
          ? _value.ratingFormatted
          : ratingFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FourImplCopyWith<$Res> implements $FourCopyWith<$Res> {
  factory _$$FourImplCopyWith(
          _$FourImpl value, $Res Function(_$FourImpl) then) =
      __$$FourImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? rating,
      @JsonKey(name: 'rating_formatted') String? ratingFormatted,
      double? percentage});
}

/// @nodoc
class __$$FourImplCopyWithImpl<$Res>
    extends _$FourCopyWithImpl<$Res, _$FourImpl>
    implements _$$FourImplCopyWith<$Res> {
  __$$FourImplCopyWithImpl(_$FourImpl _value, $Res Function(_$FourImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? ratingFormatted = freezed,
    Object? percentage = freezed,
  }) {
    return _then(_$FourImpl(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      ratingFormatted: freezed == ratingFormatted
          ? _value.ratingFormatted
          : ratingFormatted // ignore: cast_nullable_to_non_nullable
              as String?,
      percentage: freezed == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FourImpl implements _Four {
  _$FourImpl(
      {this.rating,
      @JsonKey(name: 'rating_formatted') this.ratingFormatted,
      this.percentage});

  factory _$FourImpl.fromJson(Map<String, dynamic> json) =>
      _$$FourImplFromJson(json);

  @override
  final double? rating;
  @override
  @JsonKey(name: 'rating_formatted')
  final String? ratingFormatted;
  @override
  final double? percentage;

  @override
  String toString() {
    return 'Four(rating: $rating, ratingFormatted: $ratingFormatted, percentage: $percentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FourImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingFormatted, ratingFormatted) ||
                other.ratingFormatted == ratingFormatted) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, rating, ratingFormatted, percentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FourImplCopyWith<_$FourImpl> get copyWith =>
      __$$FourImplCopyWithImpl<_$FourImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FourImplToJson(
      this,
    );
  }
}

abstract class _Four implements Four {
  factory _Four(
      {final double? rating,
      @JsonKey(name: 'rating_formatted') final String? ratingFormatted,
      final double? percentage}) = _$FourImpl;

  factory _Four.fromJson(Map<String, dynamic> json) = _$FourImpl.fromJson;

  @override
  double? get rating;
  @override
  @JsonKey(name: 'rating_formatted')
  String? get ratingFormatted;
  @override
  double? get percentage;
  @override
  @JsonKey(ignore: true)
  _$$FourImplCopyWith<_$FourImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
