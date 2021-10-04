import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StateData extends ChangeNotifier{
  int selectedIndex = 0;  
  bool icColor = false;
  void change (int x){
    selectedIndex=x; 
    notifyListeners(); 

  } 
  void colorChange(){
    icColor=!icColor;
    notifyListeners();
  }
}