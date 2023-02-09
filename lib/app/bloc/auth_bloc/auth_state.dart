part of 'auth_bloc.dart';

enum AuthStatus {
  authenticated,

  unauthenticated,
}

class AuthState extends Equatable {
  const AuthState._({
    this.status = AuthStatus.unauthenticated,
  });

  const AuthState.authenticated() : this._(status: AuthStatus.authenticated);

  const AuthState.unauthenticated() : this._();

  final AuthStatus status;

  @override
  List<Object?> get props => [status];
}
