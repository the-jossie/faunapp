import 'package:faunapp/config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../view_models/auth/login_auth_view_model.dart';
import '../../widgets/button.dart';
import '../../widgets/input.dart';

class LoginAuthView extends StatelessWidget {
  final Function openSignupView;

  const LoginAuthView({required this.openSignupView, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginAuthViewModel>.reactive(
      builder: (context, viewModel, child) => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                top: 120,
                bottom: 27,
              ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppConfigService.hexToColor("#366ED8"),
                    spreadRadius: 4,
                  )
                ],
                color: AppConfigService.hexToColor("#021B9E"),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: const Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome Back!",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        // height: 1.3,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Please login to continue",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(33),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Form(
                    key: viewModel.loginFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FATextFormField(
                          title: "Email Address",
                          textEditingController: viewModel.emailTextController,
                          validator: (String value) =>
                              value.isEmpty ? "Email is required" : null,
                        ),
                        FATextFormField(
                          title: "Password",
                          textEditingController:
                              viewModel.passwordTextController,
                          validator: (String value) =>
                              value.isEmpty ? "Password is required" : null,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: viewModel.isRememberMe,
                                  onChanged: viewModel.handleIsRememberMe,
                                  activeColor:
                                      AppConfigService.hexToColor("#021B9E"),
                                ),
                                GestureDetector(
                                  onTap: () => viewModel.handleIsRememberMe(
                                      !viewModel.isRememberMe),
                                  child: Text(
                                    "Remember Me",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: AppConfigService.hexToColor(
                                          "#021B9E"),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              "Forgot Password?",
                              style: TextStyle(
                                fontSize: 15,
                                color: AppConfigService.hexToColor("#021B9E"),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 100),
                  Center(
                    child: Column(
                      children: [
                        FAButton(
                          child: const Text(
                            "Sign In",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () => viewModel.login(),
                        ),
                        const SizedBox(height: 16),
                        GestureDetector(
                          onTap: () => {},
                          child: Text(
                            'Create an account',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => LoginAuthViewModel(),
    );
  }
}
