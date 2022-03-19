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
    Info(name: "osama:", height: 178, date: DateTime.now()),
    Info(name: "motaz:", height: 184, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App", style: TextStyle(color: b)),
      ),
      body: Container(
        color: b,
        child: ListView.builder(
          itemCount:li.length ,
          itemBuilder: (ctx,index){
            return  Padding(
              padding: EdgeInsets.all(4.0),
              child: Card(
                color: Colors.deepOrange,
                shadowColor: Colors.greenAccent,
                elevation: 10,

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(li[index].name,
                              style: TextStyle(color: w, fontSize: 35)),
                          Text("${li[index].height}",
                              style: TextStyle(color: w, fontSize: 30)),
                        ],
                      ),
                      Text("${li[index].date}",
                          style: TextStyle(color: w, fontSize: 25)),
                    ],
                  ),
                ),
              ),
            );
          },

        ),
      ),
    );
  }
}
