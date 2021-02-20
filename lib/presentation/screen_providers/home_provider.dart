import 'package:flutter/foundation.dart';

class HomeProvider extends ChangeNotifier {
  int counter = 0;

  void incrementCounter() {
    counter++;
    notifyListeners();
  }
}
