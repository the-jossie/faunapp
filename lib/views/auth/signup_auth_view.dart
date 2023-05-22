import 'package:faunapp/config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../view_models/auth/signup_auth_view_model.dart';
import '../../widgets/button.dart';
import '../../widgets/input.dart';

class SignupAuthView extends StatelessWidget {
  final Function openSigninView;

  const SignupAuthView({required this.openSigninView, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignupAuthViewModel>.reactive(
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
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Please enter your details to continue",
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
                          title: "First Name",
                          textEditingController:
                              viewModel.firstNameTextController,
                          validator: (String value) =>
                              value.isEmpty ? "Firstname is required" : null,
                        ),
                        FATextFormField(
                          title: "Last Name",
                          textEditingController:
                              viewModel.lastNameTextController,
                          validator: (String value) =>
                              value.isEmpty ? "Lastname is required" : null,
                        ),
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
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Checkbox(
                              value: viewModel.isAgreedToTerms,
                              onChanged: viewModel.handleIsAgreedToTerms,
                              activeColor:
                                  AppConfigService.hexToColor("#021B9E"),
                            ),
                            Expanded(
                              child: Text(
                                "By creating an account you have to agree to our terms and conditions",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: AppConfigService.hexToColor("#021B9E"),
                                ),
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
                            "Sign Up",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () => viewModel.signup(),
                        ),
                        const SizedBox(height: 16),
                        GestureDetector(
                          onTap: () => openSigninView(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Already have an account?',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(width: 5.0),
                              Text(
                                'Sign in here',
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              )
                            ],
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
      viewModelBuilder: () => SignupAuthViewModel(),
    );
  }
}
