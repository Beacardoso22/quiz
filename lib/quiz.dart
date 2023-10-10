import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int perguntanumero = 1; 

  @override
  Widget build(BuildContext context) {
   
    final List quiz = [
      {
        'pergunta': 'Quantos jogadores compõem uma equipe \n de vôlei em quadra durante um jogo?',
        'respostas': [
          '5 jogadores',
          '6 jogadores',
          '7 jogadores',
          '8 jogadores',
        ],
        'alternativa_correta': 1,
      },
      {
        'pergunta':'Quantos toques a equipe tem para passar a bola por cima da rede durante uma jogada?',
        'respostas': [
          '1 toque'
          '2 toques'
          '3 toques'
          '4 toques',
        ],
        'alternativa_correta':3,
      },
      { 'pergunta':'Qual é a altura da rede no vôlei masculino?',
        'respostas': [
          '2,20 metros'
          '2,24 metros'
          '2,30 metros'
          '2,43 metros',
        ],
        'alternativa_correta':4,
        },
        {'pergunta':'  Quem criou o vôlei',
        'respostas': [
          'Jair Bolsonaro'
          'William G.Morgan'
          'tik tok'
          'Eliot Bitencour',
        ],
        'alternativa_correta':2,
        },
        {'pergunta':'Quem é o treinador de vôlei do Ifro?',
        'respostas': [
          'Iranira'
          'Cleyton'
          'Juarez'
          'Olakson',
        ],
        'alternativa_correta':3,
        },
        { 'pergunta':'Qual é a altura da rede no vôlei feminino?',
        'respostas': [
          '2 metros'
          '2,05 metros'
          '4,55 metros'
          '2,24 metros',
        ],
        'alternativa_correta':4,
        },
        {'pergunta':'Qual a função principal de um líbero em uma quadra de vôlei?',
        'respostas': [
          'Dançar Zumba'
          'Atacar a bola na Rede'
          'Receber saques e ataques'
          'Ser treinador',
        ],
        'alternativa_correta':3,
        },
        {'pergunta':'Em que país o vôlei foi originalmente inventado?',
        'respostas': [
          'Japão'
          'Brasil'
          'Estados Unidos'
          'Venezuela',
        ],
        'alternativa_correta':3,
        },
        {'pergunta':'Quem é resposável por usar uma camisa de cor diferente dos outros jogadores em uma equipe de vôlei?',
        'respostas': [
          'Juarez'
          'Líbero'
          'Oposto'
          'Levantador',
        ],
        'alternativa_correta':2,
        },
        {'No vôlei o jogador que parte do corpo para jogar?'
        'respostas' : [
          'bunda'
          'cotovelo'
          'estomago'
          'mão'
        ]
        }
    ];
    print('Dados do quiz');
    print(quiz);

    int perguntanumero = 1;
    

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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                  child: Text('Pergunta $perguntanumero de ${quiz.length}',
                      style: const TextStyle(fontSize: 20),
                  ),
                ),

                Text(
                  'Pergunta:\n\n ${quiz[perguntanumero - 1]['pergunta']}',
                  style: const TextStyle(fontSize: 20),
                ),

                ElevatedButton(
                  onPressed: () {
                    print("pressionado 1");
                  
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                  ),
                  child: Text(

                    quiz[perguntanumero - 1]['respostas'][0],
                     style: const TextStyle(fontSize: 20)),
                ),

                ElevatedButton(
                  onPressed: () {
                    print("pressionado 2");
                    
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                  ),

                  child: Text(
                    quiz[perguntanumero - 1]['respostas'][1],
                   style: const TextStyle(fontSize: 20)),
                ),

                ElevatedButton(
                  onPressed: () {
                    print("pressionado 3");
       
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                  ),
                  child: Text(
                    quiz[perguntanumero - 1]['respostas'][2],
                   style: const TextStyle(fontSize: 20)),
                ),

                ElevatedButton(
                  onPressed: () {
                    print("pressionado 4");
               
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
                  ),
                  child: Text(quiz[perguntanumero - 1]['respostas'][3], style: const TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}