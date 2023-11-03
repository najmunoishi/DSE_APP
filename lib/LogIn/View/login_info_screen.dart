import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../Constant/color.dart';
import 'investor_signup_screen.dart';

class LoginInfoScreen extends StatefulWidget {
  LoginInfoScreen({Key? key}) : super(key: key);

  @override
  _LoginInfoScreen createState() => _LoginInfoScreen();
}

class _LoginInfoScreen extends State<LoginInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                  child: Text('Login Now'),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Kcolor.primaryColor),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LoginInfoScreen()));
                  },
                ),
              ),
              Row(children: <Widget>[
                Row(children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Are you an investor? ',
                      style: TextStyle(fontSize: 14, color: Color(0xff717171)),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Investor Signup',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        InvestorSignupScreen()));
                              },
                            style: TextStyle(
                              color: Color(0xff107036),
                              decoration: TextDecoration.underline,
                            )),
                      ],
                    ),
                  )
                ]),
                SizedBox(height: 45),
              ])
            ])),
        body: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 110),
                    Image.asset(
                      'assets/images/dse_logo.png',
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Welcome to OCS',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Enjoy the open-in mutual fund trading facility just in one app. Sign in now to access all of our features.",
                      style: TextStyle(color: Color(0xff717171)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text("Username", style: TextStyle(color: Colors.black)),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Password", style: TextStyle(color: Colors.black)),
                        Text("Forgot Password?",
                            style: TextStyle(color: Kcolor.primaryColor)),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6)),
                      ),
                    ),
                  ]),
            )));
  }
}
