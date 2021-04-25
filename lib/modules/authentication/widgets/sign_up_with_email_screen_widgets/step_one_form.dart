import 'package:amplify_flutter_app/config/constants/app_constants.dart';
import 'package:amplify_flutter_app/modules/authentication/providers/app_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:provider/provider.dart';

class StepOneForm extends StatefulWidget {
  @override
  _StepOneFormState createState() => _StepOneFormState();
}

class _StepOneFormState extends State<StepOneForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailValidators = MultiValidator([
    RequiredValidator(errorText: 'Enter E-mail'),
    EmailValidator(errorText: 'Invalid E-Mail'),
  ]);
  @override
  Widget build(BuildContext context) {
    String emailAddress;
    String trainingPeriod;
    setTrainingPeriod(dynamic value) {
      String choice = value.toString();
      if (choice == '1') {
        trainingPeriod = kOnceAWeekText;
      } else if (choice == '2') {
        trainingPeriod = kTwoThreeWeekText;
      } else if (choice == '3') {
        trainingPeriod = kFourFiveWeekText;
      } else if (choice == '4') {
        trainingPeriod = kDailyText;
      }
    }

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
                kEnterEmailAddressText,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: _emailValidators,
                decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.only(left: 10.0),
                    fillColor: Colors.black12,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(5, 5)))),
                style: TextStyle(color: Colors.black),
                onChanged: (value) {
                  emailAddress = value;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                kChooseGenderText,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Male',
                    style: TextStyle(color: Colors.black),
                  ),
                  Consumer<AppDataProvider>(
                    builder: (context, appData, widget) => Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.all(Colors.green),
                        value: appData.isMale,
                        onChanged: (value) {
                          appData.setGenderAsMale();
                        }),
                  ),
                  Text(
                    'Female',
                    style: TextStyle(color: Colors.black),
                  ),
                  Consumer<AppDataProvider>(
                    builder: (context, appData, widget) => Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.all(Colors.green),
                        value: appData.isFemale,
                        onChanged: (value) {
                          appData.setGenderAsFemale();
                        }),
                  ),
                  Text(
                    'N/A',
                    style: TextStyle(color: Colors.black),
                  ),
                  Consumer<AppDataProvider>(
                    builder: (context, appData, widget) => Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.all(Colors.green),
                        value: appData.isNA,
                        onChanged: (value) {
                          appData.setGenderAsNA();
                        }),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                kChooseTrainingPeriodText,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            DropdownButtonFormField(
                value: 1,
                onChanged: (value) {
                  setTrainingPeriod(value);
                },
                dropdownColor: Colors.white,
                icon: Icon(
                  Icons.arrow_downward,
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.elliptical(5, 5))),
                ),
                items: [
                  DropdownMenuItem(
                    child: Text(kOnceAWeekText,
                        style: TextStyle(color: Colors.black)),
                    value: 1,
                  ),
                  DropdownMenuItem(
                    child: Text(kTwoThreeWeekText,
                        style: TextStyle(color: Colors.black)),
                    value: 2,
                  ),
                  DropdownMenuItem(
                    child: Text(kFourFiveWeekText,
                        style: TextStyle(color: Colors.black)),
                    value: 3,
                  ),
                  DropdownMenuItem(
                    child: Text(
                      kDailyText,
                      style: TextStyle(color: Colors.black),
                    ),
                    value: 4,
                  ),
                ]),
            SizedBox(
              height: 215,
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
                              appData.setEmailAddress(emailAddress);
                              appData.setGender();
                              appData.setTrainingPeriod(trainingPeriod);
                              appData.completeFirstStep();
                            }
                          },
                          child: Text(
                            kNextText.toUpperCase(),
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
