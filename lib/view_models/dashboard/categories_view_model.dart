import 'package:faunapp/models/category.dart';
import 'package:stacked/stacked.dart';

class CategoriesViewModel extends BaseViewModel {
  final List<Category> _allCategories = List.filled(
    8,
    Category(name: "Farm Animals", image: "assets/images/dog.jpeg"),
  );

  List<Category> get allCategories => _allCategories;
}
