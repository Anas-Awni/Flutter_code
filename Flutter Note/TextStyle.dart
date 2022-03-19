import 'package:flutter/material.dart';

class LessonOne extends StatelessWidget {
  const LessonOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.videogame_asset),
          title: const Text("Home Page"),
          actions: const [
            Icon(Icons.facebook_sharp),
            Icon(Icons.share),
            Icon(Icons.update_rounded),
          ],
        ),
        body: Text(
          " Hello Mafia",
          style: TextStyle(
            color: Colors.redAccent,
            //backgroundColor: Colors.black,
            fontSize: 40,
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.italic,
            letterSpacing: 7,
            wordSpacing: 30,
            height: 2,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(2.0, 9.0),
                blurRadius: 18,
                color: Colors.black,
              ),
              Shadow(
                offset: Offset(2.0, 9.0),
                blurRadius: 18,
                color: Colors.black,
              )
            ],
            decoration: TextDecoration.combine(
                [TextDecoration.underline, TextDecoration.overline]),
            decorationColor: Colors.black,
            decorationStyle: TextDecorationStyle.double,
            decorationThickness: 2,
          ),
        ),
      ),
    );
  }
}
