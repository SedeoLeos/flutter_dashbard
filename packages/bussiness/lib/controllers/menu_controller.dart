
import 'package:flutter/material.dart';

class AppMenuController extends ChangeNotifier{
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _globalKey;

  void controlMenu(){
    if(!_globalKey.currentState!.isDrawerOpen){
      _globalKey.currentState!.openDrawer();
    }
  }
}