import 'dart:async';

import 'package:dse/LogIn/View/login_info_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   iconTheme: const IconThemeData(color: Colors.black54),
      //   elevation: 0,
      // ),
      bottomNavigationBar: Container(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff107036)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LoginInfoScreen()));
                },
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text.rich(
                          TextSpan(
                            text: 'Are you an investor? ',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff717171)),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Investor Signup',
                                  style: TextStyle(
                                    color: Color(0xff107036),
                                    decoration: TextDecoration.underline,
                                  )),
                            ],
                          ),
                        )
                      ]),
                  SizedBox(height: 45),
                ]),
          ])),
      body: Center(
        child: Column(
          //rich text, text span
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Enjoy the open-in mutual fund trading facility just in one app. Sign in now to access all of our features.",
                textAlign: TextAlign.center,
              ),
            )
            // Text.rich(
            //   TextSpan(
            //     style: TextStyle(),
            //     children: <InlineSpan>[
            //       WidgetSpan(
            //         child: Padding(
            //           padding: EdgeInsets.only(left: 10, right: 10),
            //         ),
            //       ),
            //       TextSpan(
            //         text:
            //             "Enjoy the open-in mutual fund trading facility just in one app. Sign in now to access all of our features.",
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
