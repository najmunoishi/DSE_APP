import 'dart:async';

import 'package:dse/LogIn/View/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => LoginScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              
                Text(
                  'Powered By',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff717171),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Image.asset(
                  'assets/images/QFL Logo White 1.png',
                ),
              ],
            ),
            SizedBox(height: 26),
            Text(
              'Current Version 1.23.021',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff717171),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 26,
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/dse_logo.png',
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Dhaka Stock Exchange',
              style: TextStyle(
                fontSize: 20,
                color: Color(0xff107036),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
