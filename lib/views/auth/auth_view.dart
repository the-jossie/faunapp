import 'package:faunapp/views/auth/login_auth_view.dart';
import 'package:faunapp/views/auth/signup_auth_view.dart';
import 'package:faunapp/widgets/app_background.dart';
import 'package:faunapp/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import '../../view_models/auth/auth_view_model.dart';

class AuthView extends StatelessWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthViewModel>.reactive(
      viewModelBuilder: () => AuthViewModel(),
      builder: (context, viewModel, child) => AppBackground(
        scaffold: Scaffold(
          body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: viewModel.pageController,
            onPageChanged: (value) => viewModel.changePageIndex(value),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  Text(
                    "you're welcome",
                    style: GoogleFonts.sofia(fontSize: 70, height: 1.3),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  FAButton(
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () => viewModel.goToPage(1)),
                  const SizedBox(height: 30),
                  FAButton(
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () => viewModel.goToPage(2)),
                  const Spacer(),
                ],
              ),
              const LoginAuthView(),
              const SignupAuthView()
            ],
          ),
        ),
      ),
    );
  }
}
