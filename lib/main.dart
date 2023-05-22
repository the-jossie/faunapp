import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'config/app_config.dart';
import 'routes.dart';
import 'set_up.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await setUpServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Faunapp',
      debugShowCheckedModeBanner: false,
      navigatorKey: AppConfigService.navigatorKey,
      initialRoute: "splash_screen",
      routes: routes,
      theme: ThemeData(
        primaryColor: AppConfigService.hexToColor("#001EBB"),
        appBarTheme: AppBarTheme(
          color: AppConfigService.hexToColor("#021B9E"),
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppConfigService.hexToColor("#021B9E"),
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark,
          ),
        ),
      ),
    );
  }
}
