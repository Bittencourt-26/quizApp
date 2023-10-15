import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class TelaContribuintes extends StatefulWidget {
  final VoidCallback voltarParaMainScreen;
  const TelaContribuintes({
    required this.voltarParaMainScreen,
    super.key,
  });

  @override
  State<TelaContribuintes> createState() => _TelaContribuintesState();
}

class _TelaContribuintesState extends State<TelaContribuintes> {
  var id = "ca-app-pub-1039297974244215/3757388000";
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
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.fromLTRB(30, 20, 10, 0),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Text(
                'Contribuintes',
                style: GoogleFonts.fjallaOne(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    const Shadow(
                      color: Colors.blue,
                      blurRadius: 50
                    ),
                    const Shadow(
                      color: Colors.blue,
                      blurRadius: 50
                    ),
                    const Shadow(
                      color: Colors.blue,
                      blurRadius: 50
                    )
                  ]
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'A aba contribuintes é um espaço especial reservado para agradecer àqueles que, de alguma forma, contribuiram com: a digulgação, o financiamento, a manutenção e/ou desenvolvimento do QuizMultiTema, são eles: ',
                style: GoogleFonts.openSans(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                  onPressed: widget.voltarParaMainScreen,
                  child: const Text(
                    'Voltar?',
                    style: TextStyle(
                      fontSize: 16,
                      shadows: [
                        Shadow(
                          color: Colors.blue,
                          blurRadius: 6
                        ),
                        Shadow(
                          color: Colors.white,
                          blurRadius: 3
                        ),
                      ]
                    ),
                  ),),
                  const SizedBox(height: 5),
                  isAdLoaded
            ? SizedBox(
                height: bannerAd.size.height.toDouble(),
                width: bannerAd.size.width.toDouble(),
                child: AdWidget(ad: bannerAd),
              )
            : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
