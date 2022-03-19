import 'package:flutter/material.dart';
import 'info.dart';

void main() => runApp(MyApp());

Color w = Colors.white;
Color b = Colors.black;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Flutter App",
        home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final List<Info> li = [
    Info(name: "Anas:", height: 180, date: DateTime.now()),
    Info(name: "Belal:", height: 175, date: DateTime.now()),
    Info(name: "Tareq:", height: 170, date: DateTime.now()),
    Info(name: "Hathouf:", height: 172, date: DateTime.now()),
    Info(name: "Hamoudeh:", height: 181, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App", style: TextStyle(color: b)),
      ),
      body: Container(
        color: b,
        child: Column(
          children: <Widget>[
            ...li.map((val) {
              return Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text(val.name,
                            style: TextStyle(color: w, fontSize: 35)),
                        Text("${val.height}",
                            style: TextStyle(color: w, fontSize: 30)),
                      ],
                    ),
                    Text("${val.date}",
                        style: TextStyle(color: w, fontSize: 25)),
                  ],
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
