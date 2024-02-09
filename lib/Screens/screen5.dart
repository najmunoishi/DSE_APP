import 'package:dse/Global/menu_tile.dart';
import 'package:dse/Screens/list_Page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Items {
  final String text;
  final String icon1;
  final String icon2;
  Items(
    this.text,
    this.icon1,
    this.icon2,
  );
}

class Menu extends StatelessWidget {
  final List<Items> menus = [
    Items("My Order", 'assets/icons/my_order.png', 'assets/icons/forward.png'),
    Items("Fund", 'assets/icons/fund.png', 'assets/icons/forward.png'),
    Items("File Directory", 'assets/icons/file_directory.png',
        'assets/icons/forward.png'),
    Items("News", 'assets/icons/news.png', 'assets/icons/forward.png'),
    Items("Market Info", 'assets/icons/market_info.png',
        'assets/icons/forward.png'),
    Items(
        "Protfolio", 'assets/icons/protfolio.png', 'assets/icons/forward.png'),
    Items("SIP", 'assets/icons/sip.png', 'assets/icons/forward.png'),
    Items(
        "Dark Mode", 'assets/icons/dark_mode.png', 'assets/icons/forward.png'),
  ];
  final List<Items> menus2 = [
    Items("My Profile", 'assets/icons/my_profile.png',
        'assets/icons/forward.png'),
    Items("Change Password", 'assets/icons/change_pass.png',
        'assets/icons/forward.png'),
    Items("Logout", 'assets/icons/logout.png', 'assets/icons/forward.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/profile.png',
                  height: 50,
                  width: 50,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Abdullah Al Mahmud",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Client Code: 0006",
                      style: TextStyle(fontSize: 12, color: Color(0xff343434)),
                    ),
                    Text(
                      "TREC Name: TREC Name Here",
                      style: TextStyle(fontSize: 12, color: Color(0xff343434)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
          child: Text(
            "Action Menu",
            style: TextStyle(
              fontSize: 12,
              color: Color(0xff717171),
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
              itemCount: menus.length,
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colors.grey,
                );
              },
              itemBuilder: (context, index) {
                final items = menus[index];
                return MenuTile(
                  leadingImage: items.icon1,
                  titleText: items.text,
                );
              }),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
          child: Text(
            "Account and Security",
            style: TextStyle(
              fontSize: 12,
              color: Color(0xff717171),
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
              itemCount: menus2.length,
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colors.grey,
                );
              },
              itemBuilder: (context, index) {
                final items = menus2[index];
                return MenuTile(
                  leadingImage: items.icon1,
                  titleText: items.text,
                );
              }),
        ),
        Container(
          color: Colors.white,
          child: Row(
            children: [
              Text(
                " Powered By",
                style: TextStyle(fontSize: 12, color: Color(0xff717171)),
              ),
              Image.asset('assets/images/QFL Logo White 1.png'),
            ],
          ),
        ),
      ]),
    );
  }
}
