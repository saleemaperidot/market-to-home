// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vendor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VendorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String shopType) init,
    required TResult Function(String shopType, String? filter) getVendor,
    required TResult Function(
            BuildContext context, String vendorurl, String vendorShopName)
        getCategories,
    required TResult Function(BuildContext context, String categorySlug,
            List<SubCategory> subCategoryList)
        getSubCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String shopType)? init,
    TResult? Function(String shopType, String? filter)? getVendor,
    TResult? Function(
            BuildContext context, String vendorurl, String vendorShopName)?
        getCategories,
    TResult? Function(BuildContext context, String categorySlug,
            List<SubCategory> subCategoryList)?
        getSubCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String shopType)? init,
    TResult Function(String shopType, String? filter)? getVendor,
    TResult Function(
            BuildContext context, String vendorurl, String vendorShopName)?
        getCategories,
    TResult Function(BuildContext context, String categorySlug,
            List<SubCategory> subCategoryList)?
        getSubCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(GetVendor value) getVendor,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(GetSubCategories value) getSubCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(GetVendor value)? getVendor,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(GetSubCategories value)? getSubCategories,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(GetVendor value)? getVendor,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(GetSubCategories value)? getSubCategories,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorEventCopyWith<$Res> {
  factory $VendorEventCopyWith(
          VendorEvent value, $Res Function(VendorEvent) then) =
      _$VendorEventCopyWithImpl<$Res, VendorEvent>;
}

/// @nodoc
class _$VendorEventCopyWithImpl<$Res, $Val extends VendorEvent>
    implements $VendorEventCopyWith<$Res> {
  _$VendorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String shopType});
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$VendorEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopType = null,
  }) {
    return _then(_$InitImpl(
      null == shopType
          ? _value.shopType
          : shopType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitImpl implements Init {
  const _$InitImpl(this.shopType);

  @override
  final String shopType;

  @override
  String toString() {
    return 'VendorEvent.init(shopType: $shopType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.shopType, shopType) ||
                other.shopType == shopType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shopType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String shopType) init,
    required TResult Function(String shopType, String? filter) getVendor,
    required TResult Function(
            BuildContext context, String vendorurl, String vendorShopName)
        getCategories,
    required TResult Function(BuildContext context, String categorySlug,
            List<SubCategory> subCategoryList)
        getSubCategories,
  }) {
    return init(shopType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String shopType)? init,
    TResult? Function(String shopType, String? filter)? getVendor,
    TResult? Function(
            BuildContext context, String vendorurl, String vendorShopName)?
        getCategories,
    TResult? Function(BuildContext context, String categorySlug,
            List<SubCategory> subCategoryList)?
        getSubCategories,
  }) {
    return init?.call(shopType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String shopType)? init,
    TResult Function(String shopType, String? filter)? getVendor,
    TResult Function(
            BuildContext context, String vendorurl, String vendorShopName)?
        getCategories,
    TResult Function(BuildContext context, String categorySlug,
            List<SubCategory> subCategoryList)?
        getSubCategories,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(shopType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(GetVendor value) getVendor,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(GetSubCategories value) getSubCategories,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(GetVendor value)? getVendor,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(GetSubCategories value)? getSubCategories,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(GetVendor value)? getVendor,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(GetSubCategories value)? getSubCategories,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements VendorEvent {
  const factory Init(final String shopType) = _$InitImpl;

  String get shopType;
  @JsonKey(ignore: true)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetVendorImplCopyWith<$Res> {
  factory _$$GetVendorImplCopyWith(
          _$GetVendorImpl value, $Res Function(_$GetVendorImpl) then) =
      __$$GetVendorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String shopType, String? filter});
}

/// @nodoc
class __$$GetVendorImplCopyWithImpl<$Res>
    extends _$VendorEventCopyWithImpl<$Res, _$GetVendorImpl>
    implements _$$GetVendorImplCopyWith<$Res> {
  __$$GetVendorImplCopyWithImpl(
      _$GetVendorImpl _value, $Res Function(_$GetVendorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopType = null,
    Object? filter = freezed,
  }) {
    return _then(_$GetVendorImpl(
      null == shopType
          ? _value.shopType
          : shopType // ignore: cast_nullable_to_non_nullable
              as String,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetVendorImpl implements GetVendor {
  const _$GetVendorImpl(this.shopType, {this.filter});

  @override
  final String shopType;
  @override
  final String? filter;

  @override
  String toString() {
    return 'VendorEvent.getVendor(shopType: $shopType, filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetVendorImpl &&
            (identical(other.shopType, shopType) ||
                other.shopType == shopType) &&
            (identical(other.filter, filter) || other.filter == filter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shopType, filter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetVendorImplCopyWith<_$GetVendorImpl> get copyWith =>
      __$$GetVendorImplCopyWithImpl<_$GetVendorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String shopType) init,
    required TResult Function(String shopType, String? filter) getVendor,
    required TResult Function(
            BuildContext context, String vendorurl, String vendorShopName)
        getCategories,
    required TResult Function(BuildContext context, String categorySlug,
            List<SubCategory> subCategoryList)
        getSubCategories,
  }) {
    return getVendor(shopType, filter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String shopType)? init,
    TResult? Function(String shopType, String? filter)? getVendor,
    TResult? Function(
            BuildContext context, String vendorurl, String vendorShopName)?
        getCategories,
    TResult? Function(BuildContext context, String categorySlug,
            List<SubCategory> subCategoryList)?
        getSubCategories,
  }) {
    return getVendor?.call(shopType, filter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String shopType)? init,
    TResult Function(String shopType, String? filter)? getVendor,
    TResult Function(
            BuildContext context, String vendorurl, String vendorShopName)?
        getCategories,
    TResult Function(BuildContext context, String categorySlug,
            List<SubCategory> subCategoryList)?
        getSubCategories,
    required TResult orElse(),
  }) {
    if (getVendor != null) {
      return getVendor(shopType, filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(GetVendor value) getVendor,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(GetSubCategories value) getSubCategories,
  }) {
    return getVendor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(GetVendor value)? getVendor,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(GetSubCategories value)? getSubCategories,
  }) {
    return getVendor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(GetVendor value)? getVendor,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(GetSubCategories value)? getSubCategories,
    required TResult orElse(),
  }) {
    if (getVendor != null) {
      return getVendor(this);
    }
    return orElse();
  }
}

abstract class GetVendor implements VendorEvent {
  const factory GetVendor(final String shopType, {final String? filter}) =
      _$GetVendorImpl;

  String get shopType;
  String? get filter;
  @JsonKey(ignore: true)
  _$$GetVendorImplCopyWith<_$GetVendorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCategoriesImplCopyWith<$Res> {
  factory _$$GetCategoriesImplCopyWith(
          _$GetCategoriesImpl value, $Res Function(_$GetCategoriesImpl) then) =
      __$$GetCategoriesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String vendorurl, String vendorShopName});
}

/// @nodoc
class __$$GetCategoriesImplCopyWithImpl<$Res>
    extends _$VendorEventCopyWithImpl<$Res, _$GetCategoriesImpl>
    implements _$$GetCategoriesImplCopyWith<$Res> {
  __$$GetCategoriesImplCopyWithImpl(
      _$GetCategoriesImpl _value, $Res Function(_$GetCategoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? vendorurl = null,
    Object? vendorShopName = null,
  }) {
    return _then(_$GetCategoriesImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      null == vendorurl
          ? _value.vendorurl
          : vendorurl // ignore: cast_nullable_to_non_nullable
              as String,
      null == vendorShopName
          ? _value.vendorShopName
          : vendorShopName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCategoriesImpl implements GetCategories {
  const _$GetCategoriesImpl(this.context, this.vendorurl, this.vendorShopName);

  @override
  final BuildContext context;
  @override
  final String vendorurl;
  @override
  final String vendorShopName;

  @override
  String toString() {
    return 'VendorEvent.getCategories(context: $context, vendorurl: $vendorurl, vendorShopName: $vendorShopName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCategoriesImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.vendorurl, vendorurl) ||
                other.vendorurl == vendorurl) &&
            (identical(other.vendorShopName, vendorShopName) ||
                other.vendorShopName == vendorShopName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, context, vendorurl, vendorShopName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCategoriesImplCopyWith<_$GetCategoriesImpl> get copyWith =>
      __$$GetCategoriesImplCopyWithImpl<_$GetCategoriesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String shopType) init,
    required TResult Function(String shopType, String? filter) getVendor,
    required TResult Function(
            BuildContext context, String vendorurl, String vendorShopName)
        getCategories,
    required TResult Function(BuildContext context, String categorySlug,
            List<SubCategory> subCategoryList)
        getSubCategories,
  }) {
    return getCategories(context, vendorurl, vendorShopName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String shopType)? init,
    TResult? Function(String shopType, String? filter)? getVendor,
    TResult? Function(
            BuildContext context, String vendorurl, String vendorShopName)?
        getCategories,
    TResult? Function(BuildContext context, String categorySlug,
            List<SubCategory> subCategoryList)?
        getSubCategories,
  }) {
    return getCategories?.call(context, vendorurl, vendorShopName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String shopType)? init,
    TResult Function(String shopType, String? filter)? getVendor,
    TResult Function(
            BuildContext context, String vendorurl, String vendorShopName)?
        getCategories,
    TResult Function(BuildContext context, String categorySlug,
            List<SubCategory> subCategoryList)?
        getSubCategories,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(context, vendorurl, vendorShopName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(GetVendor value) getVendor,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(GetSubCategories value) getSubCategories,
  }) {
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(GetVendor value)? getVendor,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(GetSubCategories value)? getSubCategories,
  }) {
    return getCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(GetVendor value)? getVendor,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(GetSubCategories value)? getSubCategories,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(this);
    }
    return orElse();
  }
}

abstract class GetCategories implements VendorEvent {
  const factory GetCategories(
      final BuildContext context,
      final String vendorurl,
      final String vendorShopName) = _$GetCategoriesImpl;

  BuildContext get context;
  String get vendorurl;
  String get vendorShopName;
  @JsonKey(ignore: true)
  _$$GetCategoriesImplCopyWith<_$GetCategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSubCategoriesImplCopyWith<$Res> {
  factory _$$GetSubCategoriesImplCopyWith(_$GetSubCategoriesImpl value,
          $Res Function(_$GetSubCategoriesImpl) then) =
      __$$GetSubCategoriesImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context,
      String categorySlug,
      List<SubCategory> subCategoryList});
}

/// @nodoc
class __$$GetSubCategoriesImplCopyWithImpl<$Res>
    extends _$VendorEventCopyWithImpl<$Res, _$GetSubCategoriesImpl>
    implements _$$GetSubCategoriesImplCopyWith<$Res> {
  __$$GetSubCategoriesImplCopyWithImpl(_$GetSubCategoriesImpl _value,
      $Res Function(_$GetSubCategoriesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? categorySlug = null,
    Object? subCategoryList = null,
  }) {
    return _then(_$GetSubCategoriesImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      null == categorySlug
          ? _value.categorySlug
          : categorySlug // ignore: cast_nullable_to_non_nullable
              as String,
      null == subCategoryList
          ? _value._subCategoryList
          : subCategoryList // ignore: cast_nullable_to_non_nullable
              as List<SubCategory>,
    ));
  }
}

/// @nodoc

class _$GetSubCategoriesImpl implements GetSubCategories {
  const _$GetSubCategoriesImpl(
      this.context, this.categorySlug, final List<SubCategory> subCategoryList)
      : _subCategoryList = subCategoryList;

  @override
  final BuildContext context;
  @override
  final String categorySlug;
  final List<SubCategory> _subCategoryList;
  @override
  List<SubCategory> get subCategoryList {
    if (_subCategoryList is EqualUnmodifiableListView) return _subCategoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subCategoryList);
  }

  @override
  String toString() {
    return 'VendorEvent.getSubCategories(context: $context, categorySlug: $categorySlug, subCategoryList: $subCategoryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSubCategoriesImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.categorySlug, categorySlug) ||
                other.categorySlug == categorySlug) &&
            const DeepCollectionEquality()
                .equals(other._subCategoryList, _subCategoryList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, categorySlug,
      const DeepCollectionEquality().hash(_subCategoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSubCategoriesImplCopyWith<_$GetSubCategoriesImpl> get copyWith =>
      __$$GetSubCategoriesImplCopyWithImpl<_$GetSubCategoriesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String shopType) init,
    required TResult Function(String shopType, String? filter) getVendor,
    required TResult Function(
            BuildContext context, String vendorurl, String vendorShopName)
        getCategories,
    required TResult Function(BuildContext context, String categorySlug,
            List<SubCategory> subCategoryList)
        getSubCategories,
  }) {
    return getSubCategories(context, categorySlug, subCategoryList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String shopType)? init,
    TResult? Function(String shopType, String? filter)? getVendor,
    TResult? Function(
            BuildContext context, String vendorurl, String vendorShopName)?
        getCategories,
    TResult? Function(BuildContext context, String categorySlug,
            List<SubCategory> subCategoryList)?
        getSubCategories,
  }) {
    return getSubCategories?.call(context, categorySlug, subCategoryList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String shopType)? init,
    TResult Function(String shopType, String? filter)? getVendor,
    TResult Function(
            BuildContext context, String vendorurl, String vendorShopName)?
        getCategories,
    TResult Function(BuildContext context, String categorySlug,
            List<SubCategory> subCategoryList)?
        getSubCategories,
    required TResult orElse(),
  }) {
    if (getSubCategories != null) {
      return getSubCategories(context, categorySlug, subCategoryList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(GetVendor value) getVendor,
    required TResult Function(GetCategories value) getCategories,
    required TResult Function(GetSubCategories value) getSubCategories,
  }) {
    return getSubCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Init value)? init,
    TResult? Function(GetVendor value)? getVendor,
    TResult? Function(GetCategories value)? getCategories,
    TResult? Function(GetSubCategories value)? getSubCategories,
  }) {
    return getSubCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(GetVendor value)? getVendor,
    TResult Function(GetCategories value)? getCategories,
    TResult Function(GetSubCategories value)? getSubCategories,
    required TResult orElse(),
  }) {
    if (getSubCategories != null) {
      return getSubCategories(this);
    }
    return orElse();
  }
}

abstract class GetSubCategories implements VendorEvent {
  const factory GetSubCategories(
      final BuildContext context,
      final String categorySlug,
      final List<SubCategory> subCategoryList) = _$GetSubCategoriesImpl;

  BuildContext get context;
  String get categorySlug;
  List<SubCategory> get subCategoryList;
  @JsonKey(ignore: true)
  _$$GetSubCategoriesImplCopyWith<_$GetSubCategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VendorState {
  bool get stauts => throw _privateConstructorUsedError;
  bool get isLoading =>
      throw _privateConstructorUsedError; // @Default([]) List<Category> vendorCategory,
  List<Filter> get vendorFilter => throw _privateConstructorUsedError;
  List<Datum> get vendorList => throw _privateConstructorUsedError;
  List<Category> get category => throw _privateConstructorUsedError;
  List<SubCategory> get subCategory => throw _privateConstructorUsedError;
  String get vendorSlug => throw _privateConstructorUsedError;
  String get categorySlug => throw _privateConstructorUsedError;
  String get vendorShopName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VendorStateCopyWith<VendorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendorStateCopyWith<$Res> {
  factory $VendorStateCopyWith(
          VendorState value, $Res Function(VendorState) then) =
      _$VendorStateCopyWithImpl<$Res, VendorState>;
  @useResult
  $Res call(
      {bool stauts,
      bool isLoading,
      List<Filter> vendorFilter,
      List<Datum> vendorList,
      List<Category> category,
      List<SubCategory> subCategory,
      String vendorSlug,
      String categorySlug,
      String vendorShopName});
}

/// @nodoc
class _$VendorStateCopyWithImpl<$Res, $Val extends VendorState>
    implements $VendorStateCopyWith<$Res> {
  _$VendorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stauts = null,
    Object? isLoading = null,
    Object? vendorFilter = null,
    Object? vendorList = null,
    Object? category = null,
    Object? subCategory = null,
    Object? vendorSlug = null,
    Object? categorySlug = null,
    Object? vendorShopName = null,
  }) {
    return _then(_value.copyWith(
      stauts: null == stauts
          ? _value.stauts
          : stauts // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      vendorFilter: null == vendorFilter
          ? _value.vendorFilter
          : vendorFilter // ignore: cast_nullable_to_non_nullable
              as List<Filter>,
      vendorList: null == vendorList
          ? _value.vendorList
          : vendorList // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      subCategory: null == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as List<SubCategory>,
      vendorSlug: null == vendorSlug
          ? _value.vendorSlug
          : vendorSlug // ignore: cast_nullable_to_non_nullable
              as String,
      categorySlug: null == categorySlug
          ? _value.categorySlug
          : categorySlug // ignore: cast_nullable_to_non_nullable
              as String,
      vendorShopName: null == vendorShopName
          ? _value.vendorShopName
          : vendorShopName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $VendorStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool stauts,
      bool isLoading,
      List<Filter> vendorFilter,
      List<Datum> vendorList,
      List<Category> category,
      List<SubCategory> subCategory,
      String vendorSlug,
      String categorySlug,
      String vendorShopName});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$VendorStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stauts = null,
    Object? isLoading = null,
    Object? vendorFilter = null,
    Object? vendorList = null,
    Object? category = null,
    Object? subCategory = null,
    Object? vendorSlug = null,
    Object? categorySlug = null,
    Object? vendorShopName = null,
  }) {
    return _then(_$InitialImpl(
      stauts: null == stauts
          ? _value.stauts
          : stauts // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      vendorFilter: null == vendorFilter
          ? _value._vendorFilter
          : vendorFilter // ignore: cast_nullable_to_non_nullable
              as List<Filter>,
      vendorList: null == vendorList
          ? _value._vendorList
          : vendorList // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
      category: null == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      subCategory: null == subCategory
          ? _value._subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as List<SubCategory>,
      vendorSlug: null == vendorSlug
          ? _value.vendorSlug
          : vendorSlug // ignore: cast_nullable_to_non_nullable
              as String,
      categorySlug: null == categorySlug
          ? _value.categorySlug
          : categorySlug // ignore: cast_nullable_to_non_nullable
              as String,
      vendorShopName: null == vendorShopName
          ? _value.vendorShopName
          : vendorShopName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.stauts = false,
      this.isLoading = false,
      final List<Filter> vendorFilter = const [],
      final List<Datum> vendorList = const [],
      final List<Category> category = const [],
      final List<SubCategory> subCategory = const [],
      this.vendorSlug = '',
      this.categorySlug = '',
      this.vendorShopName = ''})
      : _vendorFilter = vendorFilter,
        _vendorList = vendorList,
        _category = category,
        _subCategory = subCategory;

  @override
  @JsonKey()
  final bool stauts;
  @override
  @JsonKey()
  final bool isLoading;
// @Default([]) List<Category> vendorCategory,
  final List<Filter> _vendorFilter;
// @Default([]) List<Category> vendorCategory,
  @override
  @JsonKey()
  List<Filter> get vendorFilter {
    if (_vendorFilter is EqualUnmodifiableListView) return _vendorFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vendorFilter);
  }

  final List<Datum> _vendorList;
  @override
  @JsonKey()
  List<Datum> get vendorList {
    if (_vendorList is EqualUnmodifiableListView) return _vendorList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vendorList);
  }

  final List<Category> _category;
  @override
  @JsonKey()
  List<Category> get category {
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  final List<SubCategory> _subCategory;
  @override
  @JsonKey()
  List<SubCategory> get subCategory {
    if (_subCategory is EqualUnmodifiableListView) return _subCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subCategory);
  }

  @override
  @JsonKey()
  final String vendorSlug;
  @override
  @JsonKey()
  final String categorySlug;
  @override
  @JsonKey()
  final String vendorShopName;

  @override
  String toString() {
    return 'VendorState(stauts: $stauts, isLoading: $isLoading, vendorFilter: $vendorFilter, vendorList: $vendorList, category: $category, subCategory: $subCategory, vendorSlug: $vendorSlug, categorySlug: $categorySlug, vendorShopName: $vendorShopName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.stauts, stauts) || other.stauts == stauts) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._vendorFilter, _vendorFilter) &&
            const DeepCollectionEquality()
                .equals(other._vendorList, _vendorList) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            const DeepCollectionEquality()
                .equals(other._subCategory, _subCategory) &&
            (identical(other.vendorSlug, vendorSlug) ||
                other.vendorSlug == vendorSlug) &&
            (identical(other.categorySlug, categorySlug) ||
                other.categorySlug == categorySlug) &&
            (identical(other.vendorShopName, vendorShopName) ||
                other.vendorShopName == vendorShopName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stauts,
      isLoading,
      const DeepCollectionEquality().hash(_vendorFilter),
      const DeepCollectionEquality().hash(_vendorList),
      const DeepCollectionEquality().hash(_category),
      const DeepCollectionEquality().hash(_subCategory),
      vendorSlug,
      categorySlug,
      vendorShopName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements VendorState {
  const factory _Initial(
      {final bool stauts,
      final bool isLoading,
      final List<Filter> vendorFilter,
      final List<Datum> vendorList,
      final List<Category> category,
      final List<SubCategory> subCategory,
      final String vendorSlug,
      final String categorySlug,
      final String vendorShopName}) = _$InitialImpl;

  @override
  bool get stauts;
  @override
  bool get isLoading;
  @override // @Default([]) List<Category> vendorCategory,
  List<Filter> get vendorFilter;
  @override
  List<Datum> get vendorList;
  @override
  List<Category> get category;
  @override
  List<SubCategory> get subCategory;
  @override
  String get vendorSlug;
  @override
  String get categorySlug;
  @override
  String get vendorShopName;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
