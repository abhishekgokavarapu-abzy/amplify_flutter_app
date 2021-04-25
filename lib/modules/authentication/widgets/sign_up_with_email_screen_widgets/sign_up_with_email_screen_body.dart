import 'package:amplify_flutter_app/config/constants/app_constants.dart';
import 'package:amplify_flutter_app/modules/authentication/providers/app_data_provider.dart';
import 'package:amplify_flutter_app/modules/authentication/widgets/common_widgets/navigate_back_button.dart';
import 'package:amplify_flutter_app/modules/authentication/widgets/sign_up_with_email_screen_widgets/step_two_form.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'progress_line.dart';
import 'sign_up_heading.dart';
import 'step_one_form.dart';

class SignUpWithEmailScreenBody extends StatefulWidget {
  @override
  _SignUpWithEmailScreenBodyState createState() =>
      _SignUpWithEmailScreenBodyState();
}

class _SignUpWithEmailScreenBodyState extends State<SignUpWithEmailScreenBody> {
  _buildStepOneForm() => StepOneForm();
  _buildStepTwoForm() => StepTwoForm();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                NavigateBackButton(),
                SignUpText(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProgressLine(
                        statusColour: kThemeColour,
                      ),
                      Consumer<AppDataProvider>(
                        builder: (context, appData, widget) => ProgressLine(
                          statusColour: appData.completedFirstStep
                              ? kThemeColour
                              : Colors.white38,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Consumer<AppDataProvider>(
                builder: (context, appData, widget) =>
                    appData.completedFirstStep
                        ? _buildStepTwoForm()
                        : _buildStepOneForm())
          ],
        ),
      ),
    );
  }
}
