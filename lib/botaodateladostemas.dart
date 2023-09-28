import 'package:flutter/material.dart';

class BotaoDaTelaDosTemas extends StatelessWidget {
  final VoidCallback? parametroOnPressed;
  final String? texto;
  const BotaoDaTelaDosTemas({this.parametroOnPressed, this.texto, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          backgroundColor: Colors.blueGrey[900],
          side: const BorderSide(
            color: Color.fromARGB(255, 255, 255, 255),
            width: 3,
          ),
          fixedSize: const Size(300, 30)),
      onPressed: parametroOnPressed,
      child: Text(
        texto ?? 'nul error',
        style: const TextStyle(fontSize: 17),
      ),
    );
  }
}
