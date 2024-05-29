import 'package:flutter/material.dart';
import 'package:slaega_employee_admin/dashboard.dart';
import 'package:slaega_employee_admin/style/colors.dart';



class SlaegaEmployeeAdmin extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: AppColors.primaryBg
      ),
      home: Dashboard(),
    );
  }
}
