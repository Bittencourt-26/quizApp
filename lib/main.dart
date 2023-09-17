import 'package:flutter/material.dart';
import './questoes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int indice = 0;
  int contadorRespostasCertas = 0;
  int contadorRespostasErradas = 0;

  // Correção aqui
  @override
  Widget build(BuildContext context) {
    final lista = [
      'Qual país iniciou a revolução industrial?',
      'Quando acabou a segunda guerra mundial?',
      'Quando foi o golpe do Estado Novo?',
      'Em que ano foi o golpe militar no Brasil?',
      'Qual foi o lema da revolução francesa?',
      '',
    ];
    final List resposta1 = [
      'Brasil',
      '2003',
      '100 a.c',
      '1929',
      'Igualdade, Irmandade e Fraternidade',
      '',
    ];
    final List resposta2 = [
      'Inglaterra',
      'Depois da terceira',
      '1936',
      '1930',
      'Liberdade, Igualdade e Irmandade',
      '',
    ];
    final List resposta3 = [
      'Vaticano',
      '1945',
      'Ontem',
      '1964',
      'Liberdade, Igualdade e fraternidade',
      '',
    ];
    final List resposta4 = [
      'Congo',
      'Irineu',
      'Antes do Estado Velho',
      '1985',
      'Liberdade, Fraternidade e Solidariedade',
      '',
    ];

    final List respostasCertas = [
      'Inglaterra',
      '1945',
      '1936',
      '1964',
      'Liberdade, Igualdade e fraternidade',
    ];
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          //parte blueGrey arredondada
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.only(top: 50),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            color: Colors.blueGrey[900],
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 300,
              ),
              Questao(lista[indice]), //construtor que chama as questões da lista de acordo com o indice
              const SizedBox(height: 20),
              Row(
                //as duas primeiras questôes
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    //resposta1
                    style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                          const Size(175, 40.0),
                        ),
                        maximumSize: MaterialStateProperty.all(
                          const Size(175, 40.0),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 8, 119, 210))),
                    onPressed: () => setState(() {
                      if (respostasCertas.contains(resposta1[indice])) {
                        contadorRespostasCertas++;
                      } else {
                        contadorRespostasErradas++;
                      }
                      if (indice < lista.length) {
                        indice++;
                      }
                    }),
                    child: Container(
                      alignment: Alignment.center,
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Text(
                            resposta1[indice],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize:
                                    constraints.maxWidth >= 175 ? 16 : 13),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    //resposta 2
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                        const Size(175, 40.0),
                      ),
                      maximumSize: MaterialStateProperty.all(
                        const Size(175, 40.0),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 8, 119, 210),
                      ),
                    ),
                    onPressed: () => setState(() {
                      if (respostasCertas.contains(resposta2[indice])) {
                        contadorRespostasCertas++;
                      } else {
                        contadorRespostasErradas++;
                      }
                      if (indice < lista.length) {
                        indice++;
                      }
                    }),
                    child: Container(
                      alignment: Alignment.center,
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Text(
                            resposta2[indice],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize:
                                    constraints.maxWidth >= 175 ? 16 : 13),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                //as duas segundas quuestôes
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    // resposta 3
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                        const Size(175, 40.0),
                      ),
                      maximumSize: MaterialStateProperty.all(
                        const Size(175, 40.0),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 8, 119, 210),
                      ),
                    ),
                    onPressed: () => setState(() {
                      if (respostasCertas.contains(resposta3[indice])) {
                        contadorRespostasCertas++;
                      } else {
                        contadorRespostasErradas++;
                      }
                      if (indice < lista.length) {
                        indice++;
                      }
                    }),
                    child: Container(
                      alignment: Alignment.center,
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Text(
                            resposta3[indice],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize:
                                    constraints.maxWidth >= 175 ? 16 : 13),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    //resposta 4
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(
                        const Size(175, 40.0),
                      ),
                      maximumSize: MaterialStateProperty.all(
                        const Size(175, 40.0),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 8, 119, 210),
                      ),
                    ),
                    onPressed: () => setState(() {
                      if (respostasCertas.contains(resposta4[indice])) {
                        contadorRespostasCertas++;
                      } else {
                        contadorRespostasErradas++;
                      }
                      if (indice < lista.length) {
                        indice++;
                      }
                    }),
                    child: Container(
                      alignment: Alignment.center,
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Text(
                            resposta4[indice],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize:
                                    constraints.maxWidth >= 175 ? 16 : 13),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 120),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$contadorRespostasCertas',
                    style: TextStyle(
                      color: Colors.green[900],
                      fontSize: 45,
                    ),
                  ),
                  const SizedBox(width: 200),
                  Text(
                    '$contadorRespostasErradas',
                    style: TextStyle(
                      color: Colors.red[900],
                      fontSize: 45,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
