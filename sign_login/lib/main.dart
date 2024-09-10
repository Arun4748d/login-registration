import 'package:flutter/material.dart';
import 'package:sign_login/login_screen/loginscreen.dart';
import 'package:sign_login/signup/signup.dart';

void main() {
  runApp(MyApp());
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: SafeArea(child: Loginscreen()),
    );
  }
}