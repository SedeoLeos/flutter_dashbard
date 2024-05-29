import 'package:flutter/material.dart';
import 'package:slaega_bussiness/controllers/menu_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'pages/home_page.dart';


/// Let's start to make responsive website
/// First make app responsive class

class SlaegaBussiness extends StatelessWidget {
  const SlaegaBussiness({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Busseness Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => AppMenuController()),
        ],
        child: HomePage(),
      ),
    );
  }
}
