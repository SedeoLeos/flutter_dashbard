import 'package:flutter/material.dart';
import 'package:slaega_dating/helpers/style.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
 final  String text;

  const CustomButton({super.key,required this.text}) ;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: active,
          borderRadius: BorderRadius.circular(30)),
      padding: const EdgeInsets.symmetric(
          horizontal: 18, vertical: 12),
      child: Text(
        text,
        style: GoogleFonts.roboto(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color:  Colors.white
        ),
      ),
    );
  }
}
