import 'package:amplify_flutter_app/config/constants/app_constants.dart';
import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: kAppLogo,
      semanticLabel: kAppLogoSemantics,
    );
  }
}
