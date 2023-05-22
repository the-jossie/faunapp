import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import '../../config/app_config.dart';
import '../../formatters/num.dart';
import '../../views/auth/login_auth_view.dart';
import '../../views/auth/signup_auth_view.dart';
import '../../view_models/auth/auth_view_model.dart';
import '../../widgets/app_background.dart';
import '../../widgets/button.dart';

class AuthView extends StatelessWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AuthViewModel>.reactive(
      viewModelBuilder: () => AuthViewModel(),
      builder: (context, viewModel, child) => AppBackground(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: viewModel.pageController,
          onPageChanged: (value) => viewModel.changePageIndex(value),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Image.asset(
                  "assets/images/logo.png",
                  width: 40.w,
                ),
                const SizedBox(height: 20),
                Text(
                  "Welcome to FaunApp",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: AppConfigService.hexToColor("#001EBB"),
                  ),
                ),
                const SizedBox(height: 14),
                const Text(
                  "Get to know Great Animals",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const Spacer(),
                // FAButton(
                //     child: const Text(
                //       "Sign In",
                //       style: TextStyle(
                //         fontWeight: FontWeight.bold,
                //         fontSize: 18,
                //         color: Colors.white,
                //       ),
                //     ),
                //     onPressed: () => viewModel.goToPage(1)),
                // const SizedBox(height: 30),
                FAButton(
                  onPressed: () => viewModel.goToPage(2),
                  width: 70.w,
                  child: const Text(
                    "Create Account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 2.h),

                GestureDetector(
                  onTap: () => viewModel.goToPage(1),
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
                const Spacer(),
              ],
            ),
            LoginAuthView(
              openSignupView: () => viewModel.goToPage(2),
            ),
            const SignupAuthView()
          ],
        ),
      ),
    );
  }
}
