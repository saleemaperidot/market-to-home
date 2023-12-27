// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_profile_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetProfileDataModel _$GetProfileDataModelFromJson(Map<String, dynamic> json) {
  return _GetProfileDataModel.fromJson(json);
}

/// @nodoc
mixin _$GetProfileDataModel {
  bool? get status => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetProfileDataModelCopyWith<GetProfileDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfileDataModelCopyWith<$Res> {
  factory $GetProfileDataModelCopyWith(
          GetProfileDataModel value, $Res Function(GetProfileDataModel) then) =
      _$GetProfileDataModelCopyWithImpl<$Res, GetProfileDataModel>;
  @useResult
  $Res call({bool? status, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetProfileDataModelCopyWithImpl<$Res, $Val extends GetProfileDataModel>
    implements $GetProfileDataModelCopyWith<$Res> {
  _$GetProfileDataModelCopyWithImpl(this._value, this._then);

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
abstract class _$$GetProfileDataModelImplCopyWith<$Res>
    implements $GetProfileDataModelCopyWith<$Res> {
  factory _$$GetProfileDataModelImplCopyWith(_$GetProfileDataModelImpl value,
          $Res Function(_$GetProfileDataModelImpl) then) =
      __$$GetProfileDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetProfileDataModelImplCopyWithImpl<$Res>
    extends _$GetProfileDataModelCopyWithImpl<$Res, _$GetProfileDataModelImpl>
    implements _$$GetProfileDataModelImplCopyWith<$Res> {
  __$$GetProfileDataModelImplCopyWithImpl(_$GetProfileDataModelImpl _value,
      $Res Function(_$GetProfileDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetProfileDataModelImpl(
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
class _$GetProfileDataModelImpl implements _GetProfileDataModel {
  _$GetProfileDataModelImpl({this.status, this.data});

  factory _$GetProfileDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetProfileDataModelImplFromJson(json);

  @override
  final bool? status;
  @override
  final Data? data;

  @override
  String toString() {
    return 'GetProfileDataModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileDataModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileDataModelImplCopyWith<_$GetProfileDataModelImpl> get copyWith =>
      __$$GetProfileDataModelImplCopyWithImpl<_$GetProfileDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetProfileDataModelImplToJson(
      this,
    );
  }
}

abstract class _GetProfileDataModel implements GetProfileDataModel {
  factory _GetProfileDataModel({final bool? status, final Data? data}) =
      _$GetProfileDataModelImpl;

  factory _GetProfileDataModel.fromJson(Map<String, dynamic> json) =
      _$GetProfileDataModelImpl.fromJson;

  @override
  bool? get status;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetProfileDataModelImplCopyWith<_$GetProfileDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
