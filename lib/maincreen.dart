import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  final VoidCallback? parametroOnPressed1;
  final VoidCallback? parametroOnPressed2;
  final VoidCallback? parametroOnPressed3;
  const MainScreen(
      {required this.parametroOnPressed1,
      required this.parametroOnPressed2,
      required this.parametroOnPressed3,
      super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var adUnit = "ca-app-pub-1039297974244215/8633428281";
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
      adUnitId: adUnit,
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
      margin: const EdgeInsets.only(top: 40),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Colors.black,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 120),
            LayoutBuilder(
              builder: (context, constraints) {
                return Text(
                  'QuizMultiTema',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.fjallaOne(
                   fontSize: constraints.maxWidth >= 3000 ? 60 : 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      const Shadow(
                        color: Colors.blue,
                        blurRadius: 100,
                      ),
                      const Shadow(
                        color: Colors.blue,
                        blurRadius: 100,
                      ),
                      const Shadow(
                        color: Colors.blue,
                        blurRadius: 100,
                      ),
                    ],
                  ),
                );
              },
            ),

            Text(
              'Desafie-se com variedade',
              style: GoogleFonts.fjallaOne(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  const Shadow(
                    color: Colors.blue,
                    blurRadius: 35,
                  ),
                  const Shadow(
                    color: Colors.blue,
                    blurRadius: 35,
                  ),
                  const Shadow(
                    color: Colors.blue,
                    blurRadius: 35,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 110), //espaçamento

            Container(
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.blue,
                  blurRadius: 10,
                  spreadRadius: 1,
                )
              ]),
              child: ElevatedButton(
                // botao jogar
                onPressed: widget.parametroOnPressed1,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  fixedSize: const Size(240, 55),
                  backgroundColor: Colors.black,
                  side: const BorderSide(
                    color: Color.fromARGB(255, 255, 255, 255),
                    width: 3,
                  ),
                ),
                child: const Text(
                  'Jogar',
                  style: TextStyle(
                    fontSize: 23,
                    shadows: [
                      Shadow(
                        color: Colors.white,
                        blurRadius: 7,
                      ),
                      Shadow(
                        color: Colors.blue,
                        blurRadius: 7,
                      ),
                      Shadow(
                        color: Colors.blue,
                        blurRadius: 7,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),
            Container(
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.blue,
                  blurRadius: 10,
                  spreadRadius: 1,
                )
              ]),
              child: ElevatedButton(
                //botao contribuir
                onPressed: widget.parametroOnPressed2,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  fixedSize: const Size(240, 55),
                  backgroundColor: Colors.black,
                  side: const BorderSide(
                    color: Color.fromARGB(255, 255, 255, 255),
                    width: 3,
                  ),
                ),
                child: const Text(
                  'Contribuir',
                  style: TextStyle(
                    fontSize: 23,
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
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.blue,
                  blurRadius: 10,
                  spreadRadius: 1,
                )
              ]),
              child: ElevatedButton(
                //botao contribuir
                onPressed: widget.parametroOnPressed3,
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  fixedSize: const Size(240, 55),
                  backgroundColor: Colors.black,
                  side: const BorderSide(
                    color: Color.fromARGB(255, 255, 255, 255),
                    width: 3,
                  ),
                ),
                child: const Text(
                  'Contribuintes',
                  style: TextStyle(
                    fontSize: 23,
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
            const SizedBox(height: 110),
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
    );
  }
}
