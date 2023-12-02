import 'package:flutter/material.dart';

class Provider1 extends ChangeNotifier {
  int currentIndex = 2;

  List<Color> bgcolors = [Colors.amber, Colors.green, Colors.pink, Colors.white, Colors.blue];

  void coolor() {
   currentIndex=(currentIndex+1)%bgcolors.length;
  //  if(currentIndex!=bgcolors.length){
// currentIndex=currentIndex+1;
  //  }
   notifyListeners();
  }
}