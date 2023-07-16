import 'package:flutter/material.dart';
import 'package:testtechnique/widget/responsive.dart';
import 'package:testtechnique/widget/svgphone.dart';

class phonepage extends StatefulWidget {
  const phonepage({Key? key}) : super(key: key);

  @override
  State<phonepage> createState() => _phonepageState();
}

class _phonepageState extends State<phonepage> {
  void _onNextPressed() {
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      Text(
                        'Votre Shynlei ',
                        style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: Responsive.getScreenReolution(context)['height']! / 20,
                          fontWeight: FontWeight.w800,
                          height: 1.185,
                        ),
                      ),
                      SizedBox(height: Responsive.getScreenReolution(context)['height']! / 60), // Espacement entre les deux Text
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: Responsive.getScreenReolution(context)['width']! / 1.3,
                    ),
                     child: Text(
                        '7 étapes, 2 fiches pour prendre note des rencontre, 1 page pour éclaire le sens , 3 interprétations pour vous aider .. ',
                        style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: Responsive.getScreenReolution(context)['height']! / 51,
                          fontWeight: FontWeight.w600,
                          height: 1.5,

                        ),
                      ),
                  ),
                    ],
                  ),
                ),
                SizedBox(height: Responsive.getScreenReolution(context)['height']! / 40),
                SvgTextWidgetphone(
                    svgPath: 'assets/images/Page-1.svg', // Chemin vers votre fichier SVG
                    text: "1. Le réve libre l'expression"
                ),
                SizedBox(height: Responsive.getScreenReolution(context)['height']! / 40),
                SvgTextWidgetphone(
                  svgPath: 'assets/images/Page-2.svg', // Chemin vers votre fichier SVG
                  text: "2.Le sens éclaire le parcours",
                ),
                SizedBox(height: Responsive.getScreenReolution(context)['height']! / 40),
                SvgTextWidgetphone(
                  svgPath: 'assets/images/Page-3.svg', // Chemin vers votre fichier SVG
                  text: "3.La difference rend unique ",
                ),
                SizedBox(height: Responsive.getScreenReolution(context)['height']! / 40),
                SvgTextWidgetphone(
                  svgPath: 'assets/images/Page-4.svg', // Chemin vers votre fichier SVG
                  text: "4.La valeur humaine met en mouvement ",
                ),
                SizedBox(height: Responsive.getScreenReolution(context)['height']! / 40),
                SvgTextWidgetphone(
                  svgPath: 'assets/images/Page-5.svg', // Chemin vers votre fichier SVG
                  text: "5.la clé exprime le style",
                ),
                SizedBox(height: Responsive.getScreenReolution(context)['height']! / 40),
                SvgTextWidgetphone(
                  svgPath: 'assets/images/Page-6.svg', // Chemin vers votre fichier SVG
                  text: '6. le parcours associe réve et réalité',
                ),
                SizedBox(height: Responsive.getScreenReolution(context)['height']! / 40),
                SvgTextWidgetphone(
                  svgPath: 'assets/images/Page-7.svg', // Chemin vers votre fichier SVG
                  text: "7. le ciel bleu révele l'alignement",
                ),
                SizedBox(height: Responsive.getScreenReolution(context)['height']! / 40),
                Container(
                  height: Responsive.getScreenReolution(context)['height']! / 17,
                  width: Responsive.getScreenReolution(context)['width']! / 2,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff000000)),
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: _onNextPressed,
                    child: Text(
                      "EXPRIMER MES REVES >",
                      style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: Responsive.getScreenReolution(context)['height']! / 51,
                        fontWeight: FontWeight.w500,
                        height: 1.185,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )

      ),
    // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
