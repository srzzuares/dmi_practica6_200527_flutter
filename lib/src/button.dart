import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MybuttonState createState() => _MybuttonState();
}

class _MybuttonState extends State<MyButton> {
  String flu = "hola presiosoooo";
  int index = 0;
  List<String> collections = [
    'YAAAAAA',
    'MAASss',
    'Rapidoooo',
    'Genial',
    'Me corrrooooo '
  ];
  void onPresion() {
    setState(() {
      flu = collections[index];
      index = index < 2 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Widget - 200527"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                flu,
                style: const TextStyle(fontSize: 45),
              ),
              ElevatedButton(
                /* style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 140, 141, 140)),
                ), */
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                child: const Text(
                  "tocame!!!",
                  style: TextStyle(color: Color.fromARGB(255, 7, 255, 81)),
                ),
                onPressed: () {
                  onPresion();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
