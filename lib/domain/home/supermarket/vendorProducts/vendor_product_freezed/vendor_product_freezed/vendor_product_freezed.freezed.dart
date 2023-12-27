// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_product_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VendorProductFreezed _$VendorProductFreezedFromJson(Map<String, dynamic> json) {
  return _VendorProductFreezed.fromJson(json);
}

/// @nodoc
mixin _$VendorProductFreezed {
  bool? get status => throw _privateConstructorUsedError;
  double? get totalCartCount => throw _privateConstructorUsedError;
  String? get totalCartAount => throw _privateConstructorUsedError;
  Products? get products => throw _privateConstructorUsedError;
  String? get breadcrumb => throw _privateConstructorUsedError;
  @JsonKey(name: 'mobile_breadcrumb')
  String? get mobileBreadcrumb => throw _privateConstructorUsedError;
  @JsonKey(name: 'child_categories')
  List<dynamic>? get childCategories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VendorProductFreezedCopyWith<VendorProductFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorProductFreezedCopyWith<$Res> {
  factory $VendorProductFreezedCopyWith(VendorProductFreezed value,
          $Res Function(VendorProductFreezed) then) =
      _$VendorProductFreezedCopyWithImpl<$Res, VendorProductFreezed>;
  @useResult
  $Res call(
      {bool? status,
      double? totalCartCount,
      String? totalCartAount,
      Products? products,
      String? breadcrumb,
      @JsonKey(name: 'mobile_breadcrumb') String? mobileBreadcrumb,
      @JsonKey(name: 'child_categories') List<dynamic>? childCategories});

  $ProductsCopyWith<$Res>? get products;
}

/// @nodoc
class _$VendorProductFreezedCopyWithImpl<$Res,
        $Val extends VendorProductFreezed>
    implements $VendorProductFreezedCopyWith<$Res> {
  _$VendorProductFreezedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalCartCount = freezed,
    Object? totalCartAount = freezed,
    Object? products = freezed,
    Object? breadcrumb = freezed,
    Object? mobileBreadcrumb = freezed,
    Object? childCategories = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalCartCount: freezed == totalCartCount
          ? _value.totalCartCount
          : totalCartCount // ignore: cast_nullable_to_non_nullable
              as double?,
      totalCartAount: freezed == totalCartAount
          ? _value.totalCartAount
          : totalCartAount // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Products?,
      breadcrumb: freezed == breadcrumb
          ? _value.breadcrumb
          : breadcrumb // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileBreadcrumb: freezed == mobileBreadcrumb
          ? _value.mobileBreadcrumb
          : mobileBreadcrumb // ignore: cast_nullable_to_non_nullable
              as String?,
      childCategories: freezed == childCategories
          ? _value.childCategories
          : childCategories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductsCopyWith<$Res>? get products {
    if (_value.products == null) {
      return null;
    }

    return $ProductsCopyWith<$Res>(_value.products!, (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VendorProductFreezedImplCopyWith<$Res>
    implements $VendorProductFreezedCopyWith<$Res> {
  factory _$$VendorProductFreezedImplCopyWith(_$VendorProductFreezedImpl value,
          $Res Function(_$VendorProductFreezedImpl) then) =
      __$$VendorProductFreezedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? status,
      double? totalCartCount,
      String? totalCartAount,
      Products? products,
      String? breadcrumb,
      @JsonKey(name: 'mobile_breadcrumb') String? mobileBreadcrumb,
      @JsonKey(name: 'child_categories') List<dynamic>? childCategories});

  @override
  $ProductsCopyWith<$Res>? get products;
}

/// @nodoc
class __$$VendorProductFreezedImplCopyWithImpl<$Res>
    extends _$VendorProductFreezedCopyWithImpl<$Res, _$VendorProductFreezedImpl>
    implements _$$VendorProductFreezedImplCopyWith<$Res> {
  __$$VendorProductFreezedImplCopyWithImpl(_$VendorProductFreezedImpl _value,
      $Res Function(_$VendorProductFreezedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? totalCartCount = freezed,
    Object? totalCartAount = freezed,
    Object? products = freezed,
    Object? breadcrumb = freezed,
    Object? mobileBreadcrumb = freezed,
    Object? childCategories = freezed,
  }) {
    return _then(_$VendorProductFreezedImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      totalCartCount: freezed == totalCartCount
          ? _value.totalCartCount
          : totalCartCount // ignore: cast_nullable_to_non_nullable
              as double?,
      totalCartAount: freezed == totalCartAount
          ? _value.totalCartAount
          : totalCartAount // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as Products?,
      breadcrumb: freezed == breadcrumb
          ? _value.breadcrumb
          : breadcrumb // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileBreadcrumb: freezed == mobileBreadcrumb
          ? _value.mobileBreadcrumb
          : mobileBreadcrumb // ignore: cast_nullable_to_non_nullable
              as String?,
      childCategories: freezed == childCategories
          ? _value._childCategories
          : childCategories // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VendorProductFreezedImpl implements _VendorProductFreezed {
  _$VendorProductFreezedImpl(
      {this.status,
      this.totalCartCount,
      this.totalCartAount,
      this.products,
      this.breadcrumb,
      @JsonKey(name: 'mobile_breadcrumb') this.mobileBreadcrumb,
      @JsonKey(name: 'child_categories') final List<dynamic>? childCategories})
      : _childCategories = childCategories;

  factory _$VendorProductFreezedImpl.fromJson(Map<String, dynamic> json) =>
      _$$VendorProductFreezedImplFromJson(json);

  @override
  final bool? status;
  @override
  final double? totalCartCount;
  @override
  final String? totalCartAount;
  @override
  final Products? products;
  @override
  final String? breadcrumb;
  @override
  @JsonKey(name: 'mobile_breadcrumb')
  final String? mobileBreadcrumb;
  final List<dynamic>? _childCategories;
  @override
  @JsonKey(name: 'child_categories')
  List<dynamic>? get childCategories {
    final value = _childCategories;
    if (value == null) return null;
    if (_childCategories is EqualUnmodifiableListView) return _childCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VendorProductFreezed(status: $status, totalCartCount: $totalCartCount, totalCartAount: $totalCartAount, products: $products, breadcrumb: $breadcrumb, mobileBreadcrumb: $mobileBreadcrumb, childCategories: $childCategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VendorProductFreezedImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalCartCount, totalCartCount) ||
                other.totalCartCount == totalCartCount) &&
            (identical(other.totalCartAount, totalCartAount) ||
                other.totalCartAount == totalCartAount) &&
            (identical(other.products, products) ||
                other.products == products) &&
            (identical(other.breadcrumb, breadcrumb) ||
                other.breadcrumb == breadcrumb) &&
            (identical(other.mobileBreadcrumb, mobileBreadcrumb) ||
                other.mobileBreadcrumb == mobileBreadcrumb) &&
            const DeepCollectionEquality()
                .equals(other._childCategories, _childCategories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      totalCartCount,
      totalCartAount,
      products,
      breadcrumb,
      mobileBreadcrumb,
      const DeepCollectionEquality().hash(_childCategories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VendorProductFreezedImplCopyWith<_$VendorProductFreezedImpl>
      get copyWith =>
          __$$VendorProductFreezedImplCopyWithImpl<_$VendorProductFreezedImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VendorProductFreezedImplToJson(
      this,
    );
  }
}

abstract class _VendorProductFreezed implements VendorProductFreezed {
  factory _VendorProductFreezed(
      {final bool? status,
      final double? totalCartCount,
      final String? totalCartAount,
      final Products? products,
      final String? breadcrumb,
      @JsonKey(name: 'mobile_breadcrumb') final String? mobileBreadcrumb,
      @JsonKey(name: 'child_categories')
      final List<dynamic>? childCategories}) = _$VendorProductFreezedImpl;

  factory _VendorProductFreezed.fromJson(Map<String, dynamic> json) =
      _$VendorProductFreezedImpl.fromJson;

  @override
  bool? get status;
  @override
  double? get totalCartCount;
  @override
  String? get totalCartAount;
  @override
  Products? get products;
  @override
  String? get breadcrumb;
  @override
  @JsonKey(name: 'mobile_breadcrumb')
  String? get mobileBreadcrumb;
  @override
  @JsonKey(name: 'child_categories')
  List<dynamic>? get childCategories;
  @override
  @JsonKey(ignore: true)
  _$$VendorProductFreezedImplCopyWith<_$VendorProductFreezedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
