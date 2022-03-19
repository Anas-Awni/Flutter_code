import 'package:app01/Lesson_Two.dart';
import 'package:app01/lesson_one.dart';
import 'package:flutter/material.dart';
import 'package:app01/TextFieldP1.dart';

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
  var str = "Text Field";
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
          title: const Text("Home Page"),
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
                          borderRadius: BorderRadius.circular(60.0),
                        ),
                        labelText: str,
                        labelStyle: TextStyle(
                          fontSize: 30,
                          color: g,
                        ),
                        hintText: "Enter Text here",
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: w,
                        ),
                      ),
                      maxLines: 2,
                      style: TextStyle(color: w),
                      keyboardType: TextInputType.text,
                      controller: myController,
                    ),
                  ),
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
                        labelText: " Name",
                        labelStyle: TextStyle(
                          fontSize: 25,
                          color: g,
                        ),
                        hintText: "Enter  name here",
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: w,
                        ),
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: bl,
                        ),
                      ),
                      // textAlign: TextAlign.center,
                      style: TextStyle(
                        color: w,
                      ),
                      keyboardType: TextInputType.text,
                    ),
                  ),
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
                        labelText: "Email",
                        labelStyle: TextStyle(
                          fontSize: 25,
                          color: g,
                        ),
                        hintText: "Enter Email here",
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: w,
                        ),
                        prefixIcon: Icon(
                          Icons.alternate_email,
                          color: bl,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        color: w,
                      ),
                    ),
                  ),
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
                          labelText: "Password",
                          labelStyle: TextStyle(
                            fontSize: 25,
                            color: g,
                          ),
                          hintText: "Enter Your password here",
                          hintStyle: TextStyle(
                            fontSize: 15,
                            color: w,
                          ),
                          prefixIcon: IconButton(
                            icon: Icon(
                              passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: bl,
                            ),
                            onPressed: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            },
                          )),
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(
                        color: w,
                      ),
                      obscureText: passwordVisible,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixText: "+962   ",
                        suffixText: "Jordan",
                        fillColor: b,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: g),
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        labelText: "Phone Number",
                        labelStyle: TextStyle(
                          fontSize: 25,
                          color: g,
                        ),
                        hintText: "Enter Phone number here",
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: w,
                        ),
                        prefixIcon: Icon(
                          Icons.local_phone_rounded,
                          color: bl,
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        color: w,
                      ),
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
                        str = myController.text;
                      }),
                      color: g,
                      textColor: b,
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
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
