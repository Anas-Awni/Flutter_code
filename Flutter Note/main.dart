import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static DateTime? _selcetedDate;
  void _datePicker(){
    showDatePicker(
      context: context,
      initialDate: DateTime.utc(2018,2,8),
      firstDate: DateTime(2019),
      lastDate: DateTime.now(),
    ).then((value){
      if(value==null){return;}
      setState(() {
        _selcetedDate=value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter demo app 2"),
      ),

      body: Center(
        child:RaisedButton(
          padding:EdgeInsets.symmetric(vertical: 20,horizontal: 40) ,
          child: Text("${DateFormat.yMMMd().format(_selcetedDate!)}",
              style:TextStyle(color: Colors.white,fontSize: 30)),
          color:Colors.black,
          onPressed:_datePicker,
        ),
      ),
    );
  }
}