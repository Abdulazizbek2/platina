import 'package:dartz/dartz.dart';
import 'package:platina/domain/common/token_ext.dart';
import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/i_auth_facade.dart';
import '../../domain/common/token.dart';
import '../apis/apis.dart';
import '../services/db_service.dart';

class AuthRepository implements IAuthFacade {
  final DBService _dbService;
  final AuthService _authService;

  AuthRepository(
    this._dbService,
    this._authService,
  );

  /// Get user
  @override
  Option<AuthFailure> checkUser() {
    final Token token = _dbService.token;
    return optionOf(token.hasFailure);
  }

//
//
// /// Get user
// @override
// Future<Either<AuthFailure, String>> checkUser() async {
//   final Token token = _preferenceService.token;
//   final String? authType = _preferenceService.role;
//
//   if (token.accessToken == null && token.refreshToken == null) {
//     return left(const AuthFailure.unAuthenticated());
//   } else {
//     if (authType == null) {
//       return left(const AuthFailure.unknownRole());
//     } else {
//       return right(authType);
//     }
//   }
//
//   // optionOf(token.hasFailure);
// }
}
