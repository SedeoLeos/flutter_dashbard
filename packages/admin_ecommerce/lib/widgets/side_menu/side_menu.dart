import 'package:slaega_admin_ecommerce/widgets/side_menu/side_menu_mobile.dart';
import 'package:slaega_admin_ecommerce/widgets/side_menu/side_menu_tablet_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
             breakpoints: ScreenBreakpoints(
    tablet: 600,
    desktop: 1460,
    watch: 300
  ),
      mobile: SideMenuMobile(),
      desktop: SideMenuTabletDesktop(),
    );
  }
}
