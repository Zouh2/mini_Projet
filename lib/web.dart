import 'package:flutter/material.dart';
import 'package:testtechnique/widget/responsive.dart';
import 'package:testtechnique/widget/svgwidget.dart';

class WebPages extends StatefulWidget {
  @override
  State<WebPages> createState() => _WebPagesState();
}

class _WebPagesState extends State<WebPages> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.blueAccent,
          image: DecorationImage(
            image: AssetImage('assets/images/desktop.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: PageContent(),
      ),
    );
  }
}

class PageContent extends StatelessWidget {

  void _onNextPressed() {

  }

  @override
  Widget build(BuildContext context) {

    double taille = Responsive.getScreenReolution(context)['width']! + Responsive.getScreenReolution(context)['height']! ;

    return Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/Image 2.png',
                    width: Responsive.getScreenReolution(context)['width']! / 5,
                    height: Responsive.getScreenReolution(context)['height']! / 5,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.list_sharp,
                      color: Colors.black,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.centerLeft,

                    child: Column(
                      children: [
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: Responsive.getScreenReolution(context)['width']! / 4,
                          ),
                          child: Text(
                            'Pour commencer...',
                            style: TextStyle(
                              fontSize: taille / 60,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(height: Responsive.getScreenReolution(context)['height']! / 40),
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: Responsive.getScreenReolution(context)['width']! / 4,
                          ),
                          child: Text(
                            "faire votre Shynlei, jouer avec, c'est l'occasion d'écouter vos rêves, de les partager et de prendre confiance dans votre richesse",
                            style: TextStyle(
                              fontSize: taille / 120,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              height: 1.5,
                            ),
                          ),
                        ),
                        SizedBox(height: Responsive.getScreenReolution(context)['height']! / 40),
                        Text(
                          'Nom et prénom',
                          style: TextStyle(
                            fontSize: taille / 120,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: Responsive.getScreenReolution(context)['width']! / 4,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Champ de texte 2',
                            ),
                          ),
                        ),
                        SizedBox(height: Responsive.getScreenReolution(context)['height']! / 40),
                        Text(
                          'Mon intention',
                          style: TextStyle(
                            fontSize: taille / 120,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: Responsive.getScreenReolution(context)['height']! / 40),
                        Text(
                          "l'intention, l'objectif de ce Shynlei",
                          style: TextStyle(
                            fontSize: taille / 160,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: Responsive.getScreenReolution(context)['width']! / 4,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Champ de texte 2',
                            ),
                          ),
                        ),
                      ],
                    ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Column(
                    children: [
                      Text(
                        "Votre Shynlei c'est ... ",
                        style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: taille / 60,
                          fontWeight: FontWeight.w800,
                          height: 1.185,
                        ),
                      ),
                      SizedBox(height: Responsive.getScreenReolution(context)['height']! / 60), // Espacement entre les deux Text
                      Container(
                        constraints: BoxConstraints(
                          maxWidth: Responsive.getScreenReolution(context)['width']! / 2,
                        ),
                        child: Text(
                          '7 étapes,2 fiches pour prendre note des rencontres, 1 page pour  éclairer \n le sens ,3 interprétations pour vous aider .. ',
                          style: TextStyle(
                            fontFamily: 'Rubik',
                            fontSize: taille/ 140,
                            fontWeight: FontWeight.w300,
                            height: 1.5,
                          ),
                        ),
                      ),
                      SizedBox(height: Responsive.getScreenReolution(context)['height']! / 20),

                      Row(
                        children: [
                          SvgTextWidget(
                              svgPath: 'assets/images/Page-1.svg', // Chemin vers votre fichier SVG
                              text: "1. Le réve libre l'expression"
                          ),
                          SizedBox(width: Responsive.getScreenReolution(context)['width']! / 40),
                          SvgTextWidget(
                            svgPath: 'assets/images/Page-2.svg', // Chemin vers votre fichier SVG
                            text: "2.Le sens éclaire le parcours",
                          ),
                        ],
                      ),
                      SizedBox(height: Responsive.getScreenReolution(context)['height']! / 40),
                      Row(
                        children: [
                          SvgTextWidget(
                            svgPath: 'assets/images/Page-3.svg', // Chemin vers votre fichier SVG
                            text: "3.La difference rend unique ",
                          ),
                          SizedBox(width: Responsive.getScreenReolution(context)['width']! / 40),
                          SvgTextWidget(
                            svgPath: 'assets/images/Page-4.svg', // Chemin vers votre fichier SVG
                            text: "4.La valeur humaine met en mouvement ",
                          ),
                        ],
                      ),
                      SizedBox(height: Responsive.getScreenReolution(context)['height']! / 40),
                         Row(
                           children: [
                             SvgTextWidget(
                               svgPath: 'assets/images/Page-5.svg', // Chemin vers votre fichier SVG
                               text: "5.la clé exprime le style",
                             ),
                             SizedBox(width: Responsive.getScreenReolution(context)['width']! / 40),
                             SvgTextWidget(
                               svgPath: 'assets/images/Page-6.svg', // Chemin vers votre fichier SVG
                               text: '6. le parcours associe réve et réalité',
                             ),
                           ],
                         ) ,
                      SizedBox(height: Responsive.getScreenReolution(context)['height']! / 40),
                      SvgTextWidget(
                        svgPath: 'assets/images/Page-7.svg', // Chemin vers votre fichier SVG
                        text: "7. le ciel bleu rèvèle l'alignement",
                      ),
                      SizedBox(height: Responsive.getScreenReolution(context)['height']! / 10),
                      Container(
                        height: Responsive.getScreenReolution(context)['height']! / 17,
                        width: Responsive.getScreenReolution(context)['width']! / 6,
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
                              fontSize: taille/ 180,
                              fontWeight: FontWeight.w500,
                              height: 1.185,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),


          ],
        ),

    );
  }
}
