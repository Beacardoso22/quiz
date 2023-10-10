import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 229, 216, 145),
                Color.fromARGB(255, 249, 217, 55),
                Color.fromARGB(255, 45, 107, 231),
                Color.fromARGB(255, 0, 42, 141),
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/logo123.png'),
                ElevatedButton(
                  onPressed: () {
                    print("pressionado");
                    Navigator.pushNamed(context, 'Quiz');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                  ),
                  child: const Text('Jogar', style: TextStyle(fontSize: 50)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}