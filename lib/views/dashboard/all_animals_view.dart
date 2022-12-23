import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../view_models/dashboard/all_animals_view_model.dart';

class AllAnimalsView extends StatelessWidget {
  const AllAnimalsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AllAnimalsViewModel>.reactive(
      builder: (context, model, child) => Scaffold(),
      viewModelBuilder: () => AllAnimalsViewModel(),
    );
  }
}
