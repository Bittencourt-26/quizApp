import 'package:flutter/material.dart';

class Mensagem extends StatelessWidget {
  final String texto;
  const Mensagem(this.texto, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: const TextStyle(color: Colors.white, fontSize: 20),
    );
  }
}
