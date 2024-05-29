import 'package:flutter/material.dart';
import 'package:slaega_dating/helpers/style.dart';

Widget mobileTopBar(GlobalKey<ScaffoldState> key) => AppBar(
  leading: IconButton(icon: Icon(Icons.menu, color: active,), onPressed: (){
      key.currentState!.openDrawer();
    },),
  title:
  const Image(image: AssetImage("assets/images/logo.png",package:'slaega_dating')),
  centerTitle: true,
  elevation: 0,
  backgroundColor: bgColor,
);
