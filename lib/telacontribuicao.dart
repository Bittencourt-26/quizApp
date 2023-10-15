import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class TelaContribuicao extends StatefulWidget {
  final VoidCallback voltarParaMainScreen;
  const TelaContribuicao({required this.voltarParaMainScreen, super.key});

  @override
  State<TelaContribuicao> createState() => _TelaContribuicaoState();
}

class _TelaContribuicaoState extends State<TelaContribuicao> {
  var id = "ca-app-pub-1039297974244215/5693286202";
  @override
  void initState() {
    super.initState();
    initBannerAd();
  }

  late BannerAd bannerAd;
  bool isAdLoaded = false;

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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(2, 0, 0, 0),
      child: Column(
        children: [
          const SizedBox(height: 50),
          Text(
            'Contribuir',
            style: GoogleFonts.fjallaOne(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  const Shadow(color: Colors.blue, blurRadius: 50),
                  const Shadow(color: Colors.blue, blurRadius: 50),
                  const Shadow(color: Colors.blue, blurRadius: 50)
                ]),
          ),
          const SizedBox(height: 3),
          const Row(
            children: [
              Text(
                //h1
                'Por que contribuir?',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(color: Colors.blue, blurRadius: 20),
                      Shadow(color: Colors.blue, blurRadius: 20),
                      Shadow(color: Colors.blue, blurRadius: 20)
                    ]),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 11),
            child: const Text(
              'O QuizMultiTema foi desenvolvido de forma independente, mas o que isso significa? Significa que não há uma grande empresa com estoque de recursos por trás do jogo, apenas um desenvolvedor, uma ideia e muita disposição.',
              softWrap: true,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Text(
                //h1
                'Comor se tornar um contribuinte?',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(color: Colors.blue, blurRadius: 20),
                      Shadow(color: Colors.blue, blurRadius: 20),
                      Shadow(color: Colors.blue, blurRadius: 20)
                    ]),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 11),
            child: const Text(
              'Existem diversas formas de se tornar um contribuinte:',
              softWrap: true,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 5),
          const Row(
            children: [
              SizedBox(width: 11),
              Text(
                //h2
                'Avalie o QuizMultiTema na Play Store',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(color: Colors.blue, blurRadius: 17),
                      Shadow(color: Colors.blue, blurRadius: 17),
                      Shadow(color: Colors.blue, blurRadius: 17)
                    ]),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 21),
            child: const Text(
              'A mais comum e eficiente forma de contribuir: Nos avalie positivamente na Play Store: Comente se por acaso surgir um bug no jogo, ideias de atualização e claro, seu nome, para aparecer na nosso espaço dos contribuintes.',
              softWrap: true,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              SizedBox(width: 11),
              Text(
                //h2
                'Divulgue o QuizMultiTema',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(color: Colors.blue, blurRadius: 17),
                      Shadow(color: Colors.blue, blurRadius: 17),
                      Shadow(color: Colors.blue, blurRadius: 17)
                    ]),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 21),
            child: const Text(
              'Outra forma de contribuir com o sucesso do jogo é divulgando o mesmo: Desafie um amigo para ver quem termina um nível (ou todos) mais rápido, fale sobre o QuizMultiTema nas redes sociais... ',
              softWrap: true,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 7),
          const Row(
            children: [
              SizedBox(width: 11),
              Text(
                //h2
                'Seja um parceiro',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(color: Colors.blue, blurRadius: 17),
                      Shadow(color: Colors.blue, blurRadius: 17),
                      Shadow(color: Colors.blue, blurRadius: 17)
                    ]),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 21),
            child: const SelectableText(
              'Toda boa equipe precisa de: Desenvolvedores, Social Media, testers e muitas outras funções. Entre em contato pelo e-mail contato.bittencourts@gmail.com',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 4),
          const Row(
            children: [
              SizedBox(width: 11),
              Text(
                //h2
                'Doação',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(color: Colors.blue, blurRadius: 17),
                      Shadow(color: Colors.blue, blurRadius: 17),
                      Shadow(color: Colors.blue, blurRadius: 17)
                    ]),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 21),
            child: const SelectableText(
              'Sabia que para cada 1 real doado, em média 10 novas pessoas conhecem o QuizMultiTema? Entre em contato: contato.bittencourts@gmail.com',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
            onPressed: widget.voltarParaMainScreen,
            child: const Text(
              'Voltar?',
              style: TextStyle(color: Colors.blue, fontSize: 17, shadows: [
                Shadow(
                  color: Colors.blue,
                  blurRadius: 7,
                ),
                Shadow(
                  color: Colors.blue,
                  blurRadius: 7,
                ),
              ]),
            ),
          ),
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
