import 'package:flutter/material.dart';
import '../main.dart';
import 'package:flutter_application/screens/register.dart'; // crie essa página

class AppRoutes {
  static const String login = '/';
  static const String register = '/register';

  static Map<String, WidgetBuilder> routes = {
    login: (context) => const LoginPage(),
    register: (context) => const RegisterPage(),
  };
}