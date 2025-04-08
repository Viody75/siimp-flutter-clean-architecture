import 'package:dartz/dartz.dart';
import '../entities/user_entity.dart';
import '../repositories/auth_repository.dart';

class Register {
  final AuthRepository repository;

  Register(this.repository);

  Future<Either<String, UserEntity>> call(String email, String password) {
    return repository.register(email, password);
  }
}
