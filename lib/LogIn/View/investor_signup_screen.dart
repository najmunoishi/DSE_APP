import 'package:dse/Screens/screen1.dart';
import 'package:dse/Screens/screen2.dart';
import 'package:dse/Screens/screen3.dart';
import 'package:dse/Screens/screen4.dart';
import 'package:dse/Screens/screen5.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Constant/color.dart';
import 'login_info_screen.dart';

class InvestorSignupScreen extends StatefulWidget {
  InvestorSignupScreen({Key? key}) : super(key: key);

  @override
  _InvestorSignupScreen createState() => _InvestorSignupScreen();
}

class _InvestorSignupScreen extends State<InvestorSignupScreen> {
  int myIndex = 0;
  final List<Widget> pages = [
    HomeScreen(),
    MyOrderScreen(),
    BuyandSell(),
    Funds(),
    Menu(),
  ];
  final List<String> titles = [
    "Home",
    "My Orders",
    "Buy & Sell",
    "Funds",
    "Menu",
  ];
  void onTabTapped(int index) {
    setState(() {
      myIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "${titles[myIndex]}",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: pages[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: myIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "My Orders",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sell),
            label: "Buy & Sell",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: "Funds",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "Menu",
          ),
        ],
      ),
    );
  }
}
