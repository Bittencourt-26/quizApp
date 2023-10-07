import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final VoidCallback? parametroOnPressed1;
  final VoidCallback? parametroOnPressed2;
  const MainScreen(
      {required this.parametroOnPressed1,
      required this.parametroOnPressed2,
      super.key});

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
      child: Column(
        children: [
          const SizedBox(height: 180),
          const Text(
            'Nome do Jogo',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          const SizedBox(height: 20), //espaçamento

          Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.blue,
                blurRadius: 5,
                spreadRadius: 0.05,
              )
            ]),
            child: ElevatedButton(
              onPressed: parametroOnPressed1,
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)),
                fixedSize: const Size(190, 45),
                backgroundColor: Colors.black,
                side: const BorderSide(
                  color: Color.fromARGB(255, 255, 255, 255),
                  width: 3,
                ),
              ),
              child: const Text(
                'Jogar',
                style: TextStyle(
                  fontSize: 19,
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

          const SizedBox(height: 5),
          Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.blue,
                blurRadius: 5,
                spreadRadius: 0.05,
              )
            ]),
            child: ElevatedButton(
              onPressed: parametroOnPressed2,
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)),
                fixedSize: const Size(190, 45),
                backgroundColor: Colors.black,
                side: const BorderSide(
                  color: Color.fromARGB(255, 255, 255, 255),
                  width: 3,
                ),
              ),
              child: const Text(
                'Contribuir',
                style: TextStyle(
                  fontSize: 19,
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
        ],
      ),
    );
  }
}
