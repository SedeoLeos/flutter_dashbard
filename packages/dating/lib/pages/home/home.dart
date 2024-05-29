import 'package:flutter/material.dart';
import 'package:slaega_dating/helpers/responsive.dart';
import 'package:slaega_dating/helpers/style.dart';
import 'package:slaega_dating/pages/home/widgets/desktop.dart';
import 'package:slaega_dating/pages/home/widgets/mobile.dart';
import 'package:slaega_dating/widgets/navbar_desktop.dart';
import 'package:slaega_dating/widgets/drawer.dart';
import 'package:slaega_dating/widgets/mobile_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
        appBar: ResponsiveWidget.isSmallScreen(context) ?
        PreferredSize(preferredSize: Size(screenSize.width, 187), child:mobileTopBar(scaffoldKey)) :
         PreferredSize(preferredSize: Size(screenSize.width, 1000),
        child: NavBar(),),
        drawer: const MobileMenu(),
        backgroundColor: bgColor,
        body: ResponsiveWidget(
          largeScreen: const DesktopScreen(),
          smallScreen: MobileScreen(), 
        ));
  }
}
