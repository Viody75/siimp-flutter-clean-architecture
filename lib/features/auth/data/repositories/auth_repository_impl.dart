import 'package:dartz/dartz.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_datasource.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDatasource remote;

  AuthRepositoryImpl(this.remote);

  @override
  Future<Either<String, UserEntity>> login(
      String email, String password) async {
    try {
      final result = await remote.login(email, password);
      return Right(result);
    } catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either<String, UserEntity>> register(
      String email, String password) async {
    try {
      final result = await remote.register(email, password);
      return Right(result);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
