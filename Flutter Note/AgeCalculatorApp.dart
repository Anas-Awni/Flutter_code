import 'package:app01/Lesson_Two.dart';
import 'package:app01/age.dart';
import 'package:app01/lesson_one.dart';
import 'package:flutter/material.dart';
import 'package:app01/TextFieldP1.dart';
// you need to import age.dart to use the function
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var b = Colors.black;
  var w = Colors.white;
  var r = Colors.red;
  var bl = Colors.blue;
  var g = Colors.green;
  var br = Colors.brown;
  int str = 0;
  var myController = TextEditingController();
  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          leading: const Icon(
            Icons.videogame_asset,
            color: Colors.red,
          ),
          title: const Text("Age Calculator"),
          actions: const [
            Icon(Icons.facebook_sharp),
            Icon(Icons.share),
            Icon(Icons.update_rounded),
          ],
        ),
        body: Container(
            height: double.infinity,
            color: b,
            //color: Colors.deepPurpleAccent,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 40),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: b,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: g),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        labelText: "Birth Year",
                        labelStyle: TextStyle(
                          fontSize: 25,
                          color: g,
                        ),
                        hintText: "Enter Your Birth Year",
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: w,
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          color: bl,
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        color: w,
                      ),
                      controller: myController ,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: RaisedButton(
                      child: Text(
                        "Get Value",
                        style: TextStyle(fontSize: 30),
                      ),
                      onPressed: () => setState(() {

                        AgeCalculator(int.parse(myController.text));
                        str =AgeCalculator.age;
                      }),
                      color: g,
                      textColor: b,
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: Text("your age is $str years old ",
                      style: TextStyle(fontSize:20, color: w,),

                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: w,
          onPressed: () => setState(() {
            b = b == Colors.black ? Colors.white : Colors.black;
            w = w == Colors.white ? Colors.black : Colors.white;
          }),
        ),
      ),
    );
  }
}
