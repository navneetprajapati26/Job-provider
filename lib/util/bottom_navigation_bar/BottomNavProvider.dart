import 'package:flutter/foundation.dart';


class BottomNavProvider extends ChangeNotifier{
  int screenIndex =0;
  int get currentScreenIndex => screenIndex;

  void updateScreenIndex(int newIndex){
    screenIndex = newIndex;
    notifyListeners();
  }
}