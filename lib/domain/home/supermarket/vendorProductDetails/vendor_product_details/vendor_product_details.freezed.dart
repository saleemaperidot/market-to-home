// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_product_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VendorProductDetails _$VendorProductDetailsFromJson(Map<String, dynamic> json) {
  return _VendorProductDetails.fromJson(json);
}

/// @nodoc
mixin _$VendorProductDetails {
  bool? get status => throw _privateConstructorUsedError;
  VendorProductDetailsData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorProductDetailsCopyWith<VendorProductDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorProductDetailsCopyWith<$Res> {
  factory $VendorProductDetailsCopyWith(VendorProductDetails value,
          $Res Function(VendorProductDetails) then) =
      _$VendorProductDetailsCopyWithImpl<$Res, VendorProductDetails>;
  @useResult
  $Res call({bool? status, VendorProductDetailsData? data});

  $VendorProductDetailsDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$VendorProductDetailsCopyWithImpl<$Res,
        $Val extends VendorProductDetails>
    implements $VendorProductDetailsCopyWith<$Res> {
  _$VendorProductDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VendorProductDetailsData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VendorProductDetailsDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $VendorProductDetailsDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendorProductDetailsImplCopyWith<$Res>
    implements $VendorProductDetailsCopyWith<$Res> {
  factory _$$VendorProductDetailsImplCopyWith(_$VendorProductDetailsImpl value,
          $Res Function(_$VendorProductDetailsImpl) then) =
      __$$VendorProductDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, VendorProductDetailsData? data});

  @override
  $VendorProductDetailsDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$VendorProductDetailsImplCopyWithImpl<$Res>
    extends _$VendorProductDetailsCopyWithImpl<$Res, _$VendorProductDetailsImpl>
    implements _$$VendorProductDetailsImplCopyWith<$Res> {
  __$$VendorProductDetailsImplCopyWithImpl(_$VendorProductDetailsImpl _value,
      $Res Function(_$VendorProductDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$VendorProductDetailsImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as VendorProductDetailsData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorProductDetailsImpl implements _VendorProductDetails {
  _$VendorProductDetailsImpl({this.status, this.data});

  factory _$VendorProductDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorProductDetailsImplFromJson(json);

  @override
  final bool? status;
  @override
  final VendorProductDetailsData? data;

  @override
  String toString() {
    return 'VendorProductDetails(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorProductDetailsImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorProductDetailsImplCopyWith<_$VendorProductDetailsImpl>
      get copyWith =>
          __$$VendorProductDetailsImplCopyWithImpl<_$VendorProductDetailsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorProductDetailsImplToJson(
      this,
    );
  }
}

abstract class _VendorProductDetails implements VendorProductDetails {
  factory _VendorProductDetails(
      {final bool? status,
      final VendorProductDetailsData? data}) = _$VendorProductDetailsImpl;

  factory _VendorProductDetails.fromJson(Map<String, dynamic> json) =
      _$VendorProductDetailsImpl.fromJson;

  @override
  bool? get status;
  @override
  VendorProductDetailsData? get data;
  @override
  @JsonKey(ignore: true)
  _$$VendorProductDetailsImplCopyWith<_$VendorProductDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
