// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_reason.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReturnReason _$ReturnReasonFromJson(Map<String, dynamic> json) {
  return _ReturnReason.fromJson(json);
}

/// @nodoc
mixin _$ReturnReason {
  int? get id => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReturnReasonCopyWith<ReturnReason> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnReasonCopyWith<$Res> {
  factory $ReturnReasonCopyWith(
          ReturnReason value, $Res Function(ReturnReason) then) =
      _$ReturnReasonCopyWithImpl<$Res, ReturnReason>;
  @useResult
  $Res call({int? id, String? reason});
}

/// @nodoc
class _$ReturnReasonCopyWithImpl<$Res, $Val extends ReturnReason>
    implements $ReturnReasonCopyWith<$Res> {
  _$ReturnReasonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReturnReasonImplCopyWith<$Res>
    implements $ReturnReasonCopyWith<$Res> {
  factory _$$ReturnReasonImplCopyWith(
          _$ReturnReasonImpl value, $Res Function(_$ReturnReasonImpl) then) =
      __$$ReturnReasonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? reason});
}

/// @nodoc
class __$$ReturnReasonImplCopyWithImpl<$Res>
    extends _$ReturnReasonCopyWithImpl<$Res, _$ReturnReasonImpl>
    implements _$$ReturnReasonImplCopyWith<$Res> {
  __$$ReturnReasonImplCopyWithImpl(
      _$ReturnReasonImpl _value, $Res Function(_$ReturnReasonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$ReturnReasonImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReturnReasonImpl implements _ReturnReason {
  _$ReturnReasonImpl({this.id, this.reason});

  factory _$ReturnReasonImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReturnReasonImplFromJson(json);

  @override
  final int? id;
  @override
  final String? reason;

  @override
  String toString() {
    return 'ReturnReason(id: $id, reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnReasonImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnReasonImplCopyWith<_$ReturnReasonImpl> get copyWith =>
      __$$ReturnReasonImplCopyWithImpl<_$ReturnReasonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReturnReasonImplToJson(
      this,
    );
  }
}

abstract class _ReturnReason implements ReturnReason {
  factory _ReturnReason({final int? id, final String? reason}) =
      _$ReturnReasonImpl;

  factory _ReturnReason.fromJson(Map<String, dynamic> json) =
      _$ReturnReasonImpl.fromJson;

  @override
  int? get id;
  @override
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$ReturnReasonImplCopyWith<_$ReturnReasonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
