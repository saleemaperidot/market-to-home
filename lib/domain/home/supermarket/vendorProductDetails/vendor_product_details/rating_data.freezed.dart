// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RatingData _$RatingDataFromJson(Map<String, dynamic> json) {
  return _RatingData.fromJson(json);
}

/// @nodoc
mixin _$RatingData {
  @JsonKey(name: 'avg_rating')
  String? get avgRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_reviews')
  int? get totalReviews => throw _privateConstructorUsedError;
  @JsonKey(name: 'individual_reviews')
  IndividualReviews? get individualReviews =>
      throw _privateConstructorUsedError;
  List<Review>? get reviews => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingDataCopyWith<RatingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingDataCopyWith<$Res> {
  factory $RatingDataCopyWith(
          RatingData value, $Res Function(RatingData) then) =
      _$RatingDataCopyWithImpl<$Res, RatingData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'avg_rating') String? avgRating,
      @JsonKey(name: 'total_reviews') int? totalReviews,
      @JsonKey(name: 'individual_reviews') IndividualReviews? individualReviews,
      List<Review>? reviews});

  $IndividualReviewsCopyWith<$Res>? get individualReviews;
}

/// @nodoc
class _$RatingDataCopyWithImpl<$Res, $Val extends RatingData>
    implements $RatingDataCopyWith<$Res> {
  _$RatingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avgRating = freezed,
    Object? totalReviews = freezed,
    Object? individualReviews = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_value.copyWith(
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as String?,
      totalReviews: freezed == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int?,
      individualReviews: freezed == individualReviews
          ? _value.individualReviews
          : individualReviews // ignore: cast_nullable_to_non_nullable
              as IndividualReviews?,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IndividualReviewsCopyWith<$Res>? get individualReviews {
    if (_value.individualReviews == null) {
      return null;
    }

    return $IndividualReviewsCopyWith<$Res>(_value.individualReviews!, (value) {
      return _then(_value.copyWith(individualReviews: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RatingDataImplCopyWith<$Res>
    implements $RatingDataCopyWith<$Res> {
  factory _$$RatingDataImplCopyWith(
          _$RatingDataImpl value, $Res Function(_$RatingDataImpl) then) =
      __$$RatingDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'avg_rating') String? avgRating,
      @JsonKey(name: 'total_reviews') int? totalReviews,
      @JsonKey(name: 'individual_reviews') IndividualReviews? individualReviews,
      List<Review>? reviews});

  @override
  $IndividualReviewsCopyWith<$Res>? get individualReviews;
}

/// @nodoc
class __$$RatingDataImplCopyWithImpl<$Res>
    extends _$RatingDataCopyWithImpl<$Res, _$RatingDataImpl>
    implements _$$RatingDataImplCopyWith<$Res> {
  __$$RatingDataImplCopyWithImpl(
      _$RatingDataImpl _value, $Res Function(_$RatingDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avgRating = freezed,
    Object? totalReviews = freezed,
    Object? individualReviews = freezed,
    Object? reviews = freezed,
  }) {
    return _then(_$RatingDataImpl(
      avgRating: freezed == avgRating
          ? _value.avgRating
          : avgRating // ignore: cast_nullable_to_non_nullable
              as String?,
      totalReviews: freezed == totalReviews
          ? _value.totalReviews
          : totalReviews // ignore: cast_nullable_to_non_nullable
              as int?,
      individualReviews: freezed == individualReviews
          ? _value.individualReviews
          : individualReviews // ignore: cast_nullable_to_non_nullable
              as IndividualReviews?,
      reviews: freezed == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingDataImpl implements _RatingData {
  _$RatingDataImpl(
      {@JsonKey(name: 'avg_rating') this.avgRating,
      @JsonKey(name: 'total_reviews') this.totalReviews,
      @JsonKey(name: 'individual_reviews') this.individualReviews,
      final List<Review>? reviews})
      : _reviews = reviews;

  factory _$RatingDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingDataImplFromJson(json);

  @override
  @JsonKey(name: 'avg_rating')
  final String? avgRating;
  @override
  @JsonKey(name: 'total_reviews')
  final int? totalReviews;
  @override
  @JsonKey(name: 'individual_reviews')
  final IndividualReviews? individualReviews;
  final List<Review>? _reviews;
  @override
  List<Review>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RatingData(avgRating: $avgRating, totalReviews: $totalReviews, individualReviews: $individualReviews, reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingDataImpl &&
            (identical(other.avgRating, avgRating) ||
                other.avgRating == avgRating) &&
            (identical(other.totalReviews, totalReviews) ||
                other.totalReviews == totalReviews) &&
            (identical(other.individualReviews, individualReviews) ||
                other.individualReviews == individualReviews) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, avgRating, totalReviews,
      individualReviews, const DeepCollectionEquality().hash(_reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingDataImplCopyWith<_$RatingDataImpl> get copyWith =>
      __$$RatingDataImplCopyWithImpl<_$RatingDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingDataImplToJson(
      this,
    );
  }
}

abstract class _RatingData implements RatingData {
  factory _RatingData(
      {@JsonKey(name: 'avg_rating') final String? avgRating,
      @JsonKey(name: 'total_reviews') final int? totalReviews,
      @JsonKey(name: 'individual_reviews')
      final IndividualReviews? individualReviews,
      final List<Review>? reviews}) = _$RatingDataImpl;

  factory _RatingData.fromJson(Map<String, dynamic> json) =
      _$RatingDataImpl.fromJson;

  @override
  @JsonKey(name: 'avg_rating')
  String? get avgRating;
  @override
  @JsonKey(name: 'total_reviews')
  int? get totalReviews;
  @override
  @JsonKey(name: 'individual_reviews')
  IndividualReviews? get individualReviews;
  @override
  List<Review>? get reviews;
  @override
  @JsonKey(ignore: true)
  _$$RatingDataImplCopyWith<_$RatingDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
