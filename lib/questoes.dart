import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;
  const Questao(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(      //um construtor que retorna as perguntas para alterar o esilo de todas ao mesmo tempo
      texto,
      style: const TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
