import 'package:amplify_flutter_app/config/constants/app_constants.dart';
import 'package:amplify_flutter_app/modules/authentication/providers/app_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';

class UsernameInputField extends StatefulWidget {
  @override
  _UsernameInputFieldState createState() => _UsernameInputFieldState();
}

class _UsernameInputFieldState extends State<UsernameInputField> {
  final _formKey = GlobalKey<FormState>();
  final MultiValidator _emailValidator = MultiValidator([
    EmailValidator(errorText: 'Enter a valid Email'),
    RequiredValidator(errorText: 'Enter Email')
  ]);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Consumer<AppDataProvider>(
        builder: (context, appData, widget) {
          appData.saveLoginScreenState(_formKey);
          return Form(
            key: _formKey,
            child: TextFormField(
              validator: _emailValidator,
              decoration: InputDecoration(
                  hintText: 'Username or Email address',
                  contentPadding: EdgeInsets.only(left: 25.0),
                  fillColor: kMaterialBlackColour,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.elliptical(5, 5)))),
            ),
          );
        },
      ),
    );
  }
}
