// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sing_in_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SingInBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        loginWithEmailPassword,
    required TResult Function(
            String phoneNumber, BuildContext context, String? tempUserId)
        loginWithPhoneNumber,
    required TResult Function(BuildContext context) resendOtp,
    required TResult Function(BuildContext context, String otp) verifyOtp,
    required TResult Function(String form) back,
    required TResult Function(BuildContext context, String email)
        forgotPassword,
    required TResult Function(
            BuildContext context,
            String userName,
            String email,
            String password,
            String phoneNumber,
            String referalCode)
        userRegistration,
    required TResult Function() appInitCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        loginWithEmailPassword,
    TResult? Function(
            String phoneNumber, BuildContext context, String? tempUserId)?
        loginWithPhoneNumber,
    TResult? Function(BuildContext context)? resendOtp,
    TResult? Function(BuildContext context, String otp)? verifyOtp,
    TResult? Function(String form)? back,
    TResult? Function(BuildContext context, String email)? forgotPassword,
    TResult? Function(BuildContext context, String userName, String email,
            String password, String phoneNumber, String referalCode)?
        userRegistration,
    TResult? Function()? appInitCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        loginWithEmailPassword,
    TResult Function(
            String phoneNumber, BuildContext context, String? tempUserId)?
        loginWithPhoneNumber,
    TResult Function(BuildContext context)? resendOtp,
    TResult Function(BuildContext context, String otp)? verifyOtp,
    TResult Function(String form)? back,
    TResult Function(BuildContext context, String email)? forgotPassword,
    TResult Function(BuildContext context, String userName, String email,
            String password, String phoneNumber, String referalCode)?
        userRegistration,
    TResult Function()? appInitCheck,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginWithEmailPassword value)
        loginWithEmailPassword,
    required TResult Function(LoginWithPhoneNumber value) loginWithPhoneNumber,
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(Back value) back,
    required TResult Function(ForgotPasswordEvent value) forgotPassword,
    required TResult Function(UserRegistration value) userRegistration,
    required TResult Function(AppInitCheck value) appInitCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult? Function(LoginWithPhoneNumber value)? loginWithPhoneNumber,
    TResult? Function(ResendOtp value)? resendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(Back value)? back,
    TResult? Function(ForgotPasswordEvent value)? forgotPassword,
    TResult? Function(UserRegistration value)? userRegistration,
    TResult? Function(AppInitCheck value)? appInitCheck,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult Function(LoginWithPhoneNumber value)? loginWithPhoneNumber,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(Back value)? back,
    TResult Function(ForgotPasswordEvent value)? forgotPassword,
    TResult Function(UserRegistration value)? userRegistration,
    TResult Function(AppInitCheck value)? appInitCheck,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingInBlocEventCopyWith<$Res> {
  factory $SingInBlocEventCopyWith(
          SingInBlocEvent value, $Res Function(SingInBlocEvent) then) =
      _$SingInBlocEventCopyWithImpl<$Res, SingInBlocEvent>;
}

/// @nodoc
class _$SingInBlocEventCopyWithImpl<$Res, $Val extends SingInBlocEvent>
    implements $SingInBlocEventCopyWith<$Res> {
  _$SingInBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginWithEmailPasswordImplCopyWith<$Res> {
  factory _$$LoginWithEmailPasswordImplCopyWith(
          _$LoginWithEmailPasswordImpl value,
          $Res Function(_$LoginWithEmailPasswordImpl) then) =
      __$$LoginWithEmailPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, BuildContext context});
}

/// @nodoc
class __$$LoginWithEmailPasswordImplCopyWithImpl<$Res>
    extends _$SingInBlocEventCopyWithImpl<$Res, _$LoginWithEmailPasswordImpl>
    implements _$$LoginWithEmailPasswordImplCopyWith<$Res> {
  __$$LoginWithEmailPasswordImplCopyWithImpl(
      _$LoginWithEmailPasswordImpl _value,
      $Res Function(_$LoginWithEmailPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? context = null,
  }) {
    return _then(_$LoginWithEmailPasswordImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$LoginWithEmailPasswordImpl implements LoginWithEmailPassword {
  const _$LoginWithEmailPasswordImpl(this.email, this.password, this.context);

  @override
  final String email;
  @override
  final String password;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SingInBlocEvent.loginWithEmailPassword(email: $email, password: $password, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginWithEmailPasswordImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginWithEmailPasswordImplCopyWith<_$LoginWithEmailPasswordImpl>
      get copyWith => __$$LoginWithEmailPasswordImplCopyWithImpl<
          _$LoginWithEmailPasswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        loginWithEmailPassword,
    required TResult Function(
            String phoneNumber, BuildContext context, String? tempUserId)
        loginWithPhoneNumber,
    required TResult Function(BuildContext context) resendOtp,
    required TResult Function(BuildContext context, String otp) verifyOtp,
    required TResult Function(String form) back,
    required TResult Function(BuildContext context, String email)
        forgotPassword,
    required TResult Function(
            BuildContext context,
            String userName,
            String email,
            String password,
            String phoneNumber,
            String referalCode)
        userRegistration,
    required TResult Function() appInitCheck,
  }) {
    return loginWithEmailPassword(email, password, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        loginWithEmailPassword,
    TResult? Function(
            String phoneNumber, BuildContext context, String? tempUserId)?
        loginWithPhoneNumber,
    TResult? Function(BuildContext context)? resendOtp,
    TResult? Function(BuildContext context, String otp)? verifyOtp,
    TResult? Function(String form)? back,
    TResult? Function(BuildContext context, String email)? forgotPassword,
    TResult? Function(BuildContext context, String userName, String email,
            String password, String phoneNumber, String referalCode)?
        userRegistration,
    TResult? Function()? appInitCheck,
  }) {
    return loginWithEmailPassword?.call(email, password, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        loginWithEmailPassword,
    TResult Function(
            String phoneNumber, BuildContext context, String? tempUserId)?
        loginWithPhoneNumber,
    TResult Function(BuildContext context)? resendOtp,
    TResult Function(BuildContext context, String otp)? verifyOtp,
    TResult Function(String form)? back,
    TResult Function(BuildContext context, String email)? forgotPassword,
    TResult Function(BuildContext context, String userName, String email,
            String password, String phoneNumber, String referalCode)?
        userRegistration,
    TResult Function()? appInitCheck,
    required TResult orElse(),
  }) {
    if (loginWithEmailPassword != null) {
      return loginWithEmailPassword(email, password, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginWithEmailPassword value)
        loginWithEmailPassword,
    required TResult Function(LoginWithPhoneNumber value) loginWithPhoneNumber,
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(Back value) back,
    required TResult Function(ForgotPasswordEvent value) forgotPassword,
    required TResult Function(UserRegistration value) userRegistration,
    required TResult Function(AppInitCheck value) appInitCheck,
  }) {
    return loginWithEmailPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult? Function(LoginWithPhoneNumber value)? loginWithPhoneNumber,
    TResult? Function(ResendOtp value)? resendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(Back value)? back,
    TResult? Function(ForgotPasswordEvent value)? forgotPassword,
    TResult? Function(UserRegistration value)? userRegistration,
    TResult? Function(AppInitCheck value)? appInitCheck,
  }) {
    return loginWithEmailPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult Function(LoginWithPhoneNumber value)? loginWithPhoneNumber,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(Back value)? back,
    TResult Function(ForgotPasswordEvent value)? forgotPassword,
    TResult Function(UserRegistration value)? userRegistration,
    TResult Function(AppInitCheck value)? appInitCheck,
    required TResult orElse(),
  }) {
    if (loginWithEmailPassword != null) {
      return loginWithEmailPassword(this);
    }
    return orElse();
  }
}

abstract class LoginWithEmailPassword implements SingInBlocEvent {
  const factory LoginWithEmailPassword(
      final String email,
      final String password,
      final BuildContext context) = _$LoginWithEmailPasswordImpl;

  String get email;
  String get password;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$LoginWithEmailPasswordImplCopyWith<_$LoginWithEmailPasswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginWithPhoneNumberImplCopyWith<$Res> {
  factory _$$LoginWithPhoneNumberImplCopyWith(_$LoginWithPhoneNumberImpl value,
          $Res Function(_$LoginWithPhoneNumberImpl) then) =
      __$$LoginWithPhoneNumberImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber, BuildContext context, String? tempUserId});
}

/// @nodoc
class __$$LoginWithPhoneNumberImplCopyWithImpl<$Res>
    extends _$SingInBlocEventCopyWithImpl<$Res, _$LoginWithPhoneNumberImpl>
    implements _$$LoginWithPhoneNumberImplCopyWith<$Res> {
  __$$LoginWithPhoneNumberImplCopyWithImpl(_$LoginWithPhoneNumberImpl _value,
      $Res Function(_$LoginWithPhoneNumberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? context = null,
    Object? tempUserId = freezed,
  }) {
    return _then(_$LoginWithPhoneNumberImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      tempUserId: freezed == tempUserId
          ? _value.tempUserId
          : tempUserId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoginWithPhoneNumberImpl implements LoginWithPhoneNumber {
  const _$LoginWithPhoneNumberImpl(this.phoneNumber, this.context,
      {this.tempUserId});

  @override
  final String phoneNumber;
  @override
  final BuildContext context;
  @override
  final String? tempUserId;

  @override
  String toString() {
    return 'SingInBlocEvent.loginWithPhoneNumber(phoneNumber: $phoneNumber, context: $context, tempUserId: $tempUserId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginWithPhoneNumberImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.tempUserId, tempUserId) ||
                other.tempUserId == tempUserId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, phoneNumber, context, tempUserId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginWithPhoneNumberImplCopyWith<_$LoginWithPhoneNumberImpl>
      get copyWith =>
          __$$LoginWithPhoneNumberImplCopyWithImpl<_$LoginWithPhoneNumberImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        loginWithEmailPassword,
    required TResult Function(
            String phoneNumber, BuildContext context, String? tempUserId)
        loginWithPhoneNumber,
    required TResult Function(BuildContext context) resendOtp,
    required TResult Function(BuildContext context, String otp) verifyOtp,
    required TResult Function(String form) back,
    required TResult Function(BuildContext context, String email)
        forgotPassword,
    required TResult Function(
            BuildContext context,
            String userName,
            String email,
            String password,
            String phoneNumber,
            String referalCode)
        userRegistration,
    required TResult Function() appInitCheck,
  }) {
    return loginWithPhoneNumber(phoneNumber, context, tempUserId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        loginWithEmailPassword,
    TResult? Function(
            String phoneNumber, BuildContext context, String? tempUserId)?
        loginWithPhoneNumber,
    TResult? Function(BuildContext context)? resendOtp,
    TResult? Function(BuildContext context, String otp)? verifyOtp,
    TResult? Function(String form)? back,
    TResult? Function(BuildContext context, String email)? forgotPassword,
    TResult? Function(BuildContext context, String userName, String email,
            String password, String phoneNumber, String referalCode)?
        userRegistration,
    TResult? Function()? appInitCheck,
  }) {
    return loginWithPhoneNumber?.call(phoneNumber, context, tempUserId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        loginWithEmailPassword,
    TResult Function(
            String phoneNumber, BuildContext context, String? tempUserId)?
        loginWithPhoneNumber,
    TResult Function(BuildContext context)? resendOtp,
    TResult Function(BuildContext context, String otp)? verifyOtp,
    TResult Function(String form)? back,
    TResult Function(BuildContext context, String email)? forgotPassword,
    TResult Function(BuildContext context, String userName, String email,
            String password, String phoneNumber, String referalCode)?
        userRegistration,
    TResult Function()? appInitCheck,
    required TResult orElse(),
  }) {
    if (loginWithPhoneNumber != null) {
      return loginWithPhoneNumber(phoneNumber, context, tempUserId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginWithEmailPassword value)
        loginWithEmailPassword,
    required TResult Function(LoginWithPhoneNumber value) loginWithPhoneNumber,
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(Back value) back,
    required TResult Function(ForgotPasswordEvent value) forgotPassword,
    required TResult Function(UserRegistration value) userRegistration,
    required TResult Function(AppInitCheck value) appInitCheck,
  }) {
    return loginWithPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult? Function(LoginWithPhoneNumber value)? loginWithPhoneNumber,
    TResult? Function(ResendOtp value)? resendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(Back value)? back,
    TResult? Function(ForgotPasswordEvent value)? forgotPassword,
    TResult? Function(UserRegistration value)? userRegistration,
    TResult? Function(AppInitCheck value)? appInitCheck,
  }) {
    return loginWithPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult Function(LoginWithPhoneNumber value)? loginWithPhoneNumber,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(Back value)? back,
    TResult Function(ForgotPasswordEvent value)? forgotPassword,
    TResult Function(UserRegistration value)? userRegistration,
    TResult Function(AppInitCheck value)? appInitCheck,
    required TResult orElse(),
  }) {
    if (loginWithPhoneNumber != null) {
      return loginWithPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class LoginWithPhoneNumber implements SingInBlocEvent {
  const factory LoginWithPhoneNumber(
      final String phoneNumber, final BuildContext context,
      {final String? tempUserId}) = _$LoginWithPhoneNumberImpl;

  String get phoneNumber;
  BuildContext get context;
  String? get tempUserId;
  @JsonKey(ignore: true)
  _$$LoginWithPhoneNumberImplCopyWith<_$LoginWithPhoneNumberImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResendOtpImplCopyWith<$Res> {
  factory _$$ResendOtpImplCopyWith(
          _$ResendOtpImpl value, $Res Function(_$ResendOtpImpl) then) =
      __$$ResendOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context});
}

/// @nodoc
class __$$ResendOtpImplCopyWithImpl<$Res>
    extends _$SingInBlocEventCopyWithImpl<$Res, _$ResendOtpImpl>
    implements _$$ResendOtpImplCopyWith<$Res> {
  __$$ResendOtpImplCopyWithImpl(
      _$ResendOtpImpl _value, $Res Function(_$ResendOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
  }) {
    return _then(_$ResendOtpImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$ResendOtpImpl implements ResendOtp {
  const _$ResendOtpImpl(this.context);

  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SingInBlocEvent.resendOtp(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResendOtpImpl &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResendOtpImplCopyWith<_$ResendOtpImpl> get copyWith =>
      __$$ResendOtpImplCopyWithImpl<_$ResendOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        loginWithEmailPassword,
    required TResult Function(
            String phoneNumber, BuildContext context, String? tempUserId)
        loginWithPhoneNumber,
    required TResult Function(BuildContext context) resendOtp,
    required TResult Function(BuildContext context, String otp) verifyOtp,
    required TResult Function(String form) back,
    required TResult Function(BuildContext context, String email)
        forgotPassword,
    required TResult Function(
            BuildContext context,
            String userName,
            String email,
            String password,
            String phoneNumber,
            String referalCode)
        userRegistration,
    required TResult Function() appInitCheck,
  }) {
    return resendOtp(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        loginWithEmailPassword,
    TResult? Function(
            String phoneNumber, BuildContext context, String? tempUserId)?
        loginWithPhoneNumber,
    TResult? Function(BuildContext context)? resendOtp,
    TResult? Function(BuildContext context, String otp)? verifyOtp,
    TResult? Function(String form)? back,
    TResult? Function(BuildContext context, String email)? forgotPassword,
    TResult? Function(BuildContext context, String userName, String email,
            String password, String phoneNumber, String referalCode)?
        userRegistration,
    TResult? Function()? appInitCheck,
  }) {
    return resendOtp?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        loginWithEmailPassword,
    TResult Function(
            String phoneNumber, BuildContext context, String? tempUserId)?
        loginWithPhoneNumber,
    TResult Function(BuildContext context)? resendOtp,
    TResult Function(BuildContext context, String otp)? verifyOtp,
    TResult Function(String form)? back,
    TResult Function(BuildContext context, String email)? forgotPassword,
    TResult Function(BuildContext context, String userName, String email,
            String password, String phoneNumber, String referalCode)?
        userRegistration,
    TResult Function()? appInitCheck,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginWithEmailPassword value)
        loginWithEmailPassword,
    required TResult Function(LoginWithPhoneNumber value) loginWithPhoneNumber,
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(Back value) back,
    required TResult Function(ForgotPasswordEvent value) forgotPassword,
    required TResult Function(UserRegistration value) userRegistration,
    required TResult Function(AppInitCheck value) appInitCheck,
  }) {
    return resendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult? Function(LoginWithPhoneNumber value)? loginWithPhoneNumber,
    TResult? Function(ResendOtp value)? resendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(Back value)? back,
    TResult? Function(ForgotPasswordEvent value)? forgotPassword,
    TResult? Function(UserRegistration value)? userRegistration,
    TResult? Function(AppInitCheck value)? appInitCheck,
  }) {
    return resendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult Function(LoginWithPhoneNumber value)? loginWithPhoneNumber,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(Back value)? back,
    TResult Function(ForgotPasswordEvent value)? forgotPassword,
    TResult Function(UserRegistration value)? userRegistration,
    TResult Function(AppInitCheck value)? appInitCheck,
    required TResult orElse(),
  }) {
    if (resendOtp != null) {
      return resendOtp(this);
    }
    return orElse();
  }
}

abstract class ResendOtp implements SingInBlocEvent {
  const factory ResendOtp(final BuildContext context) = _$ResendOtpImpl;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$$ResendOtpImplCopyWith<_$ResendOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyOtpImplCopyWith<$Res> {
  factory _$$VerifyOtpImplCopyWith(
          _$VerifyOtpImpl value, $Res Function(_$VerifyOtpImpl) then) =
      __$$VerifyOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String otp});
}

/// @nodoc
class __$$VerifyOtpImplCopyWithImpl<$Res>
    extends _$SingInBlocEventCopyWithImpl<$Res, _$VerifyOtpImpl>
    implements _$$VerifyOtpImplCopyWith<$Res> {
  __$$VerifyOtpImplCopyWithImpl(
      _$VerifyOtpImpl _value, $Res Function(_$VerifyOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? otp = null,
  }) {
    return _then(_$VerifyOtpImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyOtpImpl implements VerifyOtp {
  const _$VerifyOtpImpl(this.context, this.otp);

  @override
  final BuildContext context;
  @override
  final String otp;

  @override
  String toString() {
    return 'SingInBlocEvent.verifyOtp(context: $context, otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      __$$VerifyOtpImplCopyWithImpl<_$VerifyOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        loginWithEmailPassword,
    required TResult Function(
            String phoneNumber, BuildContext context, String? tempUserId)
        loginWithPhoneNumber,
    required TResult Function(BuildContext context) resendOtp,
    required TResult Function(BuildContext context, String otp) verifyOtp,
    required TResult Function(String form) back,
    required TResult Function(BuildContext context, String email)
        forgotPassword,
    required TResult Function(
            BuildContext context,
            String userName,
            String email,
            String password,
            String phoneNumber,
            String referalCode)
        userRegistration,
    required TResult Function() appInitCheck,
  }) {
    return verifyOtp(context, otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        loginWithEmailPassword,
    TResult? Function(
            String phoneNumber, BuildContext context, String? tempUserId)?
        loginWithPhoneNumber,
    TResult? Function(BuildContext context)? resendOtp,
    TResult? Function(BuildContext context, String otp)? verifyOtp,
    TResult? Function(String form)? back,
    TResult? Function(BuildContext context, String email)? forgotPassword,
    TResult? Function(BuildContext context, String userName, String email,
            String password, String phoneNumber, String referalCode)?
        userRegistration,
    TResult? Function()? appInitCheck,
  }) {
    return verifyOtp?.call(context, otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        loginWithEmailPassword,
    TResult Function(
            String phoneNumber, BuildContext context, String? tempUserId)?
        loginWithPhoneNumber,
    TResult Function(BuildContext context)? resendOtp,
    TResult Function(BuildContext context, String otp)? verifyOtp,
    TResult Function(String form)? back,
    TResult Function(BuildContext context, String email)? forgotPassword,
    TResult Function(BuildContext context, String userName, String email,
            String password, String phoneNumber, String referalCode)?
        userRegistration,
    TResult Function()? appInitCheck,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(context, otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginWithEmailPassword value)
        loginWithEmailPassword,
    required TResult Function(LoginWithPhoneNumber value) loginWithPhoneNumber,
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(Back value) back,
    required TResult Function(ForgotPasswordEvent value) forgotPassword,
    required TResult Function(UserRegistration value) userRegistration,
    required TResult Function(AppInitCheck value) appInitCheck,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult? Function(LoginWithPhoneNumber value)? loginWithPhoneNumber,
    TResult? Function(ResendOtp value)? resendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(Back value)? back,
    TResult? Function(ForgotPasswordEvent value)? forgotPassword,
    TResult? Function(UserRegistration value)? userRegistration,
    TResult? Function(AppInitCheck value)? appInitCheck,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult Function(LoginWithPhoneNumber value)? loginWithPhoneNumber,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(Back value)? back,
    TResult Function(ForgotPasswordEvent value)? forgotPassword,
    TResult Function(UserRegistration value)? userRegistration,
    TResult Function(AppInitCheck value)? appInitCheck,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class VerifyOtp implements SingInBlocEvent {
  const factory VerifyOtp(final BuildContext context, final String otp) =
      _$VerifyOtpImpl;

  BuildContext get context;
  String get otp;
  @JsonKey(ignore: true)
  _$$VerifyOtpImplCopyWith<_$VerifyOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BackImplCopyWith<$Res> {
  factory _$$BackImplCopyWith(
          _$BackImpl value, $Res Function(_$BackImpl) then) =
      __$$BackImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String form});
}

/// @nodoc
class __$$BackImplCopyWithImpl<$Res>
    extends _$SingInBlocEventCopyWithImpl<$Res, _$BackImpl>
    implements _$$BackImplCopyWith<$Res> {
  __$$BackImplCopyWithImpl(_$BackImpl _value, $Res Function(_$BackImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? form = null,
  }) {
    return _then(_$BackImpl(
      null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BackImpl implements Back {
  const _$BackImpl(this.form);

  @override
  final String form;

  @override
  String toString() {
    return 'SingInBlocEvent.back(form: $form)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BackImpl &&
            (identical(other.form, form) || other.form == form));
  }

  @override
  int get hashCode => Object.hash(runtimeType, form);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BackImplCopyWith<_$BackImpl> get copyWith =>
      __$$BackImplCopyWithImpl<_$BackImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        loginWithEmailPassword,
    required TResult Function(
            String phoneNumber, BuildContext context, String? tempUserId)
        loginWithPhoneNumber,
    required TResult Function(BuildContext context) resendOtp,
    required TResult Function(BuildContext context, String otp) verifyOtp,
    required TResult Function(String form) back,
    required TResult Function(BuildContext context, String email)
        forgotPassword,
    required TResult Function(
            BuildContext context,
            String userName,
            String email,
            String password,
            String phoneNumber,
            String referalCode)
        userRegistration,
    required TResult Function() appInitCheck,
  }) {
    return back(form);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        loginWithEmailPassword,
    TResult? Function(
            String phoneNumber, BuildContext context, String? tempUserId)?
        loginWithPhoneNumber,
    TResult? Function(BuildContext context)? resendOtp,
    TResult? Function(BuildContext context, String otp)? verifyOtp,
    TResult? Function(String form)? back,
    TResult? Function(BuildContext context, String email)? forgotPassword,
    TResult? Function(BuildContext context, String userName, String email,
            String password, String phoneNumber, String referalCode)?
        userRegistration,
    TResult? Function()? appInitCheck,
  }) {
    return back?.call(form);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        loginWithEmailPassword,
    TResult Function(
            String phoneNumber, BuildContext context, String? tempUserId)?
        loginWithPhoneNumber,
    TResult Function(BuildContext context)? resendOtp,
    TResult Function(BuildContext context, String otp)? verifyOtp,
    TResult Function(String form)? back,
    TResult Function(BuildContext context, String email)? forgotPassword,
    TResult Function(BuildContext context, String userName, String email,
            String password, String phoneNumber, String referalCode)?
        userRegistration,
    TResult Function()? appInitCheck,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back(form);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginWithEmailPassword value)
        loginWithEmailPassword,
    required TResult Function(LoginWithPhoneNumber value) loginWithPhoneNumber,
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(Back value) back,
    required TResult Function(ForgotPasswordEvent value) forgotPassword,
    required TResult Function(UserRegistration value) userRegistration,
    required TResult Function(AppInitCheck value) appInitCheck,
  }) {
    return back(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult? Function(LoginWithPhoneNumber value)? loginWithPhoneNumber,
    TResult? Function(ResendOtp value)? resendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(Back value)? back,
    TResult? Function(ForgotPasswordEvent value)? forgotPassword,
    TResult? Function(UserRegistration value)? userRegistration,
    TResult? Function(AppInitCheck value)? appInitCheck,
  }) {
    return back?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult Function(LoginWithPhoneNumber value)? loginWithPhoneNumber,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(Back value)? back,
    TResult Function(ForgotPasswordEvent value)? forgotPassword,
    TResult Function(UserRegistration value)? userRegistration,
    TResult Function(AppInitCheck value)? appInitCheck,
    required TResult orElse(),
  }) {
    if (back != null) {
      return back(this);
    }
    return orElse();
  }
}

abstract class Back implements SingInBlocEvent {
  const factory Back(final String form) = _$BackImpl;

  String get form;
  @JsonKey(ignore: true)
  _$$BackImplCopyWith<_$BackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordEventImplCopyWith<$Res> {
  factory _$$ForgotPasswordEventImplCopyWith(_$ForgotPasswordEventImpl value,
          $Res Function(_$ForgotPasswordEventImpl) then) =
      __$$ForgotPasswordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BuildContext context, String email});
}

/// @nodoc
class __$$ForgotPasswordEventImplCopyWithImpl<$Res>
    extends _$SingInBlocEventCopyWithImpl<$Res, _$ForgotPasswordEventImpl>
    implements _$$ForgotPasswordEventImplCopyWith<$Res> {
  __$$ForgotPasswordEventImplCopyWithImpl(_$ForgotPasswordEventImpl _value,
      $Res Function(_$ForgotPasswordEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? email = null,
  }) {
    return _then(_$ForgotPasswordEventImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ForgotPasswordEventImpl implements ForgotPasswordEvent {
  const _$ForgotPasswordEventImpl(this.context, this.email);

  @override
  final BuildContext context;
  @override
  final String email;

  @override
  String toString() {
    return 'SingInBlocEvent.forgotPassword(context: $context, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordEventImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordEventImplCopyWith<_$ForgotPasswordEventImpl> get copyWith =>
      __$$ForgotPasswordEventImplCopyWithImpl<_$ForgotPasswordEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        loginWithEmailPassword,
    required TResult Function(
            String phoneNumber, BuildContext context, String? tempUserId)
        loginWithPhoneNumber,
    required TResult Function(BuildContext context) resendOtp,
    required TResult Function(BuildContext context, String otp) verifyOtp,
    required TResult Function(String form) back,
    required TResult Function(BuildContext context, String email)
        forgotPassword,
    required TResult Function(
            BuildContext context,
            String userName,
            String email,
            String password,
            String phoneNumber,
            String referalCode)
        userRegistration,
    required TResult Function() appInitCheck,
  }) {
    return forgotPassword(context, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        loginWithEmailPassword,
    TResult? Function(
            String phoneNumber, BuildContext context, String? tempUserId)?
        loginWithPhoneNumber,
    TResult? Function(BuildContext context)? resendOtp,
    TResult? Function(BuildContext context, String otp)? verifyOtp,
    TResult? Function(String form)? back,
    TResult? Function(BuildContext context, String email)? forgotPassword,
    TResult? Function(BuildContext context, String userName, String email,
            String password, String phoneNumber, String referalCode)?
        userRegistration,
    TResult? Function()? appInitCheck,
  }) {
    return forgotPassword?.call(context, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        loginWithEmailPassword,
    TResult Function(
            String phoneNumber, BuildContext context, String? tempUserId)?
        loginWithPhoneNumber,
    TResult Function(BuildContext context)? resendOtp,
    TResult Function(BuildContext context, String otp)? verifyOtp,
    TResult Function(String form)? back,
    TResult Function(BuildContext context, String email)? forgotPassword,
    TResult Function(BuildContext context, String userName, String email,
            String password, String phoneNumber, String referalCode)?
        userRegistration,
    TResult Function()? appInitCheck,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(context, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginWithEmailPassword value)
        loginWithEmailPassword,
    required TResult Function(LoginWithPhoneNumber value) loginWithPhoneNumber,
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(Back value) back,
    required TResult Function(ForgotPasswordEvent value) forgotPassword,
    required TResult Function(UserRegistration value) userRegistration,
    required TResult Function(AppInitCheck value) appInitCheck,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult? Function(LoginWithPhoneNumber value)? loginWithPhoneNumber,
    TResult? Function(ResendOtp value)? resendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(Back value)? back,
    TResult? Function(ForgotPasswordEvent value)? forgotPassword,
    TResult? Function(UserRegistration value)? userRegistration,
    TResult? Function(AppInitCheck value)? appInitCheck,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult Function(LoginWithPhoneNumber value)? loginWithPhoneNumber,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(Back value)? back,
    TResult Function(ForgotPasswordEvent value)? forgotPassword,
    TResult Function(UserRegistration value)? userRegistration,
    TResult Function(AppInitCheck value)? appInitCheck,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class ForgotPasswordEvent implements SingInBlocEvent {
  const factory ForgotPasswordEvent(
          final BuildContext context, final String email) =
      _$ForgotPasswordEventImpl;

  BuildContext get context;
  String get email;
  @JsonKey(ignore: true)
  _$$ForgotPasswordEventImplCopyWith<_$ForgotPasswordEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserRegistrationImplCopyWith<$Res> {
  factory _$$UserRegistrationImplCopyWith(_$UserRegistrationImpl value,
          $Res Function(_$UserRegistrationImpl) then) =
      __$$UserRegistrationImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BuildContext context,
      String userName,
      String email,
      String password,
      String phoneNumber,
      String referalCode});
}

/// @nodoc
class __$$UserRegistrationImplCopyWithImpl<$Res>
    extends _$SingInBlocEventCopyWithImpl<$Res, _$UserRegistrationImpl>
    implements _$$UserRegistrationImplCopyWith<$Res> {
  __$$UserRegistrationImplCopyWithImpl(_$UserRegistrationImpl _value,
      $Res Function(_$UserRegistrationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? userName = null,
    Object? email = null,
    Object? password = null,
    Object? phoneNumber = null,
    Object? referalCode = null,
  }) {
    return _then(_$UserRegistrationImpl(
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      null == referalCode
          ? _value.referalCode
          : referalCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserRegistrationImpl implements UserRegistration {
  const _$UserRegistrationImpl(this.context, this.userName, this.email,
      this.password, this.phoneNumber, this.referalCode);

  @override
  final BuildContext context;
  @override
  final String userName;
  @override
  final String email;
  @override
  final String password;
  @override
  final String phoneNumber;
  @override
  final String referalCode;

  @override
  String toString() {
    return 'SingInBlocEvent.userRegistration(context: $context, userName: $userName, email: $email, password: $password, phoneNumber: $phoneNumber, referalCode: $referalCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegistrationImpl &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.referalCode, referalCode) ||
                other.referalCode == referalCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context, userName, email,
      password, phoneNumber, referalCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegistrationImplCopyWith<_$UserRegistrationImpl> get copyWith =>
      __$$UserRegistrationImplCopyWithImpl<_$UserRegistrationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        loginWithEmailPassword,
    required TResult Function(
            String phoneNumber, BuildContext context, String? tempUserId)
        loginWithPhoneNumber,
    required TResult Function(BuildContext context) resendOtp,
    required TResult Function(BuildContext context, String otp) verifyOtp,
    required TResult Function(String form) back,
    required TResult Function(BuildContext context, String email)
        forgotPassword,
    required TResult Function(
            BuildContext context,
            String userName,
            String email,
            String password,
            String phoneNumber,
            String referalCode)
        userRegistration,
    required TResult Function() appInitCheck,
  }) {
    return userRegistration(
        context, userName, email, password, phoneNumber, referalCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        loginWithEmailPassword,
    TResult? Function(
            String phoneNumber, BuildContext context, String? tempUserId)?
        loginWithPhoneNumber,
    TResult? Function(BuildContext context)? resendOtp,
    TResult? Function(BuildContext context, String otp)? verifyOtp,
    TResult? Function(String form)? back,
    TResult? Function(BuildContext context, String email)? forgotPassword,
    TResult? Function(BuildContext context, String userName, String email,
            String password, String phoneNumber, String referalCode)?
        userRegistration,
    TResult? Function()? appInitCheck,
  }) {
    return userRegistration?.call(
        context, userName, email, password, phoneNumber, referalCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        loginWithEmailPassword,
    TResult Function(
            String phoneNumber, BuildContext context, String? tempUserId)?
        loginWithPhoneNumber,
    TResult Function(BuildContext context)? resendOtp,
    TResult Function(BuildContext context, String otp)? verifyOtp,
    TResult Function(String form)? back,
    TResult Function(BuildContext context, String email)? forgotPassword,
    TResult Function(BuildContext context, String userName, String email,
            String password, String phoneNumber, String referalCode)?
        userRegistration,
    TResult Function()? appInitCheck,
    required TResult orElse(),
  }) {
    if (userRegistration != null) {
      return userRegistration(
          context, userName, email, password, phoneNumber, referalCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginWithEmailPassword value)
        loginWithEmailPassword,
    required TResult Function(LoginWithPhoneNumber value) loginWithPhoneNumber,
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(Back value) back,
    required TResult Function(ForgotPasswordEvent value) forgotPassword,
    required TResult Function(UserRegistration value) userRegistration,
    required TResult Function(AppInitCheck value) appInitCheck,
  }) {
    return userRegistration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult? Function(LoginWithPhoneNumber value)? loginWithPhoneNumber,
    TResult? Function(ResendOtp value)? resendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(Back value)? back,
    TResult? Function(ForgotPasswordEvent value)? forgotPassword,
    TResult? Function(UserRegistration value)? userRegistration,
    TResult? Function(AppInitCheck value)? appInitCheck,
  }) {
    return userRegistration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult Function(LoginWithPhoneNumber value)? loginWithPhoneNumber,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(Back value)? back,
    TResult Function(ForgotPasswordEvent value)? forgotPassword,
    TResult Function(UserRegistration value)? userRegistration,
    TResult Function(AppInitCheck value)? appInitCheck,
    required TResult orElse(),
  }) {
    if (userRegistration != null) {
      return userRegistration(this);
    }
    return orElse();
  }
}

abstract class UserRegistration implements SingInBlocEvent {
  const factory UserRegistration(
      final BuildContext context,
      final String userName,
      final String email,
      final String password,
      final String phoneNumber,
      final String referalCode) = _$UserRegistrationImpl;

  BuildContext get context;
  String get userName;
  String get email;
  String get password;
  String get phoneNumber;
  String get referalCode;
  @JsonKey(ignore: true)
  _$$UserRegistrationImplCopyWith<_$UserRegistrationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AppInitCheckImplCopyWith<$Res> {
  factory _$$AppInitCheckImplCopyWith(
          _$AppInitCheckImpl value, $Res Function(_$AppInitCheckImpl) then) =
      __$$AppInitCheckImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AppInitCheckImplCopyWithImpl<$Res>
    extends _$SingInBlocEventCopyWithImpl<$Res, _$AppInitCheckImpl>
    implements _$$AppInitCheckImplCopyWith<$Res> {
  __$$AppInitCheckImplCopyWithImpl(
      _$AppInitCheckImpl _value, $Res Function(_$AppInitCheckImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AppInitCheckImpl implements AppInitCheck {
  const _$AppInitCheckImpl();

  @override
  String toString() {
    return 'SingInBlocEvent.appInitCheck()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AppInitCheckImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, BuildContext context)
        loginWithEmailPassword,
    required TResult Function(
            String phoneNumber, BuildContext context, String? tempUserId)
        loginWithPhoneNumber,
    required TResult Function(BuildContext context) resendOtp,
    required TResult Function(BuildContext context, String otp) verifyOtp,
    required TResult Function(String form) back,
    required TResult Function(BuildContext context, String email)
        forgotPassword,
    required TResult Function(
            BuildContext context,
            String userName,
            String email,
            String password,
            String phoneNumber,
            String referalCode)
        userRegistration,
    required TResult Function() appInitCheck,
  }) {
    return appInitCheck();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, BuildContext context)?
        loginWithEmailPassword,
    TResult? Function(
            String phoneNumber, BuildContext context, String? tempUserId)?
        loginWithPhoneNumber,
    TResult? Function(BuildContext context)? resendOtp,
    TResult? Function(BuildContext context, String otp)? verifyOtp,
    TResult? Function(String form)? back,
    TResult? Function(BuildContext context, String email)? forgotPassword,
    TResult? Function(BuildContext context, String userName, String email,
            String password, String phoneNumber, String referalCode)?
        userRegistration,
    TResult? Function()? appInitCheck,
  }) {
    return appInitCheck?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, BuildContext context)?
        loginWithEmailPassword,
    TResult Function(
            String phoneNumber, BuildContext context, String? tempUserId)?
        loginWithPhoneNumber,
    TResult Function(BuildContext context)? resendOtp,
    TResult Function(BuildContext context, String otp)? verifyOtp,
    TResult Function(String form)? back,
    TResult Function(BuildContext context, String email)? forgotPassword,
    TResult Function(BuildContext context, String userName, String email,
            String password, String phoneNumber, String referalCode)?
        userRegistration,
    TResult Function()? appInitCheck,
    required TResult orElse(),
  }) {
    if (appInitCheck != null) {
      return appInitCheck();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginWithEmailPassword value)
        loginWithEmailPassword,
    required TResult Function(LoginWithPhoneNumber value) loginWithPhoneNumber,
    required TResult Function(ResendOtp value) resendOtp,
    required TResult Function(VerifyOtp value) verifyOtp,
    required TResult Function(Back value) back,
    required TResult Function(ForgotPasswordEvent value) forgotPassword,
    required TResult Function(UserRegistration value) userRegistration,
    required TResult Function(AppInitCheck value) appInitCheck,
  }) {
    return appInitCheck(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult? Function(LoginWithPhoneNumber value)? loginWithPhoneNumber,
    TResult? Function(ResendOtp value)? resendOtp,
    TResult? Function(VerifyOtp value)? verifyOtp,
    TResult? Function(Back value)? back,
    TResult? Function(ForgotPasswordEvent value)? forgotPassword,
    TResult? Function(UserRegistration value)? userRegistration,
    TResult? Function(AppInitCheck value)? appInitCheck,
  }) {
    return appInitCheck?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginWithEmailPassword value)? loginWithEmailPassword,
    TResult Function(LoginWithPhoneNumber value)? loginWithPhoneNumber,
    TResult Function(ResendOtp value)? resendOtp,
    TResult Function(VerifyOtp value)? verifyOtp,
    TResult Function(Back value)? back,
    TResult Function(ForgotPasswordEvent value)? forgotPassword,
    TResult Function(UserRegistration value)? userRegistration,
    TResult Function(AppInitCheck value)? appInitCheck,
    required TResult orElse(),
  }) {
    if (appInitCheck != null) {
      return appInitCheck(this);
    }
    return orElse();
  }
}

abstract class AppInitCheck implements SingInBlocEvent {
  const factory AppInitCheck() = _$AppInitCheckImpl;
}

/// @nodoc
mixin _$SingInBlocState {
  bool get stauts => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get firstLauch => throw _privateConstructorUsedError;
  bool get loginWithNumberStatus => throw _privateConstructorUsedError;
  bool get loginWithNumberIsLoading => throw _privateConstructorUsedError;
  bool get otpVerifyIsLoading => throw _privateConstructorUsedError;
  int get userIdTemp => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  bool get loginOtpView => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingInBlocStateCopyWith<SingInBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingInBlocStateCopyWith<$Res> {
  factory $SingInBlocStateCopyWith(
          SingInBlocState value, $Res Function(SingInBlocState) then) =
      _$SingInBlocStateCopyWithImpl<$Res, SingInBlocState>;
  @useResult
  $Res call(
      {bool stauts,
      bool isLoading,
      bool firstLauch,
      bool loginWithNumberStatus,
      bool loginWithNumberIsLoading,
      bool otpVerifyIsLoading,
      int userIdTemp,
      String phoneNumber,
      bool loginOtpView});
}

/// @nodoc
class _$SingInBlocStateCopyWithImpl<$Res, $Val extends SingInBlocState>
    implements $SingInBlocStateCopyWith<$Res> {
  _$SingInBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stauts = null,
    Object? isLoading = null,
    Object? firstLauch = null,
    Object? loginWithNumberStatus = null,
    Object? loginWithNumberIsLoading = null,
    Object? otpVerifyIsLoading = null,
    Object? userIdTemp = null,
    Object? phoneNumber = null,
    Object? loginOtpView = null,
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
      firstLauch: null == firstLauch
          ? _value.firstLauch
          : firstLauch // ignore: cast_nullable_to_non_nullable
              as bool,
      loginWithNumberStatus: null == loginWithNumberStatus
          ? _value.loginWithNumberStatus
          : loginWithNumberStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      loginWithNumberIsLoading: null == loginWithNumberIsLoading
          ? _value.loginWithNumberIsLoading
          : loginWithNumberIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      otpVerifyIsLoading: null == otpVerifyIsLoading
          ? _value.otpVerifyIsLoading
          : otpVerifyIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userIdTemp: null == userIdTemp
          ? _value.userIdTemp
          : userIdTemp // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      loginOtpView: null == loginOtpView
          ? _value.loginOtpView
          : loginOtpView // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SingInBlocStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool stauts,
      bool isLoading,
      bool firstLauch,
      bool loginWithNumberStatus,
      bool loginWithNumberIsLoading,
      bool otpVerifyIsLoading,
      int userIdTemp,
      String phoneNumber,
      bool loginOtpView});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SingInBlocStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stauts = null,
    Object? isLoading = null,
    Object? firstLauch = null,
    Object? loginWithNumberStatus = null,
    Object? loginWithNumberIsLoading = null,
    Object? otpVerifyIsLoading = null,
    Object? userIdTemp = null,
    Object? phoneNumber = null,
    Object? loginOtpView = null,
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
      firstLauch: null == firstLauch
          ? _value.firstLauch
          : firstLauch // ignore: cast_nullable_to_non_nullable
              as bool,
      loginWithNumberStatus: null == loginWithNumberStatus
          ? _value.loginWithNumberStatus
          : loginWithNumberStatus // ignore: cast_nullable_to_non_nullable
              as bool,
      loginWithNumberIsLoading: null == loginWithNumberIsLoading
          ? _value.loginWithNumberIsLoading
          : loginWithNumberIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      otpVerifyIsLoading: null == otpVerifyIsLoading
          ? _value.otpVerifyIsLoading
          : otpVerifyIsLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userIdTemp: null == userIdTemp
          ? _value.userIdTemp
          : userIdTemp // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      loginOtpView: null == loginOtpView
          ? _value.loginOtpView
          : loginOtpView // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.stauts,
      required this.isLoading,
      required this.firstLauch,
      required this.loginWithNumberStatus,
      required this.loginWithNumberIsLoading,
      required this.otpVerifyIsLoading,
      required this.userIdTemp,
      this.phoneNumber = '',
      this.loginOtpView = false});

  @override
  final bool stauts;
  @override
  final bool isLoading;
  @override
  final bool firstLauch;
  @override
  final bool loginWithNumberStatus;
  @override
  final bool loginWithNumberIsLoading;
  @override
  final bool otpVerifyIsLoading;
  @override
  final int userIdTemp;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final bool loginOtpView;

  @override
  String toString() {
    return 'SingInBlocState(stauts: $stauts, isLoading: $isLoading, firstLauch: $firstLauch, loginWithNumberStatus: $loginWithNumberStatus, loginWithNumberIsLoading: $loginWithNumberIsLoading, otpVerifyIsLoading: $otpVerifyIsLoading, userIdTemp: $userIdTemp, phoneNumber: $phoneNumber, loginOtpView: $loginOtpView)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.stauts, stauts) || other.stauts == stauts) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.firstLauch, firstLauch) ||
                other.firstLauch == firstLauch) &&
            (identical(other.loginWithNumberStatus, loginWithNumberStatus) ||
                other.loginWithNumberStatus == loginWithNumberStatus) &&
            (identical(
                    other.loginWithNumberIsLoading, loginWithNumberIsLoading) ||
                other.loginWithNumberIsLoading == loginWithNumberIsLoading) &&
            (identical(other.otpVerifyIsLoading, otpVerifyIsLoading) ||
                other.otpVerifyIsLoading == otpVerifyIsLoading) &&
            (identical(other.userIdTemp, userIdTemp) ||
                other.userIdTemp == userIdTemp) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.loginOtpView, loginOtpView) ||
                other.loginOtpView == loginOtpView));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      stauts,
      isLoading,
      firstLauch,
      loginWithNumberStatus,
      loginWithNumberIsLoading,
      otpVerifyIsLoading,
      userIdTemp,
      phoneNumber,
      loginOtpView);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);
}

abstract class _Initial implements SingInBlocState {
  const factory _Initial(
      {required final bool stauts,
      required final bool isLoading,
      required final bool firstLauch,
      required final bool loginWithNumberStatus,
      required final bool loginWithNumberIsLoading,
      required final bool otpVerifyIsLoading,
      required final int userIdTemp,
      final String phoneNumber,
      final bool loginOtpView}) = _$InitialImpl;

  @override
  bool get stauts;
  @override
  bool get isLoading;
  @override
  bool get firstLauch;
  @override
  bool get loginWithNumberStatus;
  @override
  bool get loginWithNumberIsLoading;
  @override
  bool get otpVerifyIsLoading;
  @override
  int get userIdTemp;
  @override
  String get phoneNumber;
  @override
  bool get loginOtpView;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
