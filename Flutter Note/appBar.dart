import 'package:flutter/material.dart';


class LessonOne extends StatelessWidget {
  const LessonOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:  Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.videogame_asset) ,
          title: const Text("Home Page"),
          actions: const [
            Icon(Icons.facebook_sharp) ,
            Icon(Icons.share) ,
            Icon(Icons.update_rounded) ,

          ],
        ),
        body: const Center(
          child:  Text(" Hello Mafia"),
        ),
      ),
    );
  }
}
