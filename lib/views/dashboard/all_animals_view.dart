import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../view_models/dashboard/all_animals_view_model.dart';
import '../../widgets/animal_card.dart';
import '../../widgets/app_background.dart';

class AllAnimalsView extends StatelessWidget {
  const AllAnimalsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AllAnimalsViewModel>.reactive(
      builder: (context, model, child) => AppBackground(
        appBar: AppBar(
          title: const Text(
            "Welcome",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        drawer: const Drawer(),
        body: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 25),
          crossAxisSpacing: 25,
          mainAxisSpacing: 40,
          children: model.allAnimals
              .map(
                (e) => const AnimalCard(
                  name: "Farm Animal",
                  imagePath: "assets/images/dog.jpeg",
                ),
              )
              .toList(),
        ),
      ),
      viewModelBuilder: () => AllAnimalsViewModel(),
    );
  }
}
