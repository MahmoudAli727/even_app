import 'package:flutter/cupertino.dart';

class App_State extends ChangeNotifier {
  int itemSelected = 0;

  void itemSelectedChangeNotifier(int itemSelected) {
    this.itemSelected = itemSelected;
    notifyListeners();
  }
}
