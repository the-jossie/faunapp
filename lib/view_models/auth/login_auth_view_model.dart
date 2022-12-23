import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../config/app_config.dart';

class LoginAuthViewModel extends BaseViewModel {
  final loginFormKey = GlobalKey<FormState>();

  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  TextEditingController get emailTextController => _emailTextController;
  TextEditingController get passwordTextController => _passwordTextController;

  void login() {
    AppConfigService.offAllNamed("all_animals_screen");
  }
}
