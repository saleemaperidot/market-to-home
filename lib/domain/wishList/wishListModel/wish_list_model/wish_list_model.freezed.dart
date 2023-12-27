// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wish_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WishListModel _$WishListModelFromJson(Map<String, dynamic> json) {
  return _WishListModel.fromJson(json);
}

/// @nodoc
mixin _$WishListModel {
  bool? get status => throw _privateConstructorUsedError;
  List<WishListData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishListModelCopyWith<WishListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishListModelCopyWith<$Res> {
  factory $WishListModelCopyWith(
          WishListModel value, $Res Function(WishListModel) then) =
      _$WishListModelCopyWithImpl<$Res, WishListModel>;
  @useResult
  $Res call({bool? status, List<WishListData>? data});
}

/// @nodoc
class _$WishListModelCopyWithImpl<$Res, $Val extends WishListModel>
    implements $WishListModelCopyWith<$Res> {
  _$WishListModelCopyWithImpl(this._value, this._then);

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
              as List<WishListData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishListModelImplCopyWith<$Res>
    implements $WishListModelCopyWith<$Res> {
  factory _$$WishListModelImplCopyWith(
          _$WishListModelImpl value, $Res Function(_$WishListModelImpl) then) =
      __$$WishListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? status, List<WishListData>? data});
}

/// @nodoc
class __$$WishListModelImplCopyWithImpl<$Res>
    extends _$WishListModelCopyWithImpl<$Res, _$WishListModelImpl>
    implements _$$WishListModelImplCopyWith<$Res> {
  __$$WishListModelImplCopyWithImpl(
      _$WishListModelImpl _value, $Res Function(_$WishListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$WishListModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<WishListData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WishListModelImpl implements _WishListModel {
  _$WishListModelImpl({this.status, final List<WishListData>? data})
      : _data = data;

  factory _$WishListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishListModelImplFromJson(json);

  @override
  final bool? status;
  final List<WishListData>? _data;
  @override
  List<WishListData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WishListModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishListModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WishListModelImplCopyWith<_$WishListModelImpl> get copyWith =>
      __$$WishListModelImplCopyWithImpl<_$WishListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishListModelImplToJson(
      this,
    );
  }
}

abstract class _WishListModel implements WishListModel {
  factory _WishListModel({final bool? status, final List<WishListData>? data}) =
      _$WishListModelImpl;

  factory _WishListModel.fromJson(Map<String, dynamic> json) =
      _$WishListModelImpl.fromJson;

  @override
  bool? get status;
  @override
  List<WishListData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$WishListModelImplCopyWith<_$WishListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
