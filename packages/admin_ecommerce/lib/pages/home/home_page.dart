import 'package:slaega_admin_ecommerce/pages/home/desktop.dart';
import 'package:slaega_admin_ecommerce/pages/home/mobile.dart';
import 'package:slaega_admin_ecommerce/pages/home/tablet.dart';
import 'package:slaega_admin_ecommerce/widgets/size_constraint.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ScreenTypeLayout(
       breakpoints: ScreenBreakpoints(
    tablet: 600,
    desktop: 1460,
    watch: 300
  ),
      mobile: HomePageMobile(),
      tablet: HomePageTablet(),
      desktop: SizeConstraintWidget(child: HomePageDesktop()),
    );
  }
}
