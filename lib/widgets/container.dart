import 'package:flutter/material.dart';
import '../constants.dart';
import './texts.dart';
import './textfield.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kFirstPageFill,
      ),
    );
  }
}

class Positions {
  static final firstPosition = Expanded(child:  Container(
        decoration: BoxDecoration(
        color: kFirstPageFill,
      ),)
  );

  static final secondPosition = Expanded(child:  Container(
        decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(6.0),topRight: Radius.circular(6.0),),
      ),
      height: 250,
      child: TextfieldWidget(),)
  );

  static final thirdPosition = Expanded(
    flex: 1,
    child: 
  Container(
    width: 100,
    height: 100,
        decoration: BoxDecoration(
        color: kWhite,
        border: Border.all(color: kBlue),
        borderRadius: BorderRadius.circular(50),
      ),
  ));

  static final fourthPosition = Expanded(child:  Container(
    width: 100,
    height: 100,
        decoration: BoxDecoration(
        color: kWhite,
        border: Border.all(color: kBlue),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Image(image: AssetImage('ig1.jpg'), fit: BoxFit.fill,),
  ));
}
