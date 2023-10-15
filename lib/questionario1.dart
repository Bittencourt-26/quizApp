import 'package:flutter/material.dart';
import './questoes.dart';
import 'botaodoquestionario.dart';
import 'dart:math';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class Questionario extends StatefulWidget {
  final List<String> listaDePerguntas;
  final List<String> erradas1;
  final List<String> erradas2;
  final List<String> erradas3;
  final List<String> certas;
  final VoidCallback voltar;
  final String generoDasPerguntas;
  const Questionario({
    required this.listaDePerguntas,
    required this.certas,
    required this.erradas1,
    required this.erradas2,
    required this.erradas3,
    required this.voltar,
    required this.generoDasPerguntas,
    super.key,
  });

  @override
  State<Questionario> createState() => _QuestionarioState();
}

class _QuestionarioState extends State<Questionario> {
  var id = "ca-app-pub-1039297974244215/1479505183";

  late BannerAd bannerAd;
  bool isLoaded = false;

  initBannerAd() {
    bannerAd = BannerAd(
      size: AdSize.largeBanner,
      adUnitId: id,
      listener: BannerAdListener(onAdLoaded: (ad) {
        setState(() {
          isAdLoaded = true;
        });
      }, onAdFailedToLoad: (ad, error) {
        ad.dispose();
      }),
      request: const AdRequest(),
    );
    bannerAd.load();
  }



  var id1 = "ca-app-pub-1039297974244215/8319449540";

  late BannerAd bannerAd1;
  bool isLoaded1 = false;

  initBannerAd1() {
    bannerAd1 = BannerAd(
      size: AdSize.largeBanner,
      adUnitId: id1,
      listener: BannerAdListener(onAdLoaded: (ad) {
        setState(() {
          isLoaded1 = true;
        });
      }, onAdFailedToLoad: (ad, error) {
        ad.dispose();
      }),
      request: const AdRequest(),
    );
    bannerAd1.load();
  }





  @override
  void initState() {
    super.initState();
    initInterstitialAd();
    initBannerAd();
    initBannerAd1();
  }




  var adUnitId = 'ca-app-pub-1039297974244215/9814077198';
  late InterstitialAd interstitialAd;
  bool isAdLoaded = false;

  initInterstitialAd() {
    InterstitialAd.load(
      adUnitId: adUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          interstitialAd = ad;
          setState(() {
            isAdLoaded = true;
          });
          interstitialAd.fullScreenContentCallback = FullScreenContentCallback(
            onAdDismissedFullScreenContent: (ad) {
              initInterstitialAd();
              setState(() {
                contadorRespostasErradas = 0;
              });
            },
            onAdFailedToShowFullScreenContent: (ad, error) {
              ad.dispose();
              setState(() {
                isAdLoaded = false;
              });
            },
          );
        },
        onAdFailedToLoad: ((error) {
          interstitialAd.dispose();
        }),
      ),
    );
  }

  int indice = 0;
  int contadorRespostasCertas = 0;
  int contadorRespostasErradas = 0;
  @override
  Widget build(BuildContext context) {
    List A = [];
    List B = [];
    List C = [];
    List D = [];
    List alternativas = [A, B, C, D];

    for (int i = 0; i < widget.listaDePerguntas.length; i++) {
      bool eNul = false;
      int sorteado1 = Random().nextInt(4);
      alternativas[sorteado1].add(widget.certas[i]);

      while (!eNul) {
        int sorteado2 = Random().nextInt(4);
        if (alternativas[sorteado2].length == i) {
          alternativas[sorteado2].add('${widget.erradas1[i]} ');
          eNul = true;
        }
      }
      eNul = false;
      while (!eNul) {
        int sorteado3 = Random().nextInt(4);
        if (alternativas[sorteado3].length == i) {
          alternativas[sorteado3].add('${widget.erradas2[i]} '); //adicionei esse espaço para garantir que não terá uma certa de outra questão como errada nessa questão
          eNul = true;
        }
      }
      eNul = false;
      while (!eNul) {
        int sorteado = Random().nextInt(4);
        if (alternativas[sorteado].length == i) {
          alternativas[sorteado].add('${widget.erradas3[i]} ');
          eNul = true;
        }
      }
    }

    bool estaNoLimite() {
      return indice >= widget.listaDePerguntas.length;
    }

    funcChecaEIncrementa(String resposta) {
      setState(() {
        if (widget.certas.contains(resposta)) {
          contadorRespostasCertas++;
        } else {
          contadorRespostasErradas++;
        }
        if (!estaNoLimite()) {
          indice++;
        }
      });
    }

    if (contadorRespostasErradas > 4) {
      if (isAdLoaded) {
        interstitialAd.show();
      }
      setState(() {
        indice = 0;
        contadorRespostasErradas = 0;
        contadorRespostasCertas = 0;
      });
    }

    return indice > widget.listaDePerguntas.length -1
        ? Container(
            //tela de parabens
            color: Colors.black,
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 70),
                  const Text(
                    'Parabéns',
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          color: Colors.blue,
                          blurRadius: 20,
                        ),
                        Shadow(
                          color: Colors.blue,
                          blurRadius: 20,
                        ),
                        Shadow(
                          color: Colors.blue,
                          blurRadius: 20,
                        ),
                      ],
                      fontSize: 60,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 150),
                  const Text(
                    'Você venceu a fase:',
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          color: Colors.blue,
                          blurRadius: 20,
                        ),
                        Shadow(
                          color: Colors.blue,
                          blurRadius: 20,
                        ),
                        Shadow(
                          color: Colors.white,
                          blurRadius: 20,
                        ),
                      ],
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    widget.generoDasPerguntas,
                    style: const TextStyle(
                      shadows: [
                        Shadow(
                          color: Colors.red,
                          blurRadius: 20,
                        ),
                        Shadow(
                          color: Colors.white,
                          blurRadius: 20,
                        ),
                        Shadow(
                          color: Colors.red,
                          blurRadius: 20,
                        ),
                      ],
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 185,
                    height: 43,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue,
                          blurRadius: 5,
                          spreadRadius: 3,
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)),
                        fixedSize: const Size(190, 45),
                        backgroundColor: Colors.black,
                        side: const BorderSide(
                          color: Color.fromARGB(255, 255, 255, 255),
                          width: 2,
                        ),
                      ),
                      onPressed: () {
                        widget.voltar();
                        if (isAdLoaded) {
                          interstitialAd.show();
                        }
                        setState(() {
                          isAdLoaded = false;
                          contadorRespostasErradas = 0;
                          indice = 0;
                        });
                      },
                      child: const Text(
                        'Voltar',
                        style: TextStyle(
                          fontSize: 22,
                          shadows: [
                            Shadow(
                              color: Colors.white,
                              blurRadius: 5,
                            ),
                            Shadow(
                              color: Colors.blue,
                              blurRadius: 5,
                            ),
                            Shadow(
                              color: Colors.blue,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 150),
                  isAdLoaded
            ? SizedBox(
                height: bannerAd1.size.height.toDouble(),
                width: bannerAd1.size.width.toDouble(),
                child: AdWidget(ad: bannerAd1),
              )
            : const SizedBox(),
                ],
              ),
            ),
          )
        : Container(
            width: double.infinity,
            height: double.infinity,
            margin: const EdgeInsets.only(top: 50),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              color: Colors.black,
            ),
            child: Column(
              children: [
                const SizedBox(height: 15),
                Row(
                  children: [
                    const SizedBox(width: 15),
                    Text(
                      '${indice + 1}.',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          shadows: [
                            Shadow(
                              color: Colors.blue,
                              blurRadius: 15,
                            ),
                            Shadow(
                              color: Colors.white,
                              blurRadius: 15,
                            ),
                            Shadow(
                              color: Colors.blue,
                              blurRadius: 15,
                            ),
                            Shadow(
                              color: Colors.blue,
                              blurRadius: 15,
                            ),
                          ]),
                    ),
                    const SizedBox(width: 140),
                    Container(
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.blue,
                          blurRadius: 8,
                          spreadRadius: 0.01,
                        )
                      ]),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7)),
                          fixedSize: const Size(135, 40),
                          backgroundColor: Colors.black,
                          side: const BorderSide(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 3,
                          ),
                        ),
                        onPressed: () {
                          if (isAdLoaded) {
                            interstitialAd.show();
                          } else {
                            const AlertDialog(
                              content: Text(
                                  'Anúncio Indisponível ou falha na conexão'),
                            );
                          }
                        },
                        child: LayoutBuilder(
            builder: (context, constraints) {
              return Text(
               'Restaurar Vidas',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style:
                    TextStyle(fontSize: constraints.maxWidth >= 175 ? 18 : 12),
              );
            },
          ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 130,
                ),
                Questao(widget.listaDePerguntas[
                    indice]), //construtor que chama as questões da listaDePerguntas de acordo com o indice
                const SizedBox(height: 40),
                Row(
                  //as duas primeiras questôes
                  children: [
                    const SizedBox(
                      width: 7,
                    ),
                    BotaoPersonalizado(
                        texto: A[indice],
                        onPressed: () => funcChecaEIncrementa(A[indice])),
                    const SizedBox(
                      width: 9,
                    ),
                    BotaoPersonalizado(
                        texto: B[indice],
                        onPressed: () => funcChecaEIncrementa(B[indice]))
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  //as duas segundas questôes
                  children: [
                    const SizedBox(
                      width: 7,
                    ),
                    BotaoPersonalizado(
                        texto: C[indice],
                        onPressed: () => funcChecaEIncrementa(C[indice])),
                    const SizedBox(
                      width: 9,
                    ),
                    BotaoPersonalizado(
                        texto: D[indice],
                        onPressed: () => funcChecaEIncrementa(D[indice])),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    const SizedBox(
                      width: 7,
                    ),
                    const Image(
                      image: AssetImage(
                        'assets/coracaocheio.png',
                      ),
                      width: 26,
                      height: 26,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    contadorRespostasErradas > 3
                        ? Image.asset(
                            'assets/coracaovazio.gif',
                            width: 26,
                            height: 26,
                          )
                        : const Image(
                            image: AssetImage(
                              'assets/coracaocheio.png',
                            ),
                            width: 26,
                            height: 26,
                          ),
                    const SizedBox(
                      width: 2,
                    ),
                    contadorRespostasErradas > 2
                        ? Image.asset(
                            'assets/coracaovazio.gif',
                            width: 26,
                            height: 26,
                          )
                        : const Image(
                            image: AssetImage(
                              'assets/coracaocheio.png',
                            ),
                            width: 26,
                            height: 26,
                          ),
                    const SizedBox(
                      width: 2,
                    ),
                    contadorRespostasErradas > 1
                        ? Image.asset(
                            'assets/coracaovazio.gif',
                            width: 26,
                            height: 26,
                          )
                        : const Image(
                            image: AssetImage(
                              'assets/coracaocheio.png',
                            ),
                            width: 26,
                            height: 26,
                          ),
                    const SizedBox(
                      width: 2,
                    ),
                    contadorRespostasErradas > 0
                        ? Image.asset(
                            'assets/coracaovazio.gif',
                            width: 26,
                            height: 26,
                          )
                        : const Image(
                            image: AssetImage(
                              'assets/coracaocheio.png',
                            ),
                            width: 26,
                            height: 26,
                          ),
                  ],
                ),
                const SizedBox(height: 55),

                TextButton(
                  onPressed: widget.voltar,
                  child: const Text(
                    'Voltar?',
                    style: TextStyle(
                      fontSize: 15,
                      shadows: [
                        Shadow(blurRadius: 2, color: Colors.blue),
                        Shadow(blurRadius: 2, color: Colors.white),
                        Shadow(blurRadius: 2, color: Colors.blue),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 85), 
                isAdLoaded
            ? SizedBox(
                height: bannerAd.size.height.toDouble(),
                width: bannerAd.size.width.toDouble(),
                child: AdWidget(ad: bannerAd),
              )
            : const SizedBox(),
              ],
            ),
          );
  }
}