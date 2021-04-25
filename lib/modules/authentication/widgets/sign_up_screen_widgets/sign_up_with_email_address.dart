import 'package:amplify_flutter_app/config/constants/app_constants.dart';
import 'package:amplify_flutter_app/modules/authentication/screens/sign_up_with_email_screen.dart';
import 'package:flutter/material.dart';

class SignUpWithEmailAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, SignUpWithEmailScreen.id);
      },
      child: Text(
        kSignUpWithEmailText,
        style: TextStyle(color: Theme.of(context).primaryColor),
      ),
      style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.only(bottom: 60.0))),
    );
  }
}
