import 'package:flutter/material.dart';

class LessonOne extends StatelessWidget {
  const LessonOne({Key? key}) : super(key: key);

  buttonOnPressed(msg){
    print(' Button 1 Clicked! $msg');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MAFIA ',
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.black,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.deepPurpleAccent,
          textTheme: ButtonTextTheme.accent,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData
          (style: ButtonStyle(
            backgroundColor:MaterialStateProperty.all(Colors.red) )),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          elevation: 0,
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
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.lightBlueAccent),
                      foregroundColor:
                      MaterialStateProperty.all(Colors.black),
                      padding:
                      MaterialStateProperty.all(const EdgeInsets.all(10)),
                      elevation: MaterialStateProperty.all(0),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    label: const Text('NEW'),
                  ),
                  OutlinedButton.icon(
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(Colors.lightGreen),
                        foregroundColor:
                        MaterialStateProperty.all(Colors.black),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.all(10))),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.update,
                      color: Colors.white,
                    ),
                    label: const Text('UPDATE'),
                  ),
                  ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                      foregroundColor:
                      MaterialStateProperty.all(Colors.black),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.fromLTRB(5, 15, 5, 15)),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                    label: const Text('DELETE'),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed:(){buttonOnPressed('Mafia');},
                      icon: const Icon(Icons.videogame_asset)),
                  IconButton(
                      onPressed: () => print('Button 2 Clicked!'),
                      icon: const Icon(Icons.videogame_asset)),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(label: const Text('add'),
          icon: Icon(Icons.add),
          onPressed: (){},
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.black,
          shape: const RoundedRectangleBorder(
            side: BorderSide(color: Colors.black,width: 5),
          ),
          splashColor: Colors.orange,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
