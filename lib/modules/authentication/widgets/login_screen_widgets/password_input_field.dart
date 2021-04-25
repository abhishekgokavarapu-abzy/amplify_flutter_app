import 'package:amplify_flutter_app/config/constants/app_constants.dart';
import 'package:flutter/material.dart';

class PasswordInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Password',
            contentPadding: EdgeInsets.only(left: 25.0),
            fillColor: kMaterialBlackColour,
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.all(Radius.elliptical(5, 5)))),
      ),
    );
  }
}
