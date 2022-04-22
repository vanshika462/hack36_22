import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'screens.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: c4,
          body: Column(
            children: [
              Flexible(
                  child: Center(
                      child: Text('Secure-Us',
                          style: GoogleFonts.cinzelDecorative(
                              fontSize: 55,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)))),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextInputField(
                    icon: FontAwesomeIcons.envelope,
                    hint: 'Email',
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                  ),
                  PasswordInput(
                    icon: FontAwesomeIcons.lock,
                    hint: 'Password',
                    inputAction: TextInputAction.done,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, 'ForgotPassword'),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(fontSize: 20, color: cWhite),
                          ),
                        ),
                        SizedBox( width: 40,),
                      ]
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RawMaterialButton(
                      onPressed: () {/*
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondScreen()),);
                    */},
                    elevation: 4.0,
                    fillColor: Colors.teal,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    padding: EdgeInsets.all(13.0),
                    shape: RoundedRectangleBorder(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Or Login with',
                    style: TextStyle(
                      color: Colors.white, //Color(0xffd700),
                      fontSize: 23,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                          /*Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Facebook()),
                          );*/
                        },
                        icon: Icon(FontAwesomeIcons.facebook),
                        color: Colors.white,
                        iconSize: 55,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Text('|',
                          style: TextStyle(color: Colors.white, fontSize: 45)),
                      SizedBox(
                        width: 25,
                      ),
                      IconButton(
                        onPressed: () {/*
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Gmail()),
                          );*/
                        },
                        icon: Icon(FontAwesomeIcons.google),
                        color: Colors.white,
                        iconSize: 50,
                      ),
                    ],
                  )
                ],
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'CreateNewAccount'),
                child: Container(
                  child: Text(
                    'Create New Account',
                    style: kBodyText,
                  ),
                  decoration: BoxDecoration(
                      border:
                      Border(bottom: BorderSide(width: 1, color: cWhite))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
