import 'package:flutter/foundation.dart';

class CounterProvider extends ChangeNotifier{
  int _count=0;

  int get count => _count;


  void incrementMethod()
  {
    _count=_count+1;
    notifyListeners();
  }

}