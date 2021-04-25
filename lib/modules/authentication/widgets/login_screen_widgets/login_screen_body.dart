import 'package:amplify_flutter_app/modules/authentication/providers/app_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../common_widgets/app_logo.dart';
import '../common_widgets/navigate_back_button.dart';
import 'continue_fb_and_g.dart';
import 'forgot_password_button.dart';
import 'log_in_button.dart';
import 'no_account_sign_up.dart';
import 'password_input_field.dart';
import 'username_input_field.dart';

class LoginScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NavigateBackButton(),
              Consumer<AppDataProvider>(
                  builder: (context, appData, widget) =>
                      appData.isLoginButtonPressed
                          ? Text(
                              appData.counter,
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            )
                          : SizedBox(
                              height: 50.0,
                            )),
              AppLogo(),
              UsernameInputField(),
              PasswordInputField(),
              ForgottenPasswordButton(),
              LogInButton(),
              ContinueFbAndG(),
              Divider(color: Colors.white38, thickness: 2.0),
              NoAccountSignUp()
            ],
          ),
        ),
      ),
    );
  }
}
