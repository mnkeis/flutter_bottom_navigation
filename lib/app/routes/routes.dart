import 'package:bottom_navigation/app/bloc/auth_bloc/auth_bloc.dart';
import 'package:bottom_navigation/bottom_nav/view/bottom_nav.dart';
import 'package:bottom_navigation/features/login/login.dart';
import 'package:flutter/material.dart';

List<Page<dynamic>> onGenerateAppPages(
  AuthStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AuthStatus.authenticated:
      return [BottomNav.page()];
    case AuthStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
