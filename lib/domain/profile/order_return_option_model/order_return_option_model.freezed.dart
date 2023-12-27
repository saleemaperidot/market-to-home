// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_return_option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderReturnOptionModel _$OrderReturnOptionModelFromJson(
    Map<String, dynamic> json) {
  return _OrderReturnOptionModel.fromJson(json);
}

/// @nodoc
mixin _$OrderReturnOptionModel {
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_options')
  List<ReturnOption>? get returnOptions => throw _privateConstructorUsedError;
  @JsonKey(name: 'return_reasons')
  List<ReturnReason>? get returnReasons => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderReturnOptionModelCopyWith<OrderReturnOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderReturnOptionModelCopyWith<$Res> {
  factory $OrderReturnOptionModelCopyWith(OrderReturnOptionModel value,
          $Res Function(OrderReturnOptionModel) then) =
      _$OrderReturnOptionModelCopyWithImpl<$Res, OrderReturnOptionModel>;
  @useResult
  $Res call(
      {bool? status,
      @JsonKey(name: 'return_options') List<ReturnOption>? returnOptions,
      @JsonKey(name: 'return_reasons') List<ReturnReason>? returnReasons});
}

/// @nodoc
class _$OrderReturnOptionModelCopyWithImpl<$Res,
        $Val extends OrderReturnOptionModel>
    implements $OrderReturnOptionModelCopyWith<$Res> {
  _$OrderReturnOptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? returnOptions = freezed,
    Object? returnReasons = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      returnOptions: freezed == returnOptions
          ? _value.returnOptions
          : returnOptions // ignore: cast_nullable_to_non_nullable
              as List<ReturnOption>?,
      returnReasons: freezed == returnReasons
          ? _value.returnReasons
          : returnReasons // ignore: cast_nullable_to_non_nullable
              as List<ReturnReason>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderReturnOptionModelImplCopyWith<$Res>
    implements $OrderReturnOptionModelCopyWith<$Res> {
  factory _$$OrderReturnOptionModelImplCopyWith(
          _$OrderReturnOptionModelImpl value,
          $Res Function(_$OrderReturnOptionModelImpl) then) =
      __$$OrderReturnOptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? status,
      @JsonKey(name: 'return_options') List<ReturnOption>? returnOptions,
      @JsonKey(name: 'return_reasons') List<ReturnReason>? returnReasons});
}

/// @nodoc
class __$$OrderReturnOptionModelImplCopyWithImpl<$Res>
    extends _$OrderReturnOptionModelCopyWithImpl<$Res,
        _$OrderReturnOptionModelImpl>
    implements _$$OrderReturnOptionModelImplCopyWith<$Res> {
  __$$OrderReturnOptionModelImplCopyWithImpl(
      _$OrderReturnOptionModelImpl _value,
      $Res Function(_$OrderReturnOptionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? returnOptions = freezed,
    Object? returnReasons = freezed,
  }) {
    return _then(_$OrderReturnOptionModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      returnOptions: freezed == returnOptions
          ? _value._returnOptions
          : returnOptions // ignore: cast_nullable_to_non_nullable
              as List<ReturnOption>?,
      returnReasons: freezed == returnReasons
          ? _value._returnReasons
          : returnReasons // ignore: cast_nullable_to_non_nullable
              as List<ReturnReason>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderReturnOptionModelImpl implements _OrderReturnOptionModel {
  _$OrderReturnOptionModelImpl(
      {this.status,
      @JsonKey(name: 'return_options') final List<ReturnOption>? returnOptions,
      @JsonKey(name: 'return_reasons') final List<ReturnReason>? returnReasons})
      : _returnOptions = returnOptions,
        _returnReasons = returnReasons;

  factory _$OrderReturnOptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderReturnOptionModelImplFromJson(json);

  @override
  final bool? status;
  final List<ReturnOption>? _returnOptions;
  @override
  @JsonKey(name: 'return_options')
  List<ReturnOption>? get returnOptions {
    final value = _returnOptions;
    if (value == null) return null;
    if (_returnOptions is EqualUnmodifiableListView) return _returnOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ReturnReason>? _returnReasons;
  @override
  @JsonKey(name: 'return_reasons')
  List<ReturnReason>? get returnReasons {
    final value = _returnReasons;
    if (value == null) return null;
    if (_returnReasons is EqualUnmodifiableListView) return _returnReasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'OrderReturnOptionModel(status: $status, returnOptions: $returnOptions, returnReasons: $returnReasons)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderReturnOptionModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._returnOptions, _returnOptions) &&
            const DeepCollectionEquality()
                .equals(other._returnReasons, _returnReasons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_returnOptions),
      const DeepCollectionEquality().hash(_returnReasons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderReturnOptionModelImplCopyWith<_$OrderReturnOptionModelImpl>
      get copyWith => __$$OrderReturnOptionModelImplCopyWithImpl<
          _$OrderReturnOptionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderReturnOptionModelImplToJson(
      this,
    );
  }
}

abstract class _OrderReturnOptionModel implements OrderReturnOptionModel {
  factory _OrderReturnOptionModel(
      {final bool? status,
      @JsonKey(name: 'return_options') final List<ReturnOption>? returnOptions,
      @JsonKey(name: 'return_reasons')
      final List<ReturnReason>? returnReasons}) = _$OrderReturnOptionModelImpl;

  factory _OrderReturnOptionModel.fromJson(Map<String, dynamic> json) =
      _$OrderReturnOptionModelImpl.fromJson;

  @override
  bool? get status;
  @override
  @JsonKey(name: 'return_options')
  List<ReturnOption>? get returnOptions;
  @override
  @JsonKey(name: 'return_reasons')
  List<ReturnReason>? get returnReasons;
  @override
  @JsonKey(ignore: true)
  _$$OrderReturnOptionModelImplCopyWith<_$OrderReturnOptionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
