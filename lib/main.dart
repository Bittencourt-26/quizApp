import 'package:flutter/material.dart';
import 'package:flutter_application_1/botaodateladostemas.dart';
import './teladostemas.dart';
import './questionario1.dart';
import './maincreen.dart';
import './telacontribuicao.dart';

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
  bool tela2TelaDosTemas = false;
  bool telaContribuicao = false;
  bool tela3TelaConhecimentosGerais = false;
  bool tela4ou5TelaFutebolOuHistoria = false;
  // Correção aqui
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: telaInicial
              ? MainScreen(
                  parametroOnPressed1: () {
                    setState(() {
                      telaInicial = false;
                      tela2TelaDosTemas = true;
                    });
                  },
                  parametroOnPressed2: () {
                    setState(() {
                      telaInicial = false;
                      tela2TelaDosTemas = false;
                      telaContribuicao = true;
                    });
                  },
                )
              : tela2TelaDosTemas
                  ? TelaDosTemas(
                    botaoVoltar: () {
                      setState(() {
                        telaInicial = true;
                      });
                    },
                    listaDeBotoes: [
                        BotaoDaTelaDosTemas(
                          parametroOnPressed: () {
                            setState(() {
                              telaInicial = false;
                              tela2TelaDosTemas = false;
                              tela3TelaConhecimentosGerais = true;
                            });
                          },
                          texto: 'Conhecimentos Gerais',
                        ),
                        BotaoDaTelaDosTemas(
                          parametroOnPressed: () {
                            setState(() {
                              telaInicial = false;
                              tela2TelaDosTemas = false;
                              tela3TelaConhecimentosGerais = false;
                              tela4ou5TelaFutebolOuHistoria = true;
                            });
                          },
                          texto: 'Quiz de Futebol',
                        )
                      ],
                    )
                  : telaContribuicao
                      ? const TelaContribuicao()
                      : tela3TelaConhecimentosGerais
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
                                'Inglaterra'
                                '1945',
                                '1936',
                                '1964',
                                'Liberdade, Igualdade e fraternidade',
                              ],
                              onPressed: () {
                                setState(() {
                                  telaInicial = false;
                                  tela2TelaDosTemas = true;
                                });
                              },
                            )
                          : tela4ou5TelaFutebolOuHistoria
                              ? Questionario(
                                  /*tela4*/
                                  listaDePerguntas: const [
                                    'Quando o Flamengo foi fundado?'
                                  ],
                                  resposta1: const ['2019'],
                                  resposta2: const ['1895'],
                                  resposta3: const ['1903'],
                                  resposta4: const ['1981'],
                                  respostasCertas: const ['1907'],
                                  onPressed: () {
                                    setState(() {
                                      telaInicial = false;
                                      tela2TelaDosTemas = true;
                                    });
                                  },
                                )
                              : const Placeholder() /*tela5*/
          ),
    );
  }
}
