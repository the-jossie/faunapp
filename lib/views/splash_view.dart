import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../config/size_config.dart';
import '../view_models/splash_view_model.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ViewModelBuilder<SplashViewModel>.reactive(
      viewModelBuilder: () => SplashViewModel(),
      onModelReady: (model) => model.init(),
      builder: (context, viewModel, child) {
        return Stack(
          children: <Widget>[
            Image.asset(
              "assets/images/splash_bg.png",
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
          ],
        );
      },
    );
  }
}
