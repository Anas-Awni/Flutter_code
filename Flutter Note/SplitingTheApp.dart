import 'package:flutter/material.dart';
import 'text.dart';

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
        margin: EdgeInsets.all(18.0),
        padding: EdgeInsets.all(18.0),
        //margin: EdgeInsets.fromLTRB(10,20,10,20),
        // margin: EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
        //margin: EdgeInsets.all(8.0),
        color: Colors.red,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:

              MyText("ANAS",s,),
            ),
            Padding(
              padding:  EdgeInsets.all(8.0),
              child: MyText("BOL",s2,),
            ),
          ],
        ),
      ),
    );
  }
}







/*
// text.dart
import 'package:flutter/material.dart';

TextStyle s=  TextStyle(
  color: Colors.white,
  fontSize: 35,
);
TextStyle s2=  TextStyle(
  color: Colors.black,
  fontSize: 35,
);

class MyText extends StatelessWidget{
String _text;
TextStyle _textStyle;

  MyText(this._text,this._textStyle);

  @override
  Widget build(BuildContext context) {
return Text(_text, style: _textStyle,);
  }


}
 */