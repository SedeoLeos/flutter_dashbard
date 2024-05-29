import 'package:flutter/material.dart';
import 'package:slaega_dating/constants/content.dart';
import 'package:slaega_dating/helpers/style.dart';
import 'package:slaega_dating/widgets/button.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 450,
              constraints: const BoxConstraints(
                maxWidth: 450
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    children: [
                      const TextSpan(
                        text: "Get noticed for ",
                      ),
                      TextSpan(
                          text: "who",
                          style: GoogleFonts.roboto(
                              color: active)),
                      const TextSpan(
                        text: " you are, ",
                      ),
                      TextSpan(
                          text: "not what",
                          style: GoogleFonts.roboto(
                              color: active)),
                      const TextSpan(
                        text: " you look like.",

                      ),
                    ],

                    style: GoogleFonts.roboto(
                        fontSize:28, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20,),

        Container(
          width: 550,
          constraints: const BoxConstraints(maxWidth: 550),
          child: Text(
            mainParagraph,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
                letterSpacing: 1.5,
                height: 1.5
            ),),
        ),
        const SizedBox(height: 20,),

        Container(
          constraints: const BoxConstraints(maxWidth: 550),
          padding: const EdgeInsets.all(4),
          margin:const EdgeInsets.symmetric(horizontal:20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    offset: const Offset(0, 40),
                    blurRadius: 80
                )
              ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: screenSize.width / 4,
                padding: const EdgeInsets.only(left:4),
                child: const TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.email_outlined),
                      hintText: "Email",
                      border: InputBorder.none
                  ),
                ),
              ),

              const CustomButton(text: "Get started",)
            ],
          ),
        ),


      ],
    );
  }
}
