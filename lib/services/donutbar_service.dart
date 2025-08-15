import 'package:donut_shop/data/models/donutfilter_item.dart';
import 'package:donut_shop/data/models/donutpage_model.dart';
import 'package:donut_shop/utility/constants.dart';
import 'package:flutter/material.dart';

class DonutService extends ChangeNotifier{
  List<DonutFilterBarItem> filterBarItems = [
    DonutFilterBarItem(id: 'classic', label: 'Classic'),
    DonutFilterBarItem(id: 'sprinkled', label: 'Sprinkled'),
    DonutFilterBarItem(id: 'stuffed', label: 'Stuffed'),
  ];
  
  String? selectedDonutType;
  List<DonutModel> filteredDonuts = [];
  late DonutModel selectedDonut;

  DonutModel getSelecteDonut() {
    return selectedDonut;
  }

  void onDonutSelected(DonutModel donut) {
    selectedDonut = donut;
    Utils.mainAppNav.currentState!.pushNamed('/details');
  }

  DonutService() {
    selectedDonutType = filterBarItems.first.id;
    filteredDonutsByType(selectedDonutType!);
  }

  void filteredDonutsByType(String type) {
    selectedDonutType = type;
    filteredDonuts = Utils.donuts.where(
      (d) => d.type == selectedDonutType).toList();

    notifyListeners();
  }
}