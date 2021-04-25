import 'package:amplify_flutter_app/config/constants/app_constants.dart';
import 'package:amplify_flutter_app/config/theme/theme.dart';
import 'package:amplify_flutter_app/modules/authentication/providers/app_data_provider.dart';
import 'package:amplify_flutter_app/modules/authentication/screens/login_screen.dart';
import 'package:amplify_flutter_app/modules/authentication/screens/sign_up_screen.dart';
import 'package:amplify_flutter_app/modules/authentication/screens/sign_up_with_email_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ListenableProvider(
      create: (context) => AppDataProvider(), child: AmplifyFlutterApp()));
}

class AmplifyFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppTitle,
      theme: theme,
      themeMode: ThemeMode.dark,
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        SignUpWithEmailScreen.id: (context) => SignUpWithEmailScreen(),
      },
    );
  }
}
