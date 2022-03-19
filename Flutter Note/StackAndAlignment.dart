import 'package:flutter/material.dart';
import 'text.dart';
//you need to import text.dart to use Styles
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter App",
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.teal,
        title: Text(
          "App Bar Title",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
                width: 400,
                height: 400,
                color: Colors.greenAccent,
                child:Column (
                  children :<Widget> [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Text("A",style: s2,),
                        Text("B",style: s2,),
                        Text("H",style: s2,),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Anas",style: s2,),
                        Text("Bol",style: s2,),
                        Text("Hathouf",style: s2,),

                      ],
                    ),

                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
