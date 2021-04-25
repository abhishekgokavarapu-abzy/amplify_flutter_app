import 'package:amplify_flutter_app/config/constants/app_constants.dart';
import 'package:amplify_flutter_app/modules/authentication/providers/app_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpWithFbAndG extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 35.0,
          ),
          SizedBox(
            height: 50.0,
            child: Consumer<AppDataProvider>(
              builder: (context, appData, widget) => TextButton(
                onPressed: () {
                  appData.launchFb();
                },
                child: Stack(alignment: AlignmentDirectional.center, children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Row(
                      children: [
                        Image(image: kFbLogo),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          kSignUpFbText,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                              letterSpacing: 2.0,
                              wordSpacing: 2.0),
                        )
                      ],
                    ),
                  ),
                ]),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(kFacebookColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.0),
                            side: BorderSide(color: Colors.red)))),
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          SizedBox(
            height: 50.0,
            child: Consumer<AppDataProvider>(
                builder: (context, appData, widget) => TextButton(
                      onPressed: () {
                        appData.launchG();
                      },
                      child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Row(
                                children: [
                                  Image(image: kGoogleLogo),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    kSignUpGText,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14.0,
                                        letterSpacing: 2.0,
                                        wordSpacing: 2.0),
                                  )
                                ],
                              ),
                            ),
                          ]),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24.0),
                                      side: BorderSide(color: Colors.red)))),
                    )),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
