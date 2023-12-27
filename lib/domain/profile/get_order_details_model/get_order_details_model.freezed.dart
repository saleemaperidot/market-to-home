// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_order_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetOrderDetailsModel _$GetOrderDetailsModelFromJson(Map<String, dynamic> json) {
  return _GetOrderDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$GetOrderDetailsModel {
  bool? get status => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetOrderDetailsModelCopyWith<GetOrderDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOrderDetailsModelCopyWith<$Res> {
  factory $GetOrderDetailsModelCopyWith(GetOrderDetailsModel value,
          $Res Function(GetOrderDetailsModel) then) =
      _$GetOrderDetailsModelCopyWithImpl<$Res, GetOrderDetailsModel>;
  @useResult
  $Res call({bool? status, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetOrderDetailsModelCopyWithImpl<$Res,
        $Val extends GetOrderDetailsModel>
    implements $GetOrderDetailsModelCopyWith<$Res> {
  _$GetOrderDetailsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$GetOrderDetailsModelImplCopyWith<$Res>
    implements $GetOrderDetailsModelCopyWith<$Res> {
  factory _$$GetOrderDetailsModelImplCopyWith(_$GetOrderDetailsModelImpl value,
          $Res Function(_$GetOrderDetailsModelImpl) then) =
      __$$GetOrderDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetOrderDetailsModelImplCopyWithImpl<$Res>
    extends _$GetOrderDetailsModelCopyWithImpl<$Res, _$GetOrderDetailsModelImpl>
    implements _$$GetOrderDetailsModelImplCopyWith<$Res> {
  __$$GetOrderDetailsModelImplCopyWithImpl(_$GetOrderDetailsModelImpl _value,
      $Res Function(_$GetOrderDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetOrderDetailsModelImpl(
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
class _$GetOrderDetailsModelImpl implements _GetOrderDetailsModel {
  _$GetOrderDetailsModelImpl({this.status, this.data});

  factory _$GetOrderDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetOrderDetailsModelImplFromJson(json);

  @override
  final bool? status;
  @override
  final Data? data;

  @override
  String toString() {
    return 'GetOrderDetailsModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderDetailsModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderDetailsModelImplCopyWith<_$GetOrderDetailsModelImpl>
      get copyWith =>
          __$$GetOrderDetailsModelImplCopyWithImpl<_$GetOrderDetailsModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetOrderDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _GetOrderDetailsModel implements GetOrderDetailsModel {
  factory _GetOrderDetailsModel({final bool? status, final Data? data}) =
      _$GetOrderDetailsModelImpl;

  factory _GetOrderDetailsModel.fromJson(Map<String, dynamic> json) =
      _$GetOrderDetailsModelImpl.fromJson;

  @override
  bool? get status;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetOrderDetailsModelImplCopyWith<_$GetOrderDetailsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
