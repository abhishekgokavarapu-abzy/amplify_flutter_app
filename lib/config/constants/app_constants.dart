import 'package:flutter/material.dart';

String kAppTitle = 'Amplify';
Icon kNavigateBackIcon = Icon(
  Icons.arrow_back_ios_sharp,
);
ImageProvider kAppLogo = ResizeImage(
    AssetImage('assets/images/amplify_logo.png'),
    height: 80,
    width: 200);
ImageProvider kGoogleLogo = ResizeImage(
  AssetImage('assets/images/google-icon.png'),
  height: 24,
);
ImageProvider kFbLogo = ResizeImage(
  AssetImage('assets/images/facebook-icon.png'),
  height: 24,
);
String kAppLogoSemantics = 'Amplify Logo';
String kGoogleLogoSemantics = 'Google Logo';
String kFbLogoSemantics = 'Facebook Logo';
Color kMaterialBlackColour = Color(0xFF121212);
String kForgotPasswordText = 'Forgotten Password?';
String kLogInText = 'Log in';
String kContinueFbText = "Continue with Facebook";
String kContinueGText = "Continue with Google";
String kNoAccountText = "Don't have an account?";
String kSignUpText = "Sign up";
String kBrandLogoCaptionLine1 = "GAIN BACK CONTROL";
String kBrandLogoCaptionLine2 = "OF YOUR LIFE";
TextStyle kBrandLogoTextStyle =
    TextStyle(fontSize: 24.0, fontWeight: FontWeight.w400, letterSpacing: 1.0);
Color kFacebookColor = Color(0xFF1877f2);
String kSignUpFbText = 'SIGN UP WITH FACEBOOK';
String kSignUpGText = 'SIGN UP WITH GOOGLE';
String kSignUpWithEmailText = 'Sign up with Email address';
String kAlreadyHaveAccText = 'Already have an account?';
String kSignInText = 'Sign in';
Color kThemeColour = Color(0xFFf2d493);
String kEnterEmailAddressText = 'What\'s your email address?';
String kChooseGenderText = 'What\'s your gender?';
String kChooseTrainingPeriodText = 'How much do you train?';
String kOnceAWeekText = 'Once a week';
String kTwoThreeWeekText = '2-3 Times each week';
String kFourFiveWeekText = '4-5 Times each week';
String kDailyText = 'Daily';
String kChoosePasswordText = 'Choose a Password';
String kMin8CharsText = 'Minimum of 8 characters';
String kUpperCaseRequiredText = 'A capital letter';
String kLowerCaseRequiredText = 'A lowercase letter';
String kNumberRequiredText = 'A number';
String kBothBoxMatch = 'Both Boxes match';
String kNextText = 'NEXT';
String kContinueText = 'CONTINUE';
Pattern kPattern =
    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
