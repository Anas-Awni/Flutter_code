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
  bool passwordVisible=true;


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
            Icon(Icons.facebook_sharp) ,
            Icon(Icons.share) ,
            Icon(Icons.update_rounded) ,

          ],
        ),
        body: Container(
          //color: Colors.deepPurpleAccent,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget> [
                  SizedBox(height: 40),
                  Container(
                    margin: EdgeInsets.all(5.0) ,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Text Field",
                        labelStyle: TextStyle(fontSize: 25),
                        hintText: "Enter Text here",
                        hintStyle: TextStyle(fontSize: 15),


                      ),
                      keyboardType: TextInputType.text,

                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0) ,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: " Name",
                        labelStyle: TextStyle(fontSize: 25),
                        hintText: "Enter  name here",
                        hintStyle: TextStyle(fontSize: 15),
                        prefixIcon: Icon(Icons.person_outline),


                      ),
                      keyboardType: TextInputType.text,

                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0) ,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        labelStyle: TextStyle(fontSize: 25),
                        hintText: "Enter Email here",
                        hintStyle: TextStyle(fontSize: 15),
                        prefixIcon: Icon(Icons.alternate_email),


                      ),
                      keyboardType: TextInputType.emailAddress,

                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0) ,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(fontSize: 25),
                          hintText: "Enter Your password here",
                          hintStyle: TextStyle(fontSize: 15),
                          prefixIcon: IconButton(
                            icon:Icon(
                                passwordVisible? Icons.visibility:Icons.visibility_off
                            ),
                            onPressed:() {
                              setState(() {
                                passwordVisible=!passwordVisible;
                              });
                            },
                          )
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: passwordVisible,


                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5.0) ,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: "Phone Number",
                          labelStyle: TextStyle(fontSize: 25),
                          hintText: "Enter Phone number here",
                          hintStyle: TextStyle(fontSize: 15),
                          prefixIcon: Icon(Icons.local_phone_rounded,color:Colors.blue,)


                      ),
                      keyboardType: TextInputType.number,

                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            )

        ),
      ),
    );
  }
}
