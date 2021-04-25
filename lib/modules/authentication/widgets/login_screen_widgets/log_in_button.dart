import 'package:amplify_flutter_app/config/constants/app_constants.dart';
import 'package:amplify_flutter_app/modules/authentication/providers/app_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LogInButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 50.0,
          child: Consumer<AppDataProvider>(
            builder: (context, appData, widget) => TextButton(
              onPressed: () {
                appData.validateState();
              },
              child: Text(
                kLogInText.toUpperCase(),
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
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0),
                          side: BorderSide(color: Colors.red)))),
            ),
          ),
        )
      ],
    );
  }
}
