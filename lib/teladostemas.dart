import 'package:flutter/material.dart';
import 'botaodateladostemas.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class TelaDosTemas extends StatefulWidget {
  final List<BotaoDaTelaDosTemas> listaDeBotoes;
  final VoidCallback? botaoVoltar;
  const TelaDosTemas(
      {required this.listaDeBotoes, required this.botaoVoltar, super.key});

  @override
  State<TelaDosTemas> createState() => _MainscreenState();
}

class _MainscreenState extends State<TelaDosTemas> {
  var id = "ca-app-pub-3940256099942544/6300978111";
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
      height: double.infinity,
      margin: const EdgeInsets.only(top: 50),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.black,
      ),
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'Temas disponíveis no momento:',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(blurRadius: 10, color: Colors.blue),
                Shadow(blurRadius: 10, color: Colors.blue),
                Shadow(blurRadius: 10, color: Colors.blue),
              ],
            ),
          ),
          const Text(
            '*Recomende novos temas comentando na Play Store',
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.bold,
              shadows: [
                Shadow(blurRadius: 10, color: Colors.blue),
                Shadow(blurRadius: 10, color: Colors.blue),
                Shadow(blurRadius: 10, color: Colors.blue),
              ],
            ),
          ),
          Container(
            height: 480,
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
            margin: const EdgeInsets.fromLTRB(3, 20, 3, 0),
            decoration: BoxDecoration(
              color: Colors.black,
              boxShadow: const [
                BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 5,
                  color: Colors.blue
                )
              ],
              borderRadius: BorderRadius.circular(10),
                border: Border.all(
              color: Colors.white,
              width: 2,
            )),
            child: NestedScrollView(
              controller:
                  ScrollController(), // Adicione um ScrollController se necessário
              physics:
                  const BouncingScrollPhysics(), // Física de rolagem desejada
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return <Widget>[];
              },
              body: SingleChildScrollView(
                controller: ScrollController(),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(), // Importante
                  itemCount: widget.listaDeBotoes.length,
                  itemBuilder: (context, index) {
                    return widget.listaDeBotoes[index];
                  },
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: widget.botaoVoltar,
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
          const SizedBox(height: 20),
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
