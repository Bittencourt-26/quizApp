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
                              certas: const [
                                'Inglaterra',
                                '1945',
                                '1936',
                                '1964',
                                'Igualdade, Liberdade e Fraternidade',
                              ],
                              erradas1: const [
                                'Cuba',
                                'Depois da terceira',
                                '1900',
                                '1930',
                                'Liberdade, Igualdade e Irmandade',
                              ],
                              erradas2: const [
                                'Vaticano',
                                '1999',
                                'Ontem',
                                '1905',
                                'Liberdade, saco e fraternidade',
                              ],
                              erradas3: const [
                                'Congo',
                                'Irineu',
                                'Antes do Estado Velho',
                                '1985',
                                'Liberdade, Fraternidade e Solidariedade',
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
                                  certas: const ['2019'],
                                  erradas1: const ['1895'],
                                  erradas2: const ['1903'],
                                  erradas3: const ['1981'],
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
