import 'package:amplify_flutter_app/config/constants/app_constants.dart';
import 'package:flutter/material.dart';

class ForgottenPasswordButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: null,
        child: Text(
          kForgotPasswordText,
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
                EdgeInsets.symmetric(vertical: 30.0))),
      ),
    );
  }
}
