// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckoutModel _$CheckoutModelFromJson(Map<String, dynamic> json) {
  return _CheckoutModel.fromJson(json);
}

/// @nodoc
mixin _$CheckoutModel {
  String? get message => throw _privateConstructorUsedError;
  bool? get status => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckoutModelCopyWith<CheckoutModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckoutModelCopyWith<$Res> {
  factory $CheckoutModelCopyWith(
          CheckoutModel value, $Res Function(CheckoutModel) then) =
      _$CheckoutModelCopyWithImpl<$Res, CheckoutModel>;
  @useResult
  $Res call({String? message, bool? status, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CheckoutModelCopyWithImpl<$Res, $Val extends CheckoutModel>
    implements $CheckoutModelCopyWith<$Res> {
  _$CheckoutModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CheckoutModelImplCopyWith<$Res>
    implements $CheckoutModelCopyWith<$Res> {
  factory _$$CheckoutModelImplCopyWith(
          _$CheckoutModelImpl value, $Res Function(_$CheckoutModelImpl) then) =
      __$$CheckoutModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, bool? status, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CheckoutModelImplCopyWithImpl<$Res>
    extends _$CheckoutModelCopyWithImpl<$Res, _$CheckoutModelImpl>
    implements _$$CheckoutModelImplCopyWith<$Res> {
  __$$CheckoutModelImplCopyWithImpl(
      _$CheckoutModelImpl _value, $Res Function(_$CheckoutModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CheckoutModelImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckoutModelImpl implements _CheckoutModel {
  _$CheckoutModelImpl({this.message, this.status, this.data});

  factory _$CheckoutModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckoutModelImplFromJson(json);

  @override
  final String? message;
  @override
  final bool? status;
  @override
  final Data? data;

  @override
  String toString() {
    return 'CheckoutModel(message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckoutModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckoutModelImplCopyWith<_$CheckoutModelImpl> get copyWith =>
      __$$CheckoutModelImplCopyWithImpl<_$CheckoutModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckoutModelImplToJson(
      this,
    );
  }
}

abstract class _CheckoutModel implements CheckoutModel {
  factory _CheckoutModel(
      {final String? message,
      final bool? status,
      final Data? data}) = _$CheckoutModelImpl;

  factory _CheckoutModel.fromJson(Map<String, dynamic> json) =
      _$CheckoutModelImpl.fromJson;

  @override
  String? get message;
  @override
  bool? get status;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$CheckoutModelImplCopyWith<_$CheckoutModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
