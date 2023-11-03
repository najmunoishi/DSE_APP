import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Funds());
}

class Person {
  final String name;
  final String age;
  final String occupation;
  //final Color color;
  Person(
    this.name,
    this.age,
    this.occupation,
    //this.color,
  );
}

class Funds extends StatelessWidget {
  final List<Person> people = [
    Person("Emon", "27", "Engineer"),
    Person("Oishi", "25", "Engineer"),
    Person("Ohona", "20", "Teacher"),
    Person("Ayon", "15", "Vhobogure"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: people.length,
        itemBuilder: (context, index) {
          Color Eocolor= index % 2 == 0 ? Colors.red: Colors.amber;
          // List<Color> colors = [
          //   Colors.red,
          //   Colors.blue,
          //   Colors.green,
          //   Colors.yellow,
          // ];
          // int colorIndex = index % colors.length;
          final person = people[index];
          return Card(
            color: Eocolor,
            //color: person.color,
            margin: EdgeInsets.all(8),
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Name: ${person.name}',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Age: ${person.age}',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text('Occupation: ${person.occupation}',
                      style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
