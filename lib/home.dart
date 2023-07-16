import 'package:flutter/material.dart';
import 'package:testtechnique/phone.dart';
import 'package:testtechnique/web.dart';
import 'package:testtechnique/widget/helpScreen.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: WebPages(),
        mobile: const phonepage(),
        tablet: WebPages(),
      )
    );
  }
}