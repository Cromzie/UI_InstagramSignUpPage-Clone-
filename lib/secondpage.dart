import 'package:flutter/material.dart';
import 'package:instaui/widgets/texts.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      home:
      Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30.0),
              child: Center(
                child: TextsWidget(text: 'Instagram',fontweight: FontWeight.w700 ,fontcolor: kBlack, fontsize: 50.0, fontfamily: 'Satisfy',),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            TextButton.icon(onPressed: (){},      style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(kBorderFillGrey)
              ), icon: Icon(FontAwesomeIcons.facebookSquare, color: kFirstPage,), label: TextsWidget(text: 'Log in with Facebook', fontcolor: kFirstPage.withOpacity(0.4),),),
              h,
              Row(children: [
                Expanded(child: Divider(),),
                smallh,
               TextsWidget(text: '    OR   ', fontcolor: kLightBlack,),
                smallh,
                Expanded(child: Divider(),)
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
                  hintText: 'Mobile Number or Email',
                  hintStyle: TextStyle(color: kLightBlack, fontSize: 13.0),
                  prefixIcon: Icon(FontAwesomeIcons.envelope, color: kFirstPageFill,),
                  filled: true,
                  fillColor: kFirstPage.withOpacity(0.2),
                  border: OutlineInputBorder(),
                ),
              ),
              smallh,
              TextField(
                cursorColor: kBlack,
                style: TextStyle(color: kLightBlack, fontSize: 13.0),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kFirstPage)
                  ),
                  hintText: 'Full Name',
                  hintStyle: TextStyle(color: kLightBlack, fontSize: 13.0),
                  prefixIcon: Icon(FontAwesomeIcons.envelope, color: kFirstPageFill,),
                  filled: true,
                  fillColor: kFirstPage.withOpacity(0.2),
                  border: OutlineInputBorder(),
                ),
              ),
              smallh,
              TextField(
                cursorColor: kBlack,
                style: TextStyle(color: kLightBlack, fontSize: 13.0),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kFirstPage)
                  ),
                  hintText: 'Username',
                  hintStyle: TextStyle(color: kLightBlack, fontSize: 13.0),
                  prefixIcon: Icon(FontAwesomeIcons.envelope, color: kFirstPageFill,),
                  filled: true,
                  fillColor: kFirstPage.withOpacity(0.2),
                  border: OutlineInputBorder(),
                ),
              ),
              smallh,
              TextField(
                cursorColor: kBlack,
                style: TextStyle(color: kLightBlack, fontSize: 13.0),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kFirstPage)
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: kLightBlack, fontSize: 13.0),
                  prefixIcon: Icon(FontAwesomeIcons.envelope, color: kFirstPageFill,),
                  filled: true,
                  fillColor: kFirstPage.withOpacity(0.2),
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              h,
            TextButton(onPressed: (){},      style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(kBorderFillGrey)
              ),child: TextsWidget(text: 'Sign up', fontcolor: kFirstPage.withOpacity(0.4),),),
              SizedBox(height:MediaQuery.of(context).size.height/4.5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextsWidget(text: 'By signing up, you agree to our', fontcolor: kLightBlack,),
                  TextsWidget(text: 'Terms, Data Policy and Cookies Policy', fontcolor: kLightBlack, fontweight: FontWeight.bold,),
                ],
              )
          ],
        ),
      ),
    );
  }
}