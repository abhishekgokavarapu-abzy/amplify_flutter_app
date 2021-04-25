import 'package:amplify_flutter_app/modules/authentication/widgets/sign_up_screen_widgets/sign_up_screen_body.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static const String id = 'sign_up_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SignUpScreenBody(),
    );
  }
}
