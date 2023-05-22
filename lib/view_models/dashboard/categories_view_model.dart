import 'package:faunapp/models/animal.dart';
import 'package:stacked/stacked.dart';

class CategoriesViewModel extends BaseViewModel {
  final List<Animal> _allAnimals = List.filled(
    8,
    Animal(name: "Farm Animal", image: "assets/images/dog.jpeg"),
  );

  List<Animal> get allAnimals => _allAnimals;
}
