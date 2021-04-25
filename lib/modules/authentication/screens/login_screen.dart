import 'package:flutter/material.dart';
import '../widgets/login_screen_widgets/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'login_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LoginScreenBody(),
    );
  }
}
