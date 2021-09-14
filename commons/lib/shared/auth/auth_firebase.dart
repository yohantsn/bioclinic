import 'package:commons/shared/auth/models/auth_model.dart';
import 'package:commons_dependencies/main.dart';

import 'auth_interface.dart';

class AuthFirebase implements IAuth {
  @override
  Future<AuthModel> createAccount(
      {required String email, required String password}) async {
    var authModel = AuthModel(isLogged: false);
    try {
      final userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      authModel = _createAuthModel(userCredential.user);
    } on FirebaseAuthException catch (e) {
      authModel.isLogged = false;
      authModel.errorSignCode = e.code;
    } catch (e) {
      authModel.isLogged = false;
      authModel.errorSignCode = "others";
    }

    return authModel;
  }

  @override
  Future<AuthModel> getUser() async {
    final user = FirebaseAuth.instance.currentUser;
    final authModel = user?.uid != null && user!.uid.isNotEmpty
        ? _createAuthModel(user)
        : AuthModel(isLogged: false, errorSignCode: "");

    return authModel;
  }

  @override
  Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Future<AuthModel> signIn(
      {required String email, required String password}) async {
    var authModel = AuthModel(isLogged: false);
    try {
      final userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      authModel = _createAuthModel(userCredential.user);
    } on FirebaseAuthException catch (e) {
      authModel.isLogged = false;
      authModel.errorSignCode = e.code;
    }

    return authModel;
  }

  AuthModel _createAuthModel(User? user) {
    final authModel = AuthModel(isLogged: false, errorSignCode: "");
    authModel.isLogged = true;
    authModel.uid = user?.uid ?? "";
    authModel.name = user?.displayName ?? "";
    authModel.email = user?.email ?? "";
    authModel.errorSignCode = "";

    return authModel;
  }
}
