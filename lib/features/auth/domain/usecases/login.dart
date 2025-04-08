import 'package:dartz/dartz.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class Login {
  final AuthRepository repository;

  Login(this.repository);

  Future<Either<String, UserEntity>> call(String email, String password) {
    return repository.login(email, password);
  }
}
