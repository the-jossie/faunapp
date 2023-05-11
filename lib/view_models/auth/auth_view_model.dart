import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class AuthViewModel extends BaseViewModel {
  int currentPageIndex = 0;
  final pageController = PageController(initialPage: 0);

  void changePageIndex(int index) {
    currentPageIndex = index;
    notifyListeners();
  }

  void goToPage(int index) {
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
