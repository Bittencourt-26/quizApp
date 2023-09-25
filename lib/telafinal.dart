import 'package:flutter/material.dart';
import 'package:flutter_application_1/mensagem.dart';

class TelaFinal extends StatefulWidget {
  final int? tamanhoDaLista;
  final int? acertos;
  final int? erros;
  final Function? reinicia;
  const TelaFinal({this.tamanhoDaLista, this.acertos, this.erros, this.reinicia, super.key});

  @override
  State<TelaFinal> createState() => _TelaFinalState();
}

class _TelaFinalState extends State<TelaFinal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.only(top: 50),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        color: Colors.blueGrey[900],
      ),
      child: Column(
        children: [
          const SizedBox(height: 280),
          SizedBox(
            width: 350,
            child: Mensagem(widget.acertos! >= widget.tamanhoDaLista! / 2
                ? 'Parabéns. Você está acima da média, sua pontuação foi ${widget.acertos}'
                : 'Que pena. Você está abaixo da média, sua pontuação foi ${widget.acertos} de ${widget.tamanhoDaLista}'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => widget.reinicia!(),
            child: const Text('Volte ao início'),
          )
        ],
      ),
    );
  }
}
