import 'package:flutter/material.dart';

class BotaoPersonalizado extends StatefulWidget {
  String? texto;
  VoidCallback? onPressed;
  BotaoPersonalizado({this.texto, this.onPressed, super.key});

  @override
  State<BotaoPersonalizado> createState() => _BotaoPersonalizadoState();
}

class _BotaoPersonalizadoState extends State<BotaoPersonalizado> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      //resposta1
      style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(
            const Size(175, 40.0),
          ),
          maximumSize: MaterialStateProperty.all(
            const Size(175, 40.0),
          ),
          backgroundColor: MaterialStateProperty.all(
              const Color.fromARGB(255, 8, 119, 210))),
      onPressed: widget.onPressed,
      child: Container(
        alignment: Alignment.center,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Text(
              widget.texto ?? 'aa',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: constraints.maxWidth >= 175 ? 16 : 13),
            );
          },
        ),
      ),
    );
  }
}
