import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../modals/user_model.dart';

class AppDataProvider extends ChangeNotifier {
  bool _completedFirstStep = false;
  get completedFirstStep => _completedFirstStep;
  completeFirstStep() {
    _completedFirstStep = true;
    notifyListeners();
  }

  resetSteps() {
    _completedFirstStep = false;
  }

  List<User> users = [];
  String _emailAddress;
  bool _isMale = true;
  bool _isFemale = false;
  bool _isNA = false;
  String _gender;
  String _trainingPeriod;
  String _password;

  get isMale => _isMale;
  get isFemale => _isFemale;
  get isNA => _isNA;

  setGenderAsMale() {
    _isMale = true;
    _isFemale = false;
    _isNA = false;
    notifyListeners();
  }

  setGenderAsFemale() {
    _isMale = false;
    _isFemale = true;
    _isNA = false;
    notifyListeners();
  }

  setGenderAsNA() {
    _isMale = false;
    _isFemale = false;
    _isNA = true;
    notifyListeners();
  }

  setEmailAddress(String emailAddress) {
    _emailAddress = emailAddress;
  }

  setGender() {
    if (_isMale) {
      _gender = 'Male';
    } else if (_isFemale) {
      _gender = "Female";
    } else if (_isNA) {
      _gender = 'NA';
    }
  }

  setTrainingPeriod(String trainingPeriod) {
    _trainingPeriod = trainingPeriod;
  }

  setPassword(String password) {
    _password = password;
  }

  createUser() {
    User user = User(
        email: _emailAddress,
        gender: _gender,
        trainingPeriod: _trainingPeriod,
        password: _password);
    users.add(user);
    print(users);
    print(user.toString());
  }

  GlobalKey<FormState> _loginScreenStateKey;

  int _counter = 5;
  get counter => _counter.toString();
  Timer _timer;
  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      pressLoginButton();
      if (_counter > 0) {
        _counter--;
        notifyListeners();
      } else
        _timer.cancel();
    });
    _counter = 5;
    resetLoginButton();
  }

  saveLoginScreenState(GlobalKey<FormState> screenState) {
    _loginScreenStateKey = screenState;
  }

  validateState() {
    if (_loginScreenStateKey.currentState.validate()) {
      startTimer();
    }
  }

  bool _isLoginButtonPressed = false;
  get isLoginButtonPressed => _isLoginButtonPressed;
  pressLoginButton() {
    _isLoginButtonPressed = true;
    notifyListeners();
  }

  resetLoginButton() {
    _isLoginButtonPressed = false;
    notifyListeners();
  }

  String _fbUrl = 'https://www.facebook.com/';
  String _gUrl = 'https://accounts.google.com/';
  void launchFb() async => await canLaunch(_fbUrl)
      ? await launch(_fbUrl)
      : throw 'Could not launch $_fbUrl';
  void launchG() async => await canLaunch(_gUrl)
      ? await launch(_gUrl)
      : throw 'Could not launch $_gUrl';
}
