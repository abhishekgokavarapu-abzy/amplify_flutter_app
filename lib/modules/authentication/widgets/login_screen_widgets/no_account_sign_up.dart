import 'package:amplify_flutter_app/config/constants/app_constants.dart';
import 'package:flutter/material.dart';

import '../../screens/sign_up_screen.dart';

class NoAccountSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          kNoAccountText,
          style: TextStyle(color: Colors.white70),
        ),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, SignUpScreen.id);
            },
            child: Text(
              kSignUpText,
              style: TextStyle(color: Theme.of(context).primaryColor),
            ))
      ],
    );
  }
}
