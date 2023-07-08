import 'package:flutter/cupertino.dart';

class ThemeViewModel extends ChangeNotifier {
  bool darkMode = false;

  darkModeChanger() {
    darkMode = !darkMode;
    notifyListeners();
  }
}
