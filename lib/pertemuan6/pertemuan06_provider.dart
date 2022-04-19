import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class PertemuanDark06ScreenProvider extends ChangeNotifier{
  var light=ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.purple
  );
  var dark = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.purple,
  );
  bool _enableDarkMode=false;

  bool get enableDarkmode=>_enableDarkMode;
  set setBrighntess (val){
    _enableDarkMode = val;
    notifyListeners();
  }
}