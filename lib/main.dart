// ignore_for_file: unused_field, unused_element, unused_import

import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import 'views/common/animation-routing.dart';
import 'views/screens/login/login-screen.dart';
import 'views/screens/sign/sign-screen.dart';
import 'views/screens/welcome/welcome-screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const LoginScreen(),
      initialRoute: '/welcome',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/sign': (context) => const SignScreen(),
        '/welcome': (context) => const WelComeScreen()
      },
    );
  }
}
