import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.unauthenticated()) {
    on<AuthStatusChanged>(_onAuthStatusChanged);
  }

  void _onAuthStatusChanged(
    AuthStatusChanged event,
    Emitter<AuthState> emit,
  ) {
    switch (event.status) {
      case AuthStatus.authenticated:
        emit(const AuthState.authenticated());
        break;
      case AuthStatus.unauthenticated:
        emit(const AuthState.unauthenticated());
        break;
    }
  }
}
