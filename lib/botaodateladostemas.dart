import 'package:flutter/material.dart';

class BotaoDaTelaDosTemas extends StatelessWidget {
  final VoidCallback? parametroOnPressed;
  final String? texto;
  const BotaoDaTelaDosTemas({this.parametroOnPressed, this.texto, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: 300,
      height: 40,
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.blue,
                blurRadius: 5,
                spreadRadius: 0.05,
              )
            ]),
            child: ElevatedButton(
              onPressed: parametroOnPressed,
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)),
                backgroundColor: Colors.black,
                side: const BorderSide(
                  color: Color.fromARGB(255, 255, 255, 255),
                  width: 3,
                ),
              ),
              child: Text(
                texto ?? 'nul error',
                style: const TextStyle(
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
          );
  }
}
