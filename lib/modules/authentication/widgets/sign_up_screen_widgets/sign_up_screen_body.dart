import 'package:flutter/material.dart';

import '../common_widgets/app_logo.dart';
import '../common_widgets/navigate_back_button.dart';
import 'already_have_account.dart';
import 'brand_caption.dart';
import 'sign_up_with_email_address.dart';
import 'sign_up_with_fb_and_g.dart';

class SignUpScreenBody extends StatelessWidget {
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
              SizedBox(
                height: 50.0,
              ),
              AppLogo(),
              BrandCaption(),
              SignUpWithFbAndG(),
              SignUpWithEmailAddress(),
              Divider(
                color: Colors.white38,
                thickness: 2.0,
              ),
              AlreadyHaveAccount()
            ],
          ),
        ),
      ),
    );
  }
}
