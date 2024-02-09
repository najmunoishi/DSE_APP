import 'package:dse/Screens/list_Page.dart';
import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {
  //const MenuTile({Key? key}) : super(key: key);

  final String leadingImage;
  final String titleText;
  final String? trailingImage;

  const MenuTile({
    required this.leadingImage,
    required this.titleText,
    this.trailingImage,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      leading: Image.asset(leadingImage),
      title: Text(titleText),
      trailing: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => List_Page(),));
        },
        child: trailingImage == null
            ? Image.asset(
                'assets/icons/forward.png',
                color: Colors.black,
              )
            : Switch(
                value: true,
                onChanged: (value) {},
              ),
      ),
    );
  }
}
