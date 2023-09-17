import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MybuttonState createState() => _MybuttonState();
}

class _MybuttonState extends State<MyButton> {
  String flu = "Hola,\n Soy Crystian";
  int index = 0;
  List<String> collections = [
    'Estoy',
    'Programando',
    'en Flutter',
    'Genial',
    'NO¿?'
  ];
  void onPresion() {
    setState(() {
      flu = collections[index];
      index = index < 4 ? index + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("Stateful Widget - 200527"),
        backgroundColor: Color.fromARGB(69, 28, 0, 64),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 90),
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFF1C0040),
          Color(0xFF372082),
          Color(0xFF8748C2),
          Color(0xFF6D43AA),
          Color(0xFF220230),
        ], stops: [
          0.2,
          0.4,
          0.6,
          0.7,
          1
        ], begin: Alignment.topRight, end: Alignment.bottomRight)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                flu,
                style: const TextStyle(
                  fontFamily: 'radI',
                  fontSize: 45,
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Color.fromARGB(134, 43, 3, 60)),
                ),
                child: Icon(
                  Icons.touch_app_outlined,
                  size: 52.0,
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
