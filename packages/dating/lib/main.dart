import 'package:flutter/material.dart';
import 'package:slaega_dating/pages/home/home.dart';




class SlaegaDating extends StatelessWidget {
  const SlaegaDating({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web',
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomePage(),
    );
  }
}
