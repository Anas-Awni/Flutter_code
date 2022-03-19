import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {





    var  questions=['',''];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("AppBar Title :Mafia"),
          ),
          body: Container(
            color: Colors.red,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Mafia party game "),
                Text(" Play "),
                Text(" Tutorial "),
                Text(" Premium "),
                Text(" About us "),

              ],
            ),
          )

      ),
    );
  }
}
