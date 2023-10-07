import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;
  const Questao(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 55,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.red,
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
            fixedSize: const Size(190, 45),
            backgroundColor: Colors.black,
            side: const BorderSide(
              color: Color.fromARGB(255, 255, 255, 255),
              width: 2,
            ),
          ),
          child: Text(
            texto,
            style: const TextStyle(
              fontSize: 20,
              shadows: [
                Shadow(
                  color: Colors.red,
                  blurRadius: 5,
                ),
              ],
            ),
          )),
    );
  }
}
