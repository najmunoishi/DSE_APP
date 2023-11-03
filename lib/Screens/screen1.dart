import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
        body: GridView.count(
  padding: EdgeInsets.all(20),
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  crossAxisCount: 2,
    children: List.generate(4, (index) {
       List<Color> colors = [
          Colors.red,
          Colors.blue,
          Colors.green,
          Colors.yellow,
        ];
        int colorIndex = index %colors.length;
              return Container(
      padding: EdgeInsets.all(10),
      // person name, age, dynamic 
      color: colors[colorIndex],
      child: Text("Najmun", style: TextStyle( fontSize: 18, color: Colors.black),),
              );
    // Container(
    //   padding: EdgeInsets.all(10),
    //   color: Colors.amber,
    //   child:  Text("Najmun", style: TextStyle( fontSize: 18, color: Colors.black),),
    // ),
    // Container(
    //   padding:  EdgeInsets.all(10),
    //   color: Colors.amber,
    //   child:  Text("Najmun", style: TextStyle( fontSize: 18, color: Colors.black),),
    // ),
    // Container(
    //   padding: EdgeInsets.all(10),
    //   color: Colors.lime,
    //   child:  Text("Najmun",style: TextStyle( fontSize: 18, color: Colors.black),),
    // ),
    // Container(
    //   padding:  EdgeInsets.all(10),
    //   color: Colors.lime,
    //   child: Text("Najmun",style: TextStyle( fontSize: 18, color: Colors.black),),
    // ),
    // Container(
    //   padding: EdgeInsets.all(10),
    //   color: Colors.amber,
    //   child: Text("Najmun",style: TextStyle( fontSize: 18, color: Colors.black),),
    // ),
    }
),
        ),
    );

  }
}