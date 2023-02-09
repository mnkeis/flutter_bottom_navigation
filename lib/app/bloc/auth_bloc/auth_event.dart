part of 'auth_bloc.dart';

abstract class AuthEvent {
  const AuthEvent();
}

class AuthStatusChanged extends AuthEvent {
  const AuthStatusChanged(this.status);

  final AuthStatus status;
}
