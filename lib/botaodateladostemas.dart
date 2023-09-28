import 'package:flutter/material.dart';

class BotaoDaTelaDosTemas extends StatelessWidget {
  final VoidCallback? parametroOnPressed;
  final String? texto;
  const BotaoDaTelaDosTemas({this.parametroOnPressed, this.texto,  super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
          minimumSize: MaterialStatePropertyAll(Size(300, 30))),
      // ir para a tela 2
      onPressed: parametroOnPressed,
      child: Text(
        texto ?? 'nul error',
        style: const TextStyle(fontSize: 17),
      ),
    );
  }
}
