import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testtechnique/widget/responsive.dart';

class SvgTextWidget extends StatelessWidget {
  final String svgPath;
  final String text;
  SvgTextWidget({required this.svgPath, required this.text});
  @override
  Widget build(BuildContext context) {
    double taille = Responsive.getScreenReolution(context)['width']! + Responsive.getScreenReolution(context)['height']! ;
    return Row(
      children: [
        SvgPicture.asset(
          svgPath,
          width: taille / 160,
          height: Responsive.getScreenReolution(context)['height']! /
              14,
        ),
        SizedBox(width: Responsive.getScreenReolution(context)['width']! /
            60),
        Text(
          text,
          style: TextStyle(fontSize: taille / 160),
        ),
      ],
    );
  }
}
