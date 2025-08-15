import 'package:donut_shop/utility/constants.dart';
import 'package:flutter/material.dart';

class DonutBottomBarSelectionService extends ChangeNotifier {
  String tabSelection = 'main';

  void setTabSelection(String selection) {
    Utils.mainListNav.currentState!.pushReplacementNamed('/' + selection);
    tabSelection = selection;
    notifyListeners();
  }
}