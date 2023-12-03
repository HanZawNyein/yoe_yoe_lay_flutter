class AuthAPI {
  final String baseURL;

  AuthAPI({required this.baseURL});

  String get loginAPI => '$baseURL/api/auth/login';
}
