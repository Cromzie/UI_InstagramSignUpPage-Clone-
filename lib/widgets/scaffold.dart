import 'package:flutter/material.dart';
import 'package:instaui/widgets/stack.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StackWidget()     
    );
  }
}