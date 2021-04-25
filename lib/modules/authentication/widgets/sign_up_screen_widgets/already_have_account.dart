import 'package:amplify_flutter_app/config/constants/app_constants.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          kAlreadyHaveAccText,
          style: TextStyle(color: Colors.white70),
        ),
        TextButton(
            onPressed: null,
            child: Text(
              kSignInText,
              style: TextStyle(color: Theme.of(context).primaryColor),
            ))
      ],
    );
  }
}
