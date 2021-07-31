import 'package:flutter/material.dart';

class ProviderAll with ChangeNotifier {
  int itemIndexy = 0;

  void totalIndex() {
    itemIndexy++;
    notifyListeners();
  }
}
