import 'package:flutter/material.dart';


class LessonOne extends StatelessWidget {
  const LessonOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
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
          color: Colors.deepPurpleAccent,
          child: const Text(" Hello Mafia"),
        ),
      ),
    );
  }
}
