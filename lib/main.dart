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
      '',
    ];
    final List resposta1 = [
      'Brasil',
      '2003',
      '100 a.c',
      '',
    ];
    final List resposta2 = [
      'Inglaterra',
      'Depois da terceira',
      '1936',
      '',
    ];
    final List resposta3 = [
      'Vaticano',
      '1945',
      'Ontem',
      '',
    ];
    final List resposta4 = [
      'Congo',
      'Irineu',
      'Antes do Estado Velho',
      '',
    ];

    final List respostasCertas = [
      'Inglaterra',
      '1945',
      '1936',
      '',
    ];

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
            //parte blueGrey arredondada
            width: double.infinity,
            height: 900,
            margin: const EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              color: Colors.blueGrey[900],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Questao(lista[
                    indice]), //construtor que chama as questões da lista de acordo com o indice
                const SizedBox(height: 20),
                Row(
                  //as duas primeiras questôes
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      //respota1
                      style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(
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
                      child: Text(resposta1[indice]),
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
                      child: Text(resposta2[indice]),
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
                        minimumSize:
                            MaterialStateProperty.all(const Size(175, 40.0)),
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
                      child: Text(resposta3[indice]),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      //resposta 4
                      style: ButtonStyle(
                          minimumSize:
                              MaterialStateProperty.all(const Size(175, 40.0)),
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 8, 119, 210))),
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
                      child: Text(resposta4[indice]),
                    ),
                  ],
                ),
                const SizedBox(height: 00),
                Container(
                  color: Colors.black,
                  child: Row(
                    children: [
                      Text(
                        'Acertos: $contadorRespostasCertas',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      const SizedBox(width: 150,),
                      Text(
                        'Erros: $contadorRespostasErradas',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
