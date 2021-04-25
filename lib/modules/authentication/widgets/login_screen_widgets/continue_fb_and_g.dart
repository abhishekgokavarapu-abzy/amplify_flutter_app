import 'package:amplify_flutter_app/config/constants/app_constants.dart';
import 'package:amplify_flutter_app/modules/authentication/providers/app_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContinueFbAndG extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: kFbLogo,
                semanticLabel: kFbLogoSemantics,
              ),
              Consumer<AppDataProvider>(
                  builder: (context, appData, widget) => TextButton(
                        onPressed: () {
                          appData.launchFb();
                        },
                        child: Text(
                          kContinueFbText,
                          style: TextStyle(color: Colors.white70),
                        ),
                      ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: kGoogleLogo,
                semanticLabel: kGoogleLogoSemantics,
              ),
              Consumer<AppDataProvider>(
                builder: (context, appData, widget) => TextButton(
                  onPressed: () {
                    appData.launchG();
                  },
                  child: Text(kContinueGText,
                      style: TextStyle(color: Colors.white70)),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
