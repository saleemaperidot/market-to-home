// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: 'order_product_id')
  int? get orderProductId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  String? get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_barcode')
  String? get productBarcode => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_image')
  String? get productImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_price')
  double? get productPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_quantity')
  int? get productQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_category')
  String? get mainCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_category')
  String? get subCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'assigned_category')
  String? get assignedCategory => throw _privateConstructorUsedError;
  String? get vendor => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_status')
  String? get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'insurance_status')
  dynamic get insuranceStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivered_on')
  dynamic get deliveredOn => throw _privateConstructorUsedError;
  @JsonKey(name: 'cancelled_date')
  dynamic get cancelledDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'substitute_excess_amount_handling')
  dynamic get substituteExcessAmountHandling =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'substitute_excess_amount')
  double? get substituteExcessAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'insurance_price')
  dynamic get insurancePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'substitute_product_data')
  SubstituteProductData? get substituteProductData =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'is_cancellable')
  bool? get isCancellable => throw _privateConstructorUsedError;
  @JsonKey(name: 'returnable')
  bool? get returnable => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_returned')
  IsReturned? get is_returned => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: 'order_product_id') int? orderProductId,
      @JsonKey(name: 'product_id') int? productId,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_barcode') String? productBarcode,
      @JsonKey(name: 'product_image') String? productImage,
      @JsonKey(name: 'product_price') double? productPrice,
      @JsonKey(name: 'product_quantity') int? productQuantity,
      @JsonKey(name: 'main_category') String? mainCategory,
      @JsonKey(name: 'sub_category') String? subCategory,
      @JsonKey(name: 'assigned_category') String? assignedCategory,
      String? vendor,
      @JsonKey(name: 'order_status') String? orderStatus,
      @JsonKey(name: 'insurance_status') dynamic insuranceStatus,
      @JsonKey(name: 'delivered_on') dynamic deliveredOn,
      @JsonKey(name: 'cancelled_date') dynamic cancelledDate,
      @JsonKey(name: 'substitute_excess_amount_handling')
      dynamic substituteExcessAmountHandling,
      @JsonKey(name: 'substitute_excess_amount') double? substituteExcessAmount,
      @JsonKey(name: 'insurance_price') dynamic insurancePrice,
      @JsonKey(name: 'substitute_product_data')
      SubstituteProductData? substituteProductData,
      @JsonKey(name: 'is_cancellable') bool? isCancellable,
      @JsonKey(name: 'returnable') bool? returnable,
      @JsonKey(name: 'is_returned') IsReturned? is_returned});

  $SubstituteProductDataCopyWith<$Res>? get substituteProductData;
  $IsReturnedCopyWith<$Res>? get is_returned;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderProductId = freezed,
    Object? productId = freezed,
    Object? productName = freezed,
    Object? productBarcode = freezed,
    Object? productImage = freezed,
    Object? productPrice = freezed,
    Object? productQuantity = freezed,
    Object? mainCategory = freezed,
    Object? subCategory = freezed,
    Object? assignedCategory = freezed,
    Object? vendor = freezed,
    Object? orderStatus = freezed,
    Object? insuranceStatus = freezed,
    Object? deliveredOn = freezed,
    Object? cancelledDate = freezed,
    Object? substituteExcessAmountHandling = freezed,
    Object? substituteExcessAmount = freezed,
    Object? insurancePrice = freezed,
    Object? substituteProductData = freezed,
    Object? isCancellable = freezed,
    Object? returnable = freezed,
    Object? is_returned = freezed,
  }) {
    return _then(_value.copyWith(
      orderProductId: freezed == orderProductId
          ? _value.orderProductId
          : orderProductId // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productBarcode: freezed == productBarcode
          ? _value.productBarcode
          : productBarcode // ignore: cast_nullable_to_non_nullable
              as String?,
      productImage: freezed == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String?,
      productPrice: freezed == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      productQuantity: freezed == productQuantity
          ? _value.productQuantity
          : productQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      mainCategory: freezed == mainCategory
          ? _value.mainCategory
          : mainCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedCategory: freezed == assignedCategory
          ? _value.assignedCategory
          : assignedCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      insuranceStatus: freezed == insuranceStatus
          ? _value.insuranceStatus
          : insuranceStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deliveredOn: freezed == deliveredOn
          ? _value.deliveredOn
          : deliveredOn // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cancelledDate: freezed == cancelledDate
          ? _value.cancelledDate
          : cancelledDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      substituteExcessAmountHandling: freezed == substituteExcessAmountHandling
          ? _value.substituteExcessAmountHandling
          : substituteExcessAmountHandling // ignore: cast_nullable_to_non_nullable
              as dynamic,
      substituteExcessAmount: freezed == substituteExcessAmount
          ? _value.substituteExcessAmount
          : substituteExcessAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      insurancePrice: freezed == insurancePrice
          ? _value.insurancePrice
          : insurancePrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      substituteProductData: freezed == substituteProductData
          ? _value.substituteProductData
          : substituteProductData // ignore: cast_nullable_to_non_nullable
              as SubstituteProductData?,
      isCancellable: freezed == isCancellable
          ? _value.isCancellable
          : isCancellable // ignore: cast_nullable_to_non_nullable
              as bool?,
      returnable: freezed == returnable
          ? _value.returnable
          : returnable // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_returned: freezed == is_returned
          ? _value.is_returned
          : is_returned // ignore: cast_nullable_to_non_nullable
              as IsReturned?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubstituteProductDataCopyWith<$Res>? get substituteProductData {
    if (_value.substituteProductData == null) {
      return null;
    }

    return $SubstituteProductDataCopyWith<$Res>(_value.substituteProductData!,
        (value) {
      return _then(_value.copyWith(substituteProductData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IsReturnedCopyWith<$Res>? get is_returned {
    if (_value.is_returned == null) {
      return null;
    }

    return $IsReturnedCopyWith<$Res>(_value.is_returned!, (value) {
      return _then(_value.copyWith(is_returned: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'order_product_id') int? orderProductId,
      @JsonKey(name: 'product_id') int? productId,
      @JsonKey(name: 'product_name') String? productName,
      @JsonKey(name: 'product_barcode') String? productBarcode,
      @JsonKey(name: 'product_image') String? productImage,
      @JsonKey(name: 'product_price') double? productPrice,
      @JsonKey(name: 'product_quantity') int? productQuantity,
      @JsonKey(name: 'main_category') String? mainCategory,
      @JsonKey(name: 'sub_category') String? subCategory,
      @JsonKey(name: 'assigned_category') String? assignedCategory,
      String? vendor,
      @JsonKey(name: 'order_status') String? orderStatus,
      @JsonKey(name: 'insurance_status') dynamic insuranceStatus,
      @JsonKey(name: 'delivered_on') dynamic deliveredOn,
      @JsonKey(name: 'cancelled_date') dynamic cancelledDate,
      @JsonKey(name: 'substitute_excess_amount_handling')
      dynamic substituteExcessAmountHandling,
      @JsonKey(name: 'substitute_excess_amount') double? substituteExcessAmount,
      @JsonKey(name: 'insurance_price') dynamic insurancePrice,
      @JsonKey(name: 'substitute_product_data')
      SubstituteProductData? substituteProductData,
      @JsonKey(name: 'is_cancellable') bool? isCancellable,
      @JsonKey(name: 'returnable') bool? returnable,
      @JsonKey(name: 'is_returned') IsReturned? is_returned});

  @override
  $SubstituteProductDataCopyWith<$Res>? get substituteProductData;
  @override
  $IsReturnedCopyWith<$Res>? get is_returned;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderProductId = freezed,
    Object? productId = freezed,
    Object? productName = freezed,
    Object? productBarcode = freezed,
    Object? productImage = freezed,
    Object? productPrice = freezed,
    Object? productQuantity = freezed,
    Object? mainCategory = freezed,
    Object? subCategory = freezed,
    Object? assignedCategory = freezed,
    Object? vendor = freezed,
    Object? orderStatus = freezed,
    Object? insuranceStatus = freezed,
    Object? deliveredOn = freezed,
    Object? cancelledDate = freezed,
    Object? substituteExcessAmountHandling = freezed,
    Object? substituteExcessAmount = freezed,
    Object? insurancePrice = freezed,
    Object? substituteProductData = freezed,
    Object? isCancellable = freezed,
    Object? returnable = freezed,
    Object? is_returned = freezed,
  }) {
    return _then(_$ProductImpl(
      orderProductId: freezed == orderProductId
          ? _value.orderProductId
          : orderProductId // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      productBarcode: freezed == productBarcode
          ? _value.productBarcode
          : productBarcode // ignore: cast_nullable_to_non_nullable
              as String?,
      productImage: freezed == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String?,
      productPrice: freezed == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      productQuantity: freezed == productQuantity
          ? _value.productQuantity
          : productQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      mainCategory: freezed == mainCategory
          ? _value.mainCategory
          : mainCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedCategory: freezed == assignedCategory
          ? _value.assignedCategory
          : assignedCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      vendor: freezed == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String?,
      orderStatus: freezed == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      insuranceStatus: freezed == insuranceStatus
          ? _value.insuranceStatus
          : insuranceStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deliveredOn: freezed == deliveredOn
          ? _value.deliveredOn
          : deliveredOn // ignore: cast_nullable_to_non_nullable
              as dynamic,
      cancelledDate: freezed == cancelledDate
          ? _value.cancelledDate
          : cancelledDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      substituteExcessAmountHandling: freezed == substituteExcessAmountHandling
          ? _value.substituteExcessAmountHandling
          : substituteExcessAmountHandling // ignore: cast_nullable_to_non_nullable
              as dynamic,
      substituteExcessAmount: freezed == substituteExcessAmount
          ? _value.substituteExcessAmount
          : substituteExcessAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      insurancePrice: freezed == insurancePrice
          ? _value.insurancePrice
          : insurancePrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      substituteProductData: freezed == substituteProductData
          ? _value.substituteProductData
          : substituteProductData // ignore: cast_nullable_to_non_nullable
              as SubstituteProductData?,
      isCancellable: freezed == isCancellable
          ? _value.isCancellable
          : isCancellable // ignore: cast_nullable_to_non_nullable
              as bool?,
      returnable: freezed == returnable
          ? _value.returnable
          : returnable // ignore: cast_nullable_to_non_nullable
              as bool?,
      is_returned: freezed == is_returned
          ? _value.is_returned
          : is_returned // ignore: cast_nullable_to_non_nullable
              as IsReturned?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  _$ProductImpl(
      {@JsonKey(name: 'order_product_id') this.orderProductId,
      @JsonKey(name: 'product_id') this.productId,
      @JsonKey(name: 'product_name') this.productName,
      @JsonKey(name: 'product_barcode') this.productBarcode,
      @JsonKey(name: 'product_image') this.productImage,
      @JsonKey(name: 'product_price') this.productPrice,
      @JsonKey(name: 'product_quantity') this.productQuantity,
      @JsonKey(name: 'main_category') this.mainCategory,
      @JsonKey(name: 'sub_category') this.subCategory,
      @JsonKey(name: 'assigned_category') this.assignedCategory,
      this.vendor,
      @JsonKey(name: 'order_status') this.orderStatus,
      @JsonKey(name: 'insurance_status') this.insuranceStatus,
      @JsonKey(name: 'delivered_on') this.deliveredOn,
      @JsonKey(name: 'cancelled_date') this.cancelledDate,
      @JsonKey(name: 'substitute_excess_amount_handling')
      this.substituteExcessAmountHandling,
      @JsonKey(name: 'substitute_excess_amount') this.substituteExcessAmount,
      @JsonKey(name: 'insurance_price') this.insurancePrice,
      @JsonKey(name: 'substitute_product_data') this.substituteProductData,
      @JsonKey(name: 'is_cancellable') this.isCancellable,
      @JsonKey(name: 'returnable') this.returnable,
      @JsonKey(name: 'is_returned') this.is_returned});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @JsonKey(name: 'order_product_id')
  final int? orderProductId;
  @override
  @JsonKey(name: 'product_id')
  final int? productId;
  @override
  @JsonKey(name: 'product_name')
  final String? productName;
  @override
  @JsonKey(name: 'product_barcode')
  final String? productBarcode;
  @override
  @JsonKey(name: 'product_image')
  final String? productImage;
  @override
  @JsonKey(name: 'product_price')
  final double? productPrice;
  @override
  @JsonKey(name: 'product_quantity')
  final int? productQuantity;
  @override
  @JsonKey(name: 'main_category')
  final String? mainCategory;
  @override
  @JsonKey(name: 'sub_category')
  final String? subCategory;
  @override
  @JsonKey(name: 'assigned_category')
  final String? assignedCategory;
  @override
  final String? vendor;
  @override
  @JsonKey(name: 'order_status')
  final String? orderStatus;
  @override
  @JsonKey(name: 'insurance_status')
  final dynamic insuranceStatus;
  @override
  @JsonKey(name: 'delivered_on')
  final dynamic deliveredOn;
  @override
  @JsonKey(name: 'cancelled_date')
  final dynamic cancelledDate;
  @override
  @JsonKey(name: 'substitute_excess_amount_handling')
  final dynamic substituteExcessAmountHandling;
  @override
  @JsonKey(name: 'substitute_excess_amount')
  final double? substituteExcessAmount;
  @override
  @JsonKey(name: 'insurance_price')
  final dynamic insurancePrice;
  @override
  @JsonKey(name: 'substitute_product_data')
  final SubstituteProductData? substituteProductData;
  @override
  @JsonKey(name: 'is_cancellable')
  final bool? isCancellable;
  @override
  @JsonKey(name: 'returnable')
  final bool? returnable;
  @override
  @JsonKey(name: 'is_returned')
  final IsReturned? is_returned;

  @override
  String toString() {
    return 'Product(orderProductId: $orderProductId, productId: $productId, productName: $productName, productBarcode: $productBarcode, productImage: $productImage, productPrice: $productPrice, productQuantity: $productQuantity, mainCategory: $mainCategory, subCategory: $subCategory, assignedCategory: $assignedCategory, vendor: $vendor, orderStatus: $orderStatus, insuranceStatus: $insuranceStatus, deliveredOn: $deliveredOn, cancelledDate: $cancelledDate, substituteExcessAmountHandling: $substituteExcessAmountHandling, substituteExcessAmount: $substituteExcessAmount, insurancePrice: $insurancePrice, substituteProductData: $substituteProductData, isCancellable: $isCancellable, returnable: $returnable, is_returned: $is_returned)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.orderProductId, orderProductId) ||
                other.orderProductId == orderProductId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productBarcode, productBarcode) ||
                other.productBarcode == productBarcode) &&
            (identical(other.productImage, productImage) ||
                other.productImage == productImage) &&
            (identical(other.productPrice, productPrice) ||
                other.productPrice == productPrice) &&
            (identical(other.productQuantity, productQuantity) ||
                other.productQuantity == productQuantity) &&
            (identical(other.mainCategory, mainCategory) ||
                other.mainCategory == mainCategory) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.assignedCategory, assignedCategory) ||
                other.assignedCategory == assignedCategory) &&
            (identical(other.vendor, vendor) || other.vendor == vendor) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            const DeepCollectionEquality()
                .equals(other.insuranceStatus, insuranceStatus) &&
            const DeepCollectionEquality()
                .equals(other.deliveredOn, deliveredOn) &&
            const DeepCollectionEquality()
                .equals(other.cancelledDate, cancelledDate) &&
            const DeepCollectionEquality().equals(
                other.substituteExcessAmountHandling,
                substituteExcessAmountHandling) &&
            (identical(other.substituteExcessAmount, substituteExcessAmount) ||
                other.substituteExcessAmount == substituteExcessAmount) &&
            const DeepCollectionEquality()
                .equals(other.insurancePrice, insurancePrice) &&
            (identical(other.substituteProductData, substituteProductData) ||
                other.substituteProductData == substituteProductData) &&
            (identical(other.isCancellable, isCancellable) ||
                other.isCancellable == isCancellable) &&
            (identical(other.returnable, returnable) ||
                other.returnable == returnable) &&
            (identical(other.is_returned, is_returned) ||
                other.is_returned == is_returned));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        orderProductId,
        productId,
        productName,
        productBarcode,
        productImage,
        productPrice,
        productQuantity,
        mainCategory,
        subCategory,
        assignedCategory,
        vendor,
        orderStatus,
        const DeepCollectionEquality().hash(insuranceStatus),
        const DeepCollectionEquality().hash(deliveredOn),
        const DeepCollectionEquality().hash(cancelledDate),
        const DeepCollectionEquality().hash(substituteExcessAmountHandling),
        substituteExcessAmount,
        const DeepCollectionEquality().hash(insurancePrice),
        substituteProductData,
        isCancellable,
        returnable,
        is_returned
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  factory _Product(
          {@JsonKey(name: 'order_product_id') final int? orderProductId,
          @JsonKey(name: 'product_id') final int? productId,
          @JsonKey(name: 'product_name') final String? productName,
          @JsonKey(name: 'product_barcode') final String? productBarcode,
          @JsonKey(name: 'product_image') final String? productImage,
          @JsonKey(name: 'product_price') final double? productPrice,
          @JsonKey(name: 'product_quantity') final int? productQuantity,
          @JsonKey(name: 'main_category') final String? mainCategory,
          @JsonKey(name: 'sub_category') final String? subCategory,
          @JsonKey(name: 'assigned_category') final String? assignedCategory,
          final String? vendor,
          @JsonKey(name: 'order_status') final String? orderStatus,
          @JsonKey(name: 'insurance_status') final dynamic insuranceStatus,
          @JsonKey(name: 'delivered_on') final dynamic deliveredOn,
          @JsonKey(name: 'cancelled_date') final dynamic cancelledDate,
          @JsonKey(name: 'substitute_excess_amount_handling')
          final dynamic substituteExcessAmountHandling,
          @JsonKey(name: 'substitute_excess_amount')
          final double? substituteExcessAmount,
          @JsonKey(name: 'insurance_price') final dynamic insurancePrice,
          @JsonKey(name: 'substitute_product_data')
          final SubstituteProductData? substituteProductData,
          @JsonKey(name: 'is_cancellable') final bool? isCancellable,
          @JsonKey(name: 'returnable') final bool? returnable,
          @JsonKey(name: 'is_returned') final IsReturned? is_returned}) =
      _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  @JsonKey(name: 'order_product_id')
  int? get orderProductId;
  @override
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  @JsonKey(name: 'product_name')
  String? get productName;
  @override
  @JsonKey(name: 'product_barcode')
  String? get productBarcode;
  @override
  @JsonKey(name: 'product_image')
  String? get productImage;
  @override
  @JsonKey(name: 'product_price')
  double? get productPrice;
  @override
  @JsonKey(name: 'product_quantity')
  int? get productQuantity;
  @override
  @JsonKey(name: 'main_category')
  String? get mainCategory;
  @override
  @JsonKey(name: 'sub_category')
  String? get subCategory;
  @override
  @JsonKey(name: 'assigned_category')
  String? get assignedCategory;
  @override
  String? get vendor;
  @override
  @JsonKey(name: 'order_status')
  String? get orderStatus;
  @override
  @JsonKey(name: 'insurance_status')
  dynamic get insuranceStatus;
  @override
  @JsonKey(name: 'delivered_on')
  dynamic get deliveredOn;
  @override
  @JsonKey(name: 'cancelled_date')
  dynamic get cancelledDate;
  @override
  @JsonKey(name: 'substitute_excess_amount_handling')
  dynamic get substituteExcessAmountHandling;
  @override
  @JsonKey(name: 'substitute_excess_amount')
  double? get substituteExcessAmount;
  @override
  @JsonKey(name: 'insurance_price')
  dynamic get insurancePrice;
  @override
  @JsonKey(name: 'substitute_product_data')
  SubstituteProductData? get substituteProductData;
  @override
  @JsonKey(name: 'is_cancellable')
  bool? get isCancellable;
  @override
  @JsonKey(name: 'returnable')
  bool? get returnable;
  @override
  @JsonKey(name: 'is_returned')
  IsReturned? get is_returned;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
