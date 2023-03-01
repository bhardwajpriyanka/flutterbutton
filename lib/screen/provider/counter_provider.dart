import 'package:flutter/material.dart';

class Counderprovider extends ChangeNotifier
{
  int i=0;

  void increment()
  {
    i++;
    notifyListeners();
  }
  void decrement()
  {
    i--;
    notifyListeners();
  }
  void two()
  {
    i*=2;
    notifyListeners();
  }
  void three()
  {
    i*=3;
    notifyListeners();
  }
  void four()
  {
    i*=4;
    notifyListeners();
  }
}