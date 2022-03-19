import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'info.dart';

void main() => runApp(MyApp());

Color w = Colors.white;
Color b = Colors.black;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.green,
            accentColor: Colors.tealAccent,
            fontFamily: 'Quicksand',
            appBarTheme: AppBarTheme(
                textTheme: ThemeData.light().textTheme.copyWith(
                    subtitle1:TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 20,
                      color: w,
                    )
                )
            )
        ),
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

  void x(BuildContext ctx) {
    showModalBottomSheet(context: ctx, builder: (_) {
      return ListView.builder(
        itemCount: li.length,
        itemBuilder: (_, index) {
          return Container(
            color:Colors.white,
            padding: EdgeInsets.all(4.0),
            child: Card(
              color: Theme.of(ctx).primaryColor,
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
                          style:Theme.of(ctx).textTheme.subtitle1,),
                        Text("${li[index].height}",
                            style: TextStyle(color: w, fontSize: 30)),
                      ],
                    ),
                    Text("${DateFormat().format(li[index].date)}",
                        style: TextStyle(color: w, fontSize: 25)),
                  ],
                ),
              ),
            ),
          );
        },
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App" , style: TextStyle(color: b,)),
      ),
      body: Container(
          height: double.infinity,
          color: b,
          //images code here
          child:Column(
            children: <Widget>[
              Image.network(
                "http://3.bp.blogspot.com/-yACFrvJru6g/Ty1SlvkEpcI/AAAAAAAABRU/3IpaZKokk2k/s1600/Mafia_2_wallpaper.jpg",
                fit: BoxFit.cover,
              ),
              Image.asset("asset/images/mafia2.jpg",fit:BoxFit.fill , height: 325,),
            ],
          )

      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: ()=>x(context),
      ),
    );
  }
}