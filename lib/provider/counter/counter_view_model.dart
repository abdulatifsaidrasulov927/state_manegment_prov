import 'package:flutter/foundation.dart';

class CounterViewModel extends ChangeNotifier {
  int counter = 0;
  decrement() {
    counter = counter - 1;
    notifyListeners();
  }

  increment() {
    counter = counter + 1;
    notifyListeners();
  }
}
