import 'package:faunapp/config/app_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import '../../view_models/auth/login_auth_view_model.dart';
import '../../widgets/button.dart';
import '../../widgets/input.dart';

class LoginAuthView extends StatelessWidget {
  const LoginAuthView({Key? key}) : super(key: key);

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
                top: 150,
                left: 33,
                bottom: 18,
                right: 33,
              ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppConfigService.hexToColor("#029EF7"),
                    spreadRadius: 4,
                    blurRadius: 8,
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
                    "Sign In",
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
                        "Sign In",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () => viewModel.login(),
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
