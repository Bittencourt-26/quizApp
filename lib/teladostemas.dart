import 'package:flutter/material.dart';
import 'botaodateladostemas.dart';

class TelaDosTemas extends StatefulWidget {
  final String? texto;
  final VoidCallback? onPressed;
  final List<BotaoDaTelaDosTemas>? listaDeBotoes;
  const TelaDosTemas({this.texto, this.onPressed, this.listaDeBotoes, super.key});

  @override
  State<TelaDosTemas> createState() => _MainscreenState();
}

class _MainscreenState extends State<TelaDosTemas> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: Colors.blueGrey[900],
      ),
      child: Column(
        children: [
          if(widget.listaDeBotoes != null)
            ...widget.listaDeBotoes! 
        ],
      ),
    );
  }
}
