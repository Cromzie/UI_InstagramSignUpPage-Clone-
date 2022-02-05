import 'package:flutter/material.dart';
import 'package:instaui/widgets/container.dart';
import 'package:instaui/widgets/scaffold.dart';
import './constants.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'An instagram ui',
    theme: ThemeData(
      scaffoldBackgroundColor: kFirstPageFill
    ),
    home: ScaffoldWidget(),
    
  ));
}

