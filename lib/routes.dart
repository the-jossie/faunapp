import 'views/auth/auth_view.dart';
import 'views/dashboard/categories_view.dart';
import 'views/splash_view.dart';

final routes = {
  "splash_screen": (context) => const SplashView(),
  "auth": (context) => const AuthView(),
  "all_animals_screen": (context) => const CategoriesView()
};
