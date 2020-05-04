import 'package:flutter/foundation.dart';

class Counter with ChangeNotifier{
  var count =0;

  void increment()
  {
    count++;
    notifyListeners();
  }
}