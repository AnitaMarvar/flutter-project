import 'package:flutter/material.dart';
import 'package:project/themes/dark_mode.dart';
import 'package:project/themes/light_mode.dart';

//helps to switch between light and dark mode
class ThemeProvider with ChangeNotifier{
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData==darkMode;
  set themeData(ThemeData themeData){
    _themeData=themeData;
    notifyListeners();
  } 
  void toggleTheme(){
    if(_themeData==lightMode){
      themeData=darkMode;
    }
    else{
      themeData=lightMode;
    }
  }

}