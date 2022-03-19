import 'package:flutter/material.dart';

class LessonOne extends StatelessWidget {
  const LessonOne({Key? key}) : super(key: key);

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
            alignment: Alignment.center,
            color: Colors.greenAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(" The Mafia"),
                    Text("  Anas"),
                    Text("  Belal"),
                    Text("  Tareq"),
                  ],
                ),
                Row(
                  children: [
                    TextButton(onPressed: () {}, child: const Text('NEW')),
                    OutlinedButton(
                        onPressed: () {}, child: const Text('UPDATE')),
                    ElevatedButton(
                        onPressed: () {}, child: const Text('DELETE')),
                  ],
                ),
                Row(
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                      label: const Text('NEW'),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.update),
                      label: const Text('UPDATE'),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.delete),
                      label: const Text('DELETE'),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
