import 'package:flutter/material.dart';
import '../constants.dart';

class TextsWidget extends StatelessWidget {
  const TextsWidget(
      {required this.text,
      this.fontcolor = kBlack,
      this.fontsize,
      this.fontfamily = 'Super',
      this.fontweight});
  final String text;
  final Color? fontcolor;
  final String? fontfamily;
  final double? fontsize;
  final FontWeight? fontweight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontweight,
        fontFamily: fontfamily,
        fontSize: fontsize,
        color: fontcolor,
      ),
    );
  }
}
