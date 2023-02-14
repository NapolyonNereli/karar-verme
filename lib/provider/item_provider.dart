import 'dart:collection';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/item_model.dart';

class ItemProvider extends ChangeNotifier {
  List<Item> decisions = [];

  UnmodifiableListView<Item> get allDecisions =>
      UnmodifiableListView(decisions);

  String resultText = "";
  String get resultGet => resultText;

  void addDecisions(Item item) {
    decisions.add(item);
    notifyListeners();
  }

  void deleteDecisions(Item item) {
    decisions.remove(item);
    notifyListeners();
  }

  void degiskenFunc() {
    var rnd = Random();
    var  rndNext = rnd.nextInt(decisions.length);
    resultText = decisions[rndNext].title;
    notifyListeners();
  }
}
