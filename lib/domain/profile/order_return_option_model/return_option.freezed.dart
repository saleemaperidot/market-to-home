// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReturnOption _$ReturnOptionFromJson(Map<String, dynamic> json) {
  return _ReturnOption.fromJson(json);
}

/// @nodoc
mixin _$ReturnOption {
  int? get id => throw _privateConstructorUsedError;
  String? get option => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReturnOptionCopyWith<ReturnOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnOptionCopyWith<$Res> {
  factory $ReturnOptionCopyWith(
          ReturnOption value, $Res Function(ReturnOption) then) =
      _$ReturnOptionCopyWithImpl<$Res, ReturnOption>;
  @useResult
  $Res call({int? id, String? option});
}

/// @nodoc
class _$ReturnOptionCopyWithImpl<$Res, $Val extends ReturnOption>
    implements $ReturnOptionCopyWith<$Res> {
  _$ReturnOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? option = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      option: freezed == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReturnOptionImplCopyWith<$Res>
    implements $ReturnOptionCopyWith<$Res> {
  factory _$$ReturnOptionImplCopyWith(
          _$ReturnOptionImpl value, $Res Function(_$ReturnOptionImpl) then) =
      __$$ReturnOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? option});
}

/// @nodoc
class __$$ReturnOptionImplCopyWithImpl<$Res>
    extends _$ReturnOptionCopyWithImpl<$Res, _$ReturnOptionImpl>
    implements _$$ReturnOptionImplCopyWith<$Res> {
  __$$ReturnOptionImplCopyWithImpl(
      _$ReturnOptionImpl _value, $Res Function(_$ReturnOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? option = freezed,
  }) {
    return _then(_$ReturnOptionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      option: freezed == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReturnOptionImpl implements _ReturnOption {
  _$ReturnOptionImpl({this.id, this.option});

  factory _$ReturnOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReturnOptionImplFromJson(json);

  @override
  final int? id;
  @override
  final String? option;

  @override
  String toString() {
    return 'ReturnOption(id: $id, option: $option)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnOptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.option, option) || other.option == option));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, option);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnOptionImplCopyWith<_$ReturnOptionImpl> get copyWith =>
      __$$ReturnOptionImplCopyWithImpl<_$ReturnOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReturnOptionImplToJson(
      this,
    );
  }
}

abstract class _ReturnOption implements ReturnOption {
  factory _ReturnOption({final int? id, final String? option}) =
      _$ReturnOptionImpl;

  factory _ReturnOption.fromJson(Map<String, dynamic> json) =
      _$ReturnOptionImpl.fromJson;

  @override
  int? get id;
  @override
  String? get option;
  @override
  @JsonKey(ignore: true)
  _$$ReturnOptionImplCopyWith<_$ReturnOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
