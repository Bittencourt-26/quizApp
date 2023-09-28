import 'package:flutter/material.dart';
import './mainscreen.dart';
import './questionario1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  bool telaInicial = true;
  bool tela2 = false;
  bool tela3 = false;
  bool tela4ou5 = false;
  // Correção aqui
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: telaInicial
              ? Mainscreen(
                  listaDeBotoes: [
                    ElevatedButton(
                      style: const ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(300, 30))),
                      // ir para a tela 2
                      onPressed: () {
                        setState(() {
                          telaInicial = false;
                          tela2 = true;
                        });
                      },
                      child: const Text(
                        'Conhecimentos Gerais',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(Size(300, 30))),
                      // ir para a tela 2
                      onPressed: () {
                        setState(() {
                          telaInicial = false;
                          tela2 = false;
                          tela3 = true;
                        });
                      },
                      child: const Text(
                        'Quiz de futebol',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                )
              : tela2
                  ? Questionario(
                      listaDePerguntas: const [
                        'Qual país iniciou a revolução industrial?',
                        'Quando acabou a segunda guerra mundial?',
                        'Quando foi o golpe do Estado Novo?',
                        'Em que ano foi o golpe militar no Brasil?',
                        'Qual foi o lema da revolução francesa?',
                      ],
                      resposta1: const [
                        'Brasil',
                        '2003',
                        '100 a.c',
                        '1929',
                        'Igualdade, Irmandade e Fraternidade',
                      ],
                      resposta2: const [
                        'Inglaterra',
                        'Depois da terceira',
                        '1936',
                        '1930',
                        'Liberdade, Igualdade e Irmandade',
                      ],
                      resposta3: const [
                        'Vaticano',
                        '1945',
                        'Ontem',
                        '1964',
                        'Liberdade, Igualdade e fraternidade',
                      ],
                      resposta4: const [
                        'Congo',
                        'Irineu',
                        'Antes do Estado Velho',
                        '1985',
                        'Liberdade, Fraternidade e Solidariedade',
                      ],
                      respostasCertas: const [
                        '1945',
                        '1936',
                        '1964',
                        'Liberdade, Igualdade e fraternidade',
                      ],
                      onPressed: (){
                        setState(() {
                          telaInicial = true;
                        });
                      },
                    )
                  : tela3
                      ?  Questionario( /*tela3*/ 
                      listaDePerguntas: const ['Quando o Flamengo foi fundado?'],
                      resposta1: const ['2019'],
                      resposta2: const ['1981'],
                      resposta3: const ['1903'],
                      resposta4: const ['1907'],
                      respostasCertas: const ['1907'],
                      onPressed: (){
                        setState(() {
                          telaInicial = true;
                        });
                      },
                      )
                      : tela4ou5
                          ? const Placeholder() /*tela4*/
                          : const Placeholder() /*tela5*/
          ),
    );
  }
}
