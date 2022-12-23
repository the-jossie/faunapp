import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../config/app_config.dart';

class SignupAuthViewModel extends BaseViewModel {
  final loginFormKey = GlobalKey<FormState>();

  final TextEditingController _firstNameTextController =
      TextEditingController();
  final TextEditingController _lastNameTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  TextEditingController get firstNameTextController => _firstNameTextController;
  TextEditingController get lastNameTextController => _lastNameTextController;
  TextEditingController get emailTextController => _emailTextController;
  TextEditingController get passwordTextController => _passwordTextController;

  void signup() {
    AppConfigService.offAllNamed("all_animals_screen");
  }
}
