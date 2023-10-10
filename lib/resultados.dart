import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  const Resultado({Key? key, required this.acertos}) : super(key: key);

  final int acertos;
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
               const Text('Resultado',style: TextStyle(fontSize: 20)),
               Text('Você acertou\n$acertos de 10\nperguntas',style: const TextStyle(fontSize: 20)),
                ElevatedButton(
                  onPressed: () {
                    print("pressionado");
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                  ),
                  child: const Text('Jogar Novamente', style: TextStyle(fontSize: 50)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}