import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive(
      {super.key,
        required Widget desktop,
        required Widget mobile,
        Widget? tablet});

  static Map<String, double> getScreenReolution(context) {
    return {
      'width': MediaQuery.of(context).size.width,
      'height': MediaQuery.of(context).size.height
    };
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
