import 'dart:async';
import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
import '../../infrastructure/models/auth/auth.dart';
import '../../infrastructure/repositories/auth_repo.dart';
import '../../infrastructure/repositories/image_upload.dart';
part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _repository;
  final ImageUploadRepo _imageUploadRepo;

  AuthBloc(this._repository, this._imageUploadRepo)
      : super(const _AuthState()) {
    on<_CheckAuth>(_checkAuth);
    // on<_VerifyCode>(_verifyingCode);
    // on<_SignUpBarber>(_signUpBarber);

    on<_UploadProfileImage>(_uploadProfileImage);
  }

  /// Authentication Check
  Future<void> _checkAuth(_CheckAuth event, Emitter<AuthState> emit) async {
    final res = _repository.checkUser();

    res.fold(
      () {
        return emit(state.copyWith(proceedToHome: true));
      },
      (error) {
        return emit(state.copyWith(proceedToHome: false));
      },
    );
  }

  //
  // /// Verifying Code
  // Future<void> _verifyingCode(
  //     _VerifyCode event, Emitter<AuthState> emit) async {
  //   if (event.phoneNumber.isNotEmpty && event.code.isNotEmpty) {
  //     EasyLoading.show();
  //
  //     final res = await _repository.verifyCode(event.phoneNumber, event.code);
  //     res.fold((error) {
  //       EasyLoading.showError(error.message);
  //       p(error);
  //     }, (data) {
  //       emit(state.copyWith(
  //         proceedToSignUp: true,
  //       ));
  //     });
  //     EasyLoading.dismiss();
  //   } else {
  //     EasyLoading.showError(
  //       "invalid_otp_code".tr(),
  //     );
  //   }
  // }
  //
  // /// Sign Up Barber
  // Future<void> _signUpBarber(
  //     _SignUpBarber event, Emitter<AuthState> emit) async {
  //   String? imagePath;
  //   emit(state.copyWith(
  //     proceedToHome: false,
  //   ));
  //
  //   p("Image Path: _________${state.imagePath}");
  //
  //   if (state.assetEntity == null || state.imagePath == null) {
  //     EasyLoading.showInfo('please_set_profile_image'.tr());
  //     return;
  //   }
  //
  //   EasyLoading.show();
  //   final resImage = await _imageUploadRepo.imageUpload(
  //       ObjectTypeImage.avatar, state.imagePath!);
  //
  //   resImage.fold((error) {
  //     EasyLoading.showError(error.message);
  //     p(error);
  //   }, (data) {
  //     imagePath = data.id;
  //     p(imagePath ?? "Null Image");
  //   });
  //
  //   if (imagePath != null) {
  //     final model =
  //         event.signUpModel.rebuild((p0) => p0..profilePhoto = imagePath);
  //
  //     final res = await _repository.signUpBarber(model, event.authType);
  //     res.fold((error) {
  //       EasyLoading.showError(error.message);
  //       p(error);
  //     }, (data) {
  //       emit(state.copyWith(
  //         proceedToHome: true,
  //       ));
  //     });
  //   }
  //   EasyLoading.dismiss();
  // }

  /// Upload Profile Image
  Future<void> _uploadProfileImage(
      _UploadProfileImage event, Emitter<AuthState> emit) async {
    if (event.pickedImage != null) {
      File? imageFile = await event.pickedImage!.file;
      if (imageFile == null) {
        EasyLoading.showError('image_not_selected'.tr());
      } else {
        emit(state.copyWith(
          imagePath: imageFile.path,
          assetEntity: event.pickedImage,
        ));
      }
    }
  }
}
