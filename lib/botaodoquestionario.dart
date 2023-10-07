import 'package:flutter/material.dart';

class BotaoPersonalizado extends StatefulWidget {
  final String? texto;
  final VoidCallback? onPressed;
  const BotaoPersonalizado({this.texto, this.onPressed, super.key});

  @override
  State<BotaoPersonalizado> createState() => _BotaoPersonalizadoState();
}

class _BotaoPersonalizadoState extends State<BotaoPersonalizado> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 185,
      height: 43,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.blue,
            blurRadius: 5,
            spreadRadius: 3,
          ),
        ],
      ),
      child: ElevatedButton(
        //resposta1
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          fixedSize: const Size(190, 45),
          backgroundColor: Colors.black,
          side: const BorderSide(
            color: Color.fromARGB(255, 255, 255, 255),
            width: 2,
          ),
        ),
        onPressed: widget.onPressed,
        child: Container(
          alignment: Alignment.center,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Text(
                widget.texto ??
                    'aviso: Essa é uma mensagem padrão exibida caso valor do texto seja null por razão desconhecida',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style:
                    TextStyle(fontSize: constraints.maxWidth >= 175 ? 20 : 16),
              );
            },
          ),
        ),
      ),
    );
  }
}
