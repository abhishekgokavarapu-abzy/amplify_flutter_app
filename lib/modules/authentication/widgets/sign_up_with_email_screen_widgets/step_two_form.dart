import 'package:amplify_flutter_app/config/constants/app_constants.dart';
import 'package:amplify_flutter_app/modules/authentication/providers/app_data_provider.dart';
import 'package:amplify_flutter_app/modules/authentication/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';

class StepTwoForm extends StatefulWidget {
  @override
  _StepTwoFormState createState() => _StepTwoFormState();
}

class _StepTwoFormState extends State<StepTwoForm> {
  final _formKey = GlobalKey<FormState>();
  final _passwordValidators = MultiValidator(
    [
      RequiredValidator(errorText: 'Enter Password'),
      MinLengthValidator(8, errorText: kMin8CharsText),
      PatternValidator(kPattern,
          errorText:
              'Atleast One Upper, One Lower Case, One Number letter must be included'),
    ],
  );
  final _matchValidator = MatchValidator(errorText: 'Password does not match!');
  @override
  Widget build(BuildContext context) {
    String password;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                kChoosePasswordText,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onChanged: (value) {
                  password = value;
                },
                validator: _passwordValidators,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.only(left: 10.0),
                    fillColor: Colors.black12,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(5, 5)))),
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (String value) =>
                    _matchValidator.validateMatch(password, value),
                decoration: InputDecoration(
                    hintText: 'Choose Password',
                    hintStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.only(left: 10.0),
                    fillColor: Colors.black12,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(5, 5)))),
                style: TextStyle(color: Colors.black),
              ),
            ),
            SizedBox(
              height: 365,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: SizedBox(
                      height: 50.0,
                      child: Consumer<AppDataProvider>(
                        builder: (context, appData, widget) => TextButton(
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              appData.setPassword(password);
                              appData.createUser();
                              appData.resetSteps();
                              Navigator.pushNamed(context, LoginScreen.id);
                            }
                          },
                          child: Text(
                            kContinueText.toUpperCase(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0,
                                letterSpacing: 2.0,
                                wordSpacing: 2.0),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Theme.of(context).primaryColor),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24.0),
                                      side: BorderSide(color: Colors.red)))),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
