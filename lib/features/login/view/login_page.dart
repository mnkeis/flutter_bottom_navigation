import 'package:bottom_navigation/app/bloc/auth_bloc/auth_bloc.dart';
import 'package:bottom_navigation/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  static Page<void> page() => const MaterialPage<void>(child: LoginPage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => context
              .read<AuthBloc>()
              .add(const AuthStatusChanged(AuthStatus.authenticated)),
          child: Text(context.l10n.loginPageLoginButtonLabel),
        ),
      ),
    );
  }
}
