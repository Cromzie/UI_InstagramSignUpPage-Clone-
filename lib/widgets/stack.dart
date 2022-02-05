import 'dart:ui';

import 'package:flutter/material.dart';
// import './container.dart';
import '../constants.dart';
import './textfield.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        fit: StackFit.expand,
        children: [Container(
        decoration: BoxDecoration(
        color: kFirstPage,
      ),),
           Positioned(
             top: MediaQuery.of(context).size.height/3.5,
             child: Container(
                   decoration: BoxDecoration(
                   color: kWhite,
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0),),
                 ),
                 height: MediaQuery.of(context).size.height*0.72,
                 width: MediaQuery.of(context).size.width,
                 child: TextfieldWidget(),),
           ),
           
           Positioned(
          top: MediaQuery.of(context).size.height/8,
          left: MediaQuery.of(context).size.width/4,
          right: MediaQuery.of(context).size.width/4,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color:Colors.black54, width: 2.0),color: kWhite,
            ),
            height: 150.0,
          )
        ),
           Positioned(
          top: MediaQuery.of(context).size.height/7,
          left: MediaQuery.of(context).size.width/4,
          right: MediaQuery.of(context).size.width/4.2,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color:kLightBlack, width: 2.0),color: kWhite,
            ),
            child: CircleAvatar(backgroundImage: AssetImage('assets/ig1.jpg'), radius: 100.0,)
            ,
            height: 150.0,
          )
        ),

      ],

      ),
    );
  }
}