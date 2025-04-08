import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/usecases/login.dart';
import '../../domain/usecases/register.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final Login login;
  final Register register;

  AuthBloc({required this.login, required this.register})
      : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(AuthLoading());
      final result = await login(event.email, event.password);
      result.fold(
        (failure) => emit(AuthFailure(failure)),
        (user) => emit(AuthSuccess(user)),
      );
    });

    on<RegisterEvent>((event, emit) async {
      emit(AuthLoading());
      final result = await register(event.email, event.password);
      result.fold(
        (failure) => emit(AuthFailure(failure)),
        (user) => emit(AuthSuccess(user)),
      );
    });
  }
}
