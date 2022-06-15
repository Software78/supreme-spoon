import 'package:flutter/material.dart';
import 'package:taska/views/forgot_password_view/forgot_password_view.dart';
import 'package:taska/views/home_screen_view/home_screen_view.dart';
import 'package:taska/views/login_view/login_view.dart';
import 'package:taska/views/reset_password_view/reset_password_view.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: LoginView.id,
      debugShowCheckedModeBanner: false,
      routes: {
        LoginView.id: (context) => const LoginView(),
        ForgotPassword.id: (context) => const ForgotPassword(),
        ResetPasswordView.id: (context) => const ResetPasswordView(),
        HomeScreen.id: (context) => const HomeScreen(),
      },
    ),
  );
}
