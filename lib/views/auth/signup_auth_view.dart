import 'package:faunapp/config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import '../../view_models/auth/signup_auth_view_model.dart';
import '../../widgets/button.dart';
import '../../widgets/input.dart';

class SignupAuthView extends StatelessWidget {
  const SignupAuthView({Key? key}) : super(key: key);

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
                top: 150,
                left: 33,
                bottom: 18,
                right: 33,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: GoogleFonts.sofia(
                      fontSize: 32,
                      height: 1.3,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Back",
                    style: GoogleFonts.sofia(
                      fontSize: 32,
                      height: 1.3,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(33),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                              fontSize: 18,
                              color: AppConfigService.hexToColor("#021B9E")),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 100),
                  Center(
                    child: FAButton(
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
