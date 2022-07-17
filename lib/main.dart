import 'package:flutter/material.dart';
import 'package:nutrition_app/Pages/login.dart';
import 'package:nutrition_app/Pages/food.dart';
import 'package:nutrition_app/Pages/alert.dart';
import 'package:nutrition_app/Pages/spinner.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/login',
  routes: {
    '/login': (context) => const Login(),
    '/food': (context) => const Food(),
    '/alert': (context) => const Alert(),
    '/spinner': (context) => const Spinner(),
  },
));

