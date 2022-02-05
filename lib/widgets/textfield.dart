import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
import './texts.dart';

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget({ Key? key }) : super(key: key);

  static var h = SizedBox(height: 20.0,);
  static var smallh = SizedBox(height: 5.0,);
  static var w = SizedBox(width: 20.0,);
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [ 
          SizedBox(height: 60.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextsWidget(text: 'sign in ', fontcolor: kFirstPage,),
              TextsWidget(text: 'to your account', fontcolor: kBlack,),
            ],
          ),
          h,
          TextField(
            cursorColor: kBlack,
            style: TextStyle(color: kLightBlack, fontSize: 13.0),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kFirstPage)
              ),
              hintText: 'Email Address',
              hintStyle: TextStyle(color: kLightBlack, fontSize: 13.0),
              prefixIcon: Icon(FontAwesomeIcons.envelope, color: kFirstPageFill,),
              suffixText: '@gmail.com',
              suffixStyle: TextStyle(color: kLightBlack, fontSize: 13.0),
              filled: true,
              fillColor: kFirstPage.withOpacity(0.2),
              border: OutlineInputBorder(),
            ),
          ),
          smallh,
          TextField(
            cursorColor: kBlack,
            obscureText: true,
            style: TextStyle(color: kLightBlack, fontSize: 13.0),
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kFirstPage)
              ),
              hintText: 'Password',
              hintStyle: TextStyle(color: kLightBlack, fontSize: 13.0),
              prefixIcon: Icon(Icons.lock_outline_rounded, color: kFirstPageFill,),
              filled: true,
              fillColor: kFirstPage.withOpacity(0.2),
              border: OutlineInputBorder(),
            ),
          ),
          smallh,
          TextButton(onPressed: (){}, child: TextsWidget(text: 'Log In', fontcolor: kFirstPage.withOpacity(0.4),),
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(kBorderFillGrey)
          ),
          ),
          h,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextsWidget(text: 'Forgot your login details?', fontcolor: kLightBlack,),
              TextButton(onPressed: (){}, style: ButtonStyle(overlayColor: MaterialStateProperty.all(kWhite)), child: TextsWidget(text: ' Get help signing in.', fontcolor: kLightBlack, fontweight: FontWeight.bold,)),
            ],
          ),
          smallh,
          Row(children: [
            Expanded(child: Divider(),),
            smallh,
           TextsWidget(text: '    OR   ', fontcolor: kLightBlack,),
            smallh,
            Expanded(child: Divider(),)
          ],
          ),
          h,
          TextButton.icon(onPressed: (){},      style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(kBorderFillGrey)
          ), icon: Icon(FontAwesomeIcons.facebookSquare, color: kFirstPage,), label: TextsWidget(text: 'Log in with Facebook', fontcolor: kFirstPage.withOpacity(0.4),),),
          SizedBox(height:MediaQuery.of(context).size.height/7),
           TextButton(onPressed: (){},          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(kBorderFillGrey)
          ), child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               TextsWidget(text: 'Don\'t have an account?', fontcolor: kLightBlack,),
               TextsWidget(text: '  Sign up.', fontweight: FontWeight.bold,)
             ],
           ), 
          ),
         
        ],      
      );
  }
}