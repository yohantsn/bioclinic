import 'package:commons/shared/auth/models/auth_model.dart';

abstract class IAuth {
  Future<AuthModel> createAccount(
      {required String email, required String password});
  Future<AuthModel> signIn(
      {required String email, required String password});
  Future<void> logout();
  Future<AuthModel> getUser();
}
