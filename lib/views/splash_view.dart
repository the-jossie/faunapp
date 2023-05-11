import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../config/size_config.dart';
import '../view_models/splash_view_model.dart';
import '../widgets/app_background.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ViewModelBuilder<SplashViewModel>.reactive(
      viewModelBuilder: () => SplashViewModel(),
      onViewModelReady: (model) => model.init(),
      builder: (context, viewModel, child) {
        return AppBackground(
          body: Center(
            child: Image.asset(
              "assets/images/logo.png",
            ),
          ),
        );
      },
    );
  }
}
