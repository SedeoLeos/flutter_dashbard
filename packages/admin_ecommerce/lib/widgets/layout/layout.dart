
import 'package:slaega_admin_ecommerce/rounting/route_names.dart';
import 'package:slaega_admin_ecommerce/rounting/router.dart';
import 'package:slaega_admin_ecommerce/services/navigation_service.dart';
import 'package:slaega_admin_ecommerce/widgets/side_menu/side_menu.dart';
import 'package:flutter/material.dart';

import '../../locator.dart';
import '../navbar/navigation_bar.dart';


class LayoutTemplate extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Colors.white,
      drawer: Container(
        color: Colors.white,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountEmail: SelectableText("abc@gmail.com"),
              accountName: SelectableText("Santos Enoque"),
            ),
            ListTile(
              title: SelectableText("Lessons"),
              leading: Icon(Icons.book),
            )
          ],
        ),
      ),
      body: Row(
        children: [
          SideMenu(),
          Expanded(
            child: Column(
              children: [
                NavigationBar(),
                Expanded(
                  child: Navigator(
                    key: locator<NavigationService>().navigatorKey,
                    onGenerateRoute: generateRoute,
                    initialRoute: HomeRoute,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
