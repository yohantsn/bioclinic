class AuthModel {
  bool isLogged;
  String? errorSignCode;
  String? uid;
  String? email;
  String? name;

  AuthModel(
      {required this.isLogged,
      this.errorSignCode,
      this.email,
      this.name,
      this.uid});
}
