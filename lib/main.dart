import 'package:flutter/material.dart';
import 'package:flutter_application_1/botao.dart';
import './questoes.dart';
import './telafinal.dart';

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
    ];
    final List resposta2 = [
      'Inglaterra',
      'Depois da terceira',
      '1936',
      '1930',
      'Liberdade, Igualdade e Irmandade',
    ];
    final List resposta3 = [
      'Vaticano',
      '1945',
      'Ontem',
      '1964',
      'Liberdade, Igualdade e fraternidade',
    ];
    final List resposta4 = [
      'Congo',
      'Irineu',
      'Antes do Estado Velho',
      '1985',
      'Liberdade, Fraternidade e Solidariedade',
    ];

    final List respostasCertas = [
      'Inglaterra',
      '1945',
      '1936',
      '1964',
      'Liberdade, Igualdade e fraternidade',
    ];

  void reset() {
    setState(() {
      indice = 0;
      contadorRespostasCertas = 0;
      contadorRespostasErradas = 0;
    });
  }
    bool estaNoLimite() {
      return indice >= lista.length-1;
    }

    funcChecaEIncrementa(String resposta) {
      setState(() {
        if (respostasCertas.contains(resposta)) {
          contadorRespostasCertas++;
        } else {
          contadorRespostasErradas++;
        }
        if (!estaNoLimite()) {
          indice++;
        }
      });
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: !estaNoLimite()
            ? Container(
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
                    Questao(lista[
                        indice]), //construtor que chama as questões da lista de acordo com o indice
                    const SizedBox(height: 20),
                    Row(
                      //as duas primeiras questôes
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BotaoPersonalizado(
                            texto: resposta1[indice],
                            onPressed: () =>
                                funcChecaEIncrementa(resposta1[indice])),
                        const SizedBox(
                          width: 10,
                        ),
                        BotaoPersonalizado(
                            texto: resposta2[indice],
                            onPressed: () =>
                                funcChecaEIncrementa(resposta2[indice]))
                      ],
                    ),
                    Row(
                      //as duas segundas quuestôes
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BotaoPersonalizado(
                            texto: resposta3[indice],
                            onPressed: () =>
                                funcChecaEIncrementa(resposta3[indice])),
                        const SizedBox(
                          width: 10,
                        ),
                        BotaoPersonalizado(
                            texto: resposta4[indice],
                            onPressed: () =>
                                funcChecaEIncrementa(resposta4[indice])),
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
              )
            : TelaFinal(
                tamanhoDaLista: lista.length,
                acertos: contadorRespostasCertas,
                erros: contadorRespostasErradas,
                reinicia: reset,
              ),
      ),
    );
  }
}
