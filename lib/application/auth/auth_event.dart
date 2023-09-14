part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuth() = _CheckAuth;

  const factory AuthEvent.verifyCode({
    required String phoneNumber,
    required String code,
  }) = _VerifyCode;

  const factory AuthEvent.signUpBarber({
    required BarberSignUpModel signUpModel,
  }) = _SignUpBarber;

  const factory AuthEvent.uploadProfileImage({
    required AssetEntity? pickedImage,
  }) = _UploadProfileImage;
}
