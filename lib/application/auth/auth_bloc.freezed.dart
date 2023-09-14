// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(String phoneNumber, String code) verifyCode,
    required TResult Function(BarberSignUpModel signUpModel) signUpBarber,
    required TResult Function(AssetEntity? pickedImage) uploadProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(String phoneNumber, String code)? verifyCode,
    TResult? Function(BarberSignUpModel signUpModel)? signUpBarber,
    TResult? Function(AssetEntity? pickedImage)? uploadProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(String phoneNumber, String code)? verifyCode,
    TResult Function(BarberSignUpModel signUpModel)? signUpBarber,
    TResult Function(AssetEntity? pickedImage)? uploadProfileImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_SignUpBarber value) signUpBarber,
    required TResult Function(_UploadProfileImage value) uploadProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_VerifyCode value)? verifyCode,
    TResult? Function(_SignUpBarber value)? signUpBarber,
    TResult? Function(_UploadProfileImage value)? uploadProfileImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_SignUpBarber value)? signUpBarber,
    TResult Function(_UploadProfileImage value)? uploadProfileImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CheckAuthCopyWith<$Res> {
  factory _$$_CheckAuthCopyWith(
          _$_CheckAuth value, $Res Function(_$_CheckAuth) then) =
      __$$_CheckAuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckAuthCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_CheckAuth>
    implements _$$_CheckAuthCopyWith<$Res> {
  __$$_CheckAuthCopyWithImpl(
      _$_CheckAuth _value, $Res Function(_$_CheckAuth) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckAuth implements _CheckAuth {
  const _$_CheckAuth();

  @override
  String toString() {
    return 'AuthEvent.checkAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(String phoneNumber, String code) verifyCode,
    required TResult Function(BarberSignUpModel signUpModel) signUpBarber,
    required TResult Function(AssetEntity? pickedImage) uploadProfileImage,
  }) {
    return checkAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(String phoneNumber, String code)? verifyCode,
    TResult? Function(BarberSignUpModel signUpModel)? signUpBarber,
    TResult? Function(AssetEntity? pickedImage)? uploadProfileImage,
  }) {
    return checkAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(String phoneNumber, String code)? verifyCode,
    TResult Function(BarberSignUpModel signUpModel)? signUpBarber,
    TResult Function(AssetEntity? pickedImage)? uploadProfileImage,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_SignUpBarber value) signUpBarber,
    required TResult Function(_UploadProfileImage value) uploadProfileImage,
  }) {
    return checkAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_VerifyCode value)? verifyCode,
    TResult? Function(_SignUpBarber value)? signUpBarber,
    TResult? Function(_UploadProfileImage value)? uploadProfileImage,
  }) {
    return checkAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_SignUpBarber value)? signUpBarber,
    TResult Function(_UploadProfileImage value)? uploadProfileImage,
    required TResult orElse(),
  }) {
    if (checkAuth != null) {
      return checkAuth(this);
    }
    return orElse();
  }
}

abstract class _CheckAuth implements AuthEvent {
  const factory _CheckAuth() = _$_CheckAuth;
}

/// @nodoc
abstract class _$$_VerifyCodeCopyWith<$Res> {
  factory _$$_VerifyCodeCopyWith(
          _$_VerifyCode value, $Res Function(_$_VerifyCode) then) =
      __$$_VerifyCodeCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber, String code});
}

/// @nodoc
class __$$_VerifyCodeCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_VerifyCode>
    implements _$$_VerifyCodeCopyWith<$Res> {
  __$$_VerifyCodeCopyWithImpl(
      _$_VerifyCode _value, $Res Function(_$_VerifyCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? code = null,
  }) {
    return _then(_$_VerifyCode(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerifyCode implements _VerifyCode {
  const _$_VerifyCode({required this.phoneNumber, required this.code});

  @override
  final String phoneNumber;
  @override
  final String code;

  @override
  String toString() {
    return 'AuthEvent.verifyCode(phoneNumber: $phoneNumber, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyCode &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyCodeCopyWith<_$_VerifyCode> get copyWith =>
      __$$_VerifyCodeCopyWithImpl<_$_VerifyCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(String phoneNumber, String code) verifyCode,
    required TResult Function(BarberSignUpModel signUpModel) signUpBarber,
    required TResult Function(AssetEntity? pickedImage) uploadProfileImage,
  }) {
    return verifyCode(phoneNumber, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(String phoneNumber, String code)? verifyCode,
    TResult? Function(BarberSignUpModel signUpModel)? signUpBarber,
    TResult? Function(AssetEntity? pickedImage)? uploadProfileImage,
  }) {
    return verifyCode?.call(phoneNumber, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(String phoneNumber, String code)? verifyCode,
    TResult Function(BarberSignUpModel signUpModel)? signUpBarber,
    TResult Function(AssetEntity? pickedImage)? uploadProfileImage,
    required TResult orElse(),
  }) {
    if (verifyCode != null) {
      return verifyCode(phoneNumber, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_SignUpBarber value) signUpBarber,
    required TResult Function(_UploadProfileImage value) uploadProfileImage,
  }) {
    return verifyCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_VerifyCode value)? verifyCode,
    TResult? Function(_SignUpBarber value)? signUpBarber,
    TResult? Function(_UploadProfileImage value)? uploadProfileImage,
  }) {
    return verifyCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_SignUpBarber value)? signUpBarber,
    TResult Function(_UploadProfileImage value)? uploadProfileImage,
    required TResult orElse(),
  }) {
    if (verifyCode != null) {
      return verifyCode(this);
    }
    return orElse();
  }
}

abstract class _VerifyCode implements AuthEvent {
  const factory _VerifyCode(
      {required final String phoneNumber,
      required final String code}) = _$_VerifyCode;

  String get phoneNumber;
  String get code;
  @JsonKey(ignore: true)
  _$$_VerifyCodeCopyWith<_$_VerifyCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignUpBarberCopyWith<$Res> {
  factory _$$_SignUpBarberCopyWith(
          _$_SignUpBarber value, $Res Function(_$_SignUpBarber) then) =
      __$$_SignUpBarberCopyWithImpl<$Res>;
  @useResult
  $Res call({BarberSignUpModel signUpModel});
}

/// @nodoc
class __$$_SignUpBarberCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignUpBarber>
    implements _$$_SignUpBarberCopyWith<$Res> {
  __$$_SignUpBarberCopyWithImpl(
      _$_SignUpBarber _value, $Res Function(_$_SignUpBarber) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signUpModel = null,
  }) {
    return _then(_$_SignUpBarber(
      signUpModel: null == signUpModel
          ? _value.signUpModel
          : signUpModel // ignore: cast_nullable_to_non_nullable
              as BarberSignUpModel,
    ));
  }
}

/// @nodoc

class _$_SignUpBarber implements _SignUpBarber {
  const _$_SignUpBarber({required this.signUpModel});

  @override
  final BarberSignUpModel signUpModel;

  @override
  String toString() {
    return 'AuthEvent.signUpBarber(signUpModel: $signUpModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpBarber &&
            (identical(other.signUpModel, signUpModel) ||
                other.signUpModel == signUpModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, signUpModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpBarberCopyWith<_$_SignUpBarber> get copyWith =>
      __$$_SignUpBarberCopyWithImpl<_$_SignUpBarber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(String phoneNumber, String code) verifyCode,
    required TResult Function(BarberSignUpModel signUpModel) signUpBarber,
    required TResult Function(AssetEntity? pickedImage) uploadProfileImage,
  }) {
    return signUpBarber(signUpModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(String phoneNumber, String code)? verifyCode,
    TResult? Function(BarberSignUpModel signUpModel)? signUpBarber,
    TResult? Function(AssetEntity? pickedImage)? uploadProfileImage,
  }) {
    return signUpBarber?.call(signUpModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(String phoneNumber, String code)? verifyCode,
    TResult Function(BarberSignUpModel signUpModel)? signUpBarber,
    TResult Function(AssetEntity? pickedImage)? uploadProfileImage,
    required TResult orElse(),
  }) {
    if (signUpBarber != null) {
      return signUpBarber(signUpModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_SignUpBarber value) signUpBarber,
    required TResult Function(_UploadProfileImage value) uploadProfileImage,
  }) {
    return signUpBarber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_VerifyCode value)? verifyCode,
    TResult? Function(_SignUpBarber value)? signUpBarber,
    TResult? Function(_UploadProfileImage value)? uploadProfileImage,
  }) {
    return signUpBarber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_SignUpBarber value)? signUpBarber,
    TResult Function(_UploadProfileImage value)? uploadProfileImage,
    required TResult orElse(),
  }) {
    if (signUpBarber != null) {
      return signUpBarber(this);
    }
    return orElse();
  }
}

abstract class _SignUpBarber implements AuthEvent {
  const factory _SignUpBarber({required final BarberSignUpModel signUpModel}) =
      _$_SignUpBarber;

  BarberSignUpModel get signUpModel;
  @JsonKey(ignore: true)
  _$$_SignUpBarberCopyWith<_$_SignUpBarber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UploadProfileImageCopyWith<$Res> {
  factory _$$_UploadProfileImageCopyWith(_$_UploadProfileImage value,
          $Res Function(_$_UploadProfileImage) then) =
      __$$_UploadProfileImageCopyWithImpl<$Res>;
  @useResult
  $Res call({AssetEntity? pickedImage});
}

/// @nodoc
class __$$_UploadProfileImageCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_UploadProfileImage>
    implements _$$_UploadProfileImageCopyWith<$Res> {
  __$$_UploadProfileImageCopyWithImpl(
      _$_UploadProfileImage _value, $Res Function(_$_UploadProfileImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickedImage = freezed,
  }) {
    return _then(_$_UploadProfileImage(
      pickedImage: freezed == pickedImage
          ? _value.pickedImage
          : pickedImage // ignore: cast_nullable_to_non_nullable
              as AssetEntity?,
    ));
  }
}

/// @nodoc

class _$_UploadProfileImage implements _UploadProfileImage {
  const _$_UploadProfileImage({required this.pickedImage});

  @override
  final AssetEntity? pickedImage;

  @override
  String toString() {
    return 'AuthEvent.uploadProfileImage(pickedImage: $pickedImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadProfileImage &&
            (identical(other.pickedImage, pickedImage) ||
                other.pickedImage == pickedImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pickedImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadProfileImageCopyWith<_$_UploadProfileImage> get copyWith =>
      __$$_UploadProfileImageCopyWithImpl<_$_UploadProfileImage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkAuth,
    required TResult Function(String phoneNumber, String code) verifyCode,
    required TResult Function(BarberSignUpModel signUpModel) signUpBarber,
    required TResult Function(AssetEntity? pickedImage) uploadProfileImage,
  }) {
    return uploadProfileImage(pickedImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkAuth,
    TResult? Function(String phoneNumber, String code)? verifyCode,
    TResult? Function(BarberSignUpModel signUpModel)? signUpBarber,
    TResult? Function(AssetEntity? pickedImage)? uploadProfileImage,
  }) {
    return uploadProfileImage?.call(pickedImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkAuth,
    TResult Function(String phoneNumber, String code)? verifyCode,
    TResult Function(BarberSignUpModel signUpModel)? signUpBarber,
    TResult Function(AssetEntity? pickedImage)? uploadProfileImage,
    required TResult orElse(),
  }) {
    if (uploadProfileImage != null) {
      return uploadProfileImage(pickedImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckAuth value) checkAuth,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_SignUpBarber value) signUpBarber,
    required TResult Function(_UploadProfileImage value) uploadProfileImage,
  }) {
    return uploadProfileImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckAuth value)? checkAuth,
    TResult? Function(_VerifyCode value)? verifyCode,
    TResult? Function(_SignUpBarber value)? signUpBarber,
    TResult? Function(_UploadProfileImage value)? uploadProfileImage,
  }) {
    return uploadProfileImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckAuth value)? checkAuth,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_SignUpBarber value)? signUpBarber,
    TResult Function(_UploadProfileImage value)? uploadProfileImage,
    required TResult orElse(),
  }) {
    if (uploadProfileImage != null) {
      return uploadProfileImage(this);
    }
    return orElse();
  }
}

abstract class _UploadProfileImage implements AuthEvent {
  const factory _UploadProfileImage({required final AssetEntity? pickedImage}) =
      _$_UploadProfileImage;

  AssetEntity? get pickedImage;
  @JsonKey(ignore: true)
  _$$_UploadProfileImageCopyWith<_$_UploadProfileImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  bool get proceedToVerifyCode => throw _privateConstructorUsedError;
  bool get proceedToHome => throw _privateConstructorUsedError;
  bool get proceedToSignUp => throw _privateConstructorUsedError;
  bool? get isHomeToBarber => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  AssetEntity? get assetEntity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool proceedToVerifyCode,
      bool proceedToHome,
      bool proceedToSignUp,
      bool? isHomeToBarber,
      String? imagePath,
      AssetEntity? assetEntity});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proceedToVerifyCode = null,
    Object? proceedToHome = null,
    Object? proceedToSignUp = null,
    Object? isHomeToBarber = freezed,
    Object? imagePath = freezed,
    Object? assetEntity = freezed,
  }) {
    return _then(_value.copyWith(
      proceedToVerifyCode: null == proceedToVerifyCode
          ? _value.proceedToVerifyCode
          : proceedToVerifyCode // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToHome: null == proceedToHome
          ? _value.proceedToHome
          : proceedToHome // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToSignUp: null == proceedToSignUp
          ? _value.proceedToSignUp
          : proceedToSignUp // ignore: cast_nullable_to_non_nullable
              as bool,
      isHomeToBarber: freezed == isHomeToBarber
          ? _value.isHomeToBarber
          : isHomeToBarber // ignore: cast_nullable_to_non_nullable
              as bool?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      assetEntity: freezed == assetEntity
          ? _value.assetEntity
          : assetEntity // ignore: cast_nullable_to_non_nullable
              as AssetEntity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool proceedToVerifyCode,
      bool proceedToHome,
      bool proceedToSignUp,
      bool? isHomeToBarber,
      String? imagePath,
      AssetEntity? assetEntity});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proceedToVerifyCode = null,
    Object? proceedToHome = null,
    Object? proceedToSignUp = null,
    Object? isHomeToBarber = freezed,
    Object? imagePath = freezed,
    Object? assetEntity = freezed,
  }) {
    return _then(_$_AuthState(
      proceedToVerifyCode: null == proceedToVerifyCode
          ? _value.proceedToVerifyCode
          : proceedToVerifyCode // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToHome: null == proceedToHome
          ? _value.proceedToHome
          : proceedToHome // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToSignUp: null == proceedToSignUp
          ? _value.proceedToSignUp
          : proceedToSignUp // ignore: cast_nullable_to_non_nullable
              as bool,
      isHomeToBarber: freezed == isHomeToBarber
          ? _value.isHomeToBarber
          : isHomeToBarber // ignore: cast_nullable_to_non_nullable
              as bool?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      assetEntity: freezed == assetEntity
          ? _value.assetEntity
          : assetEntity // ignore: cast_nullable_to_non_nullable
              as AssetEntity?,
    ));
  }
}

/// @nodoc

class _$_AuthState extends _AuthState {
  const _$_AuthState(
      {this.proceedToVerifyCode = false,
      this.proceedToHome = false,
      this.proceedToSignUp = false,
      this.isHomeToBarber = null,
      this.imagePath = null,
      this.assetEntity = null})
      : super._();

  @override
  @JsonKey()
  final bool proceedToVerifyCode;
  @override
  @JsonKey()
  final bool proceedToHome;
  @override
  @JsonKey()
  final bool proceedToSignUp;
  @override
  @JsonKey()
  final bool? isHomeToBarber;
  @override
  @JsonKey()
  final String? imagePath;
  @override
  @JsonKey()
  final AssetEntity? assetEntity;

  @override
  String toString() {
    return 'AuthState(proceedToVerifyCode: $proceedToVerifyCode, proceedToHome: $proceedToHome, proceedToSignUp: $proceedToSignUp, isHomeToBarber: $isHomeToBarber, imagePath: $imagePath, assetEntity: $assetEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.proceedToVerifyCode, proceedToVerifyCode) ||
                other.proceedToVerifyCode == proceedToVerifyCode) &&
            (identical(other.proceedToHome, proceedToHome) ||
                other.proceedToHome == proceedToHome) &&
            (identical(other.proceedToSignUp, proceedToSignUp) ||
                other.proceedToSignUp == proceedToSignUp) &&
            (identical(other.isHomeToBarber, isHomeToBarber) ||
                other.isHomeToBarber == isHomeToBarber) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.assetEntity, assetEntity) ||
                other.assetEntity == assetEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, proceedToVerifyCode,
      proceedToHome, proceedToSignUp, isHomeToBarber, imagePath, assetEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const factory _AuthState(
      {final bool proceedToVerifyCode,
      final bool proceedToHome,
      final bool proceedToSignUp,
      final bool? isHomeToBarber,
      final String? imagePath,
      final AssetEntity? assetEntity}) = _$_AuthState;
  const _AuthState._() : super._();

  @override
  bool get proceedToVerifyCode;
  @override
  bool get proceedToHome;
  @override
  bool get proceedToSignUp;
  @override
  bool? get isHomeToBarber;
  @override
  String? get imagePath;
  @override
  AssetEntity? get assetEntity;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
