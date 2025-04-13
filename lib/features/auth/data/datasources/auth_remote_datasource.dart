import '../models/user_model.dart';

abstract class AuthRemoteDatasource {
  Future<UserModel> login(String email, String password);
  Future<UserModel> register(String email, String password);
}

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  @override
  Future<UserModel> login(String email, String password) async {
    await Future.delayed(Duration(seconds: 1)); // Simulasi API call
    // Here ?
    if (email == "test@mail.com" && password == "123456") {
      return UserModel(id: "1", email: email);
    } else {
      throw Exception("Login gagal");
    }
  }

  @override
  Future<UserModel> register(String email, String password) async {
    await Future.delayed(Duration(seconds: 1)); // Simulasi API call
    return UserModel(id: "2", email: email);
  }
}
