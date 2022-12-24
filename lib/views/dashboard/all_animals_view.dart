import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import '../../view_models/dashboard/all_animals_view_model.dart';
import '../../widgets/app_background.dart';

class AllAnimalsView extends StatelessWidget {
  const AllAnimalsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AllAnimalsViewModel>.reactive(
      builder: (context, model, child) => AppBackground(
        appBar: AppBar(
          title: Text(
            "Welcome",
            style: GoogleFonts.sofia(fontSize: 24),
            textAlign: TextAlign.center,
          ),
        ),
        drawer: const Drawer(),
      ),
      viewModelBuilder: () => AllAnimalsViewModel(),
    );
  }
}
