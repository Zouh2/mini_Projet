import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testtechnique/widget/responsive.dart';

class SvgTextWidgetphone extends StatelessWidget {
  final String svgPath;
  final String text;

  SvgTextWidgetphone({required this.svgPath, required this.text});

  @override
  Widget build(BuildContext context) {
    double taille = Responsive.getScreenReolution(context)['width']! + Responsive.getScreenReolution(context)['height']! ;

    return Row(
      children: [
        SvgPicture.asset(
          svgPath,
          width: taille / 160,  // Ajustez la largeur selon vos besoins
          height: Responsive.getScreenReolution(context)['height']! /
              14, // Ajustez la hauteur selon vos besoins
        ),
        SizedBox(width: Responsive.getScreenReolution(context)['width']! /
            60), // Espacement entre l'icône SVG et le texte
        Text(
          text,
          style: TextStyle(fontSize: taille / 100), // Ajustez le style selon vos besoins
        ),
      ],
    );
  }
}
