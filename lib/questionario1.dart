import 'package:flutter/material.dart';
import './questoes.dart';
import 'botaodoquestionario.dart';
import 'dart:math';

class Questionario extends StatefulWidget {
  final List<String> listaDePerguntas;
  final List<String> erradas1;
  final List<String> erradas2;
  final List<String> erradas3;
  final List<String> certas;
  final VoidCallback onPressed;
  const Questionario(
      {required this.listaDePerguntas,
      required this.erradas1,
      required this.erradas2,
      required this.erradas3,
      required this.certas,
      required this.onPressed,
      super.key});

  @override
  State<Questionario> createState() => _QuestionarioState();
}

class _QuestionarioState extends State<Questionario> {
  int indice = 0;
  int contadorRespostasCertas = 0;
  int contadorRespostasErradas = 0;
  @override
  Widget build(BuildContext context) {
  List A = [];
  List B = [];
  List C = [];
  List D = [];
  List alternativas = [A, B, C, D];

  for (int i = 0; i < 50; i++) {
    bool eNul = false;
      int sorteado1 = Random().nextInt(4);
        alternativas[sorteado1].add(widget.certas[i]);
      
    while (!eNul) {
      int sorteado2 = Random().nextInt(4);
      if (alternativas[sorteado2].length == i) {
        alternativas[sorteado2].add(widget.erradas1[i]);
        eNul = true;
      }
    }
    eNul = false;
    while (!eNul) {
      int sorteado3 = Random().nextInt(4);
      if (alternativas[sorteado3].length == i) {
        alternativas[sorteado3].add(widget.erradas2[i]);
        eNul = true;
      }
    }
    eNul = false;
    while (!eNul) {
      int sorteado = Random().nextInt(4);
      if (alternativas[sorteado].length == i) {
        alternativas[sorteado].add(widget.erradas3[i]);
        eNul = true;
      }
    }
  }
   

    bool estaNoLimite() {
      return indice >= widget.listaDePerguntas.length - 1;
    }

    funcChecaEIncrementa(String resposta) {
      setState(() {
        if (widget.certas.contains(resposta)) {
          contadorRespostasCertas++;
        } else {
          contadorRespostasErradas++;
        }
        if (!estaNoLimite()) {
          indice++;
        }
      });
    }

    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.only(top: 50),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Colors.black,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 300,
          ),
          Questao(widget.listaDePerguntas[
              indice]), //construtor que chama as questões da listaDePerguntas de acordo com o indice
          const SizedBox(height: 20),
          Row(
            //as duas primeiras questôes
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BotaoPersonalizado(
                   texto: A[indice],
                  onPressed: () => funcChecaEIncrementa(A[indice])),
              const SizedBox(
                width: 9,
              ),
              BotaoPersonalizado(
                  texto: B[indice],
                  onPressed: () => funcChecaEIncrementa(B[indice]))
            ],
          ),
          const SizedBox(height: 6),
          Row(
            //as duas segundas quuestôes
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BotaoPersonalizado(
                  texto: C[indice],
                  onPressed: () => funcChecaEIncrementa(C[indice])),
              const SizedBox(
                width: 9,
              ),
              BotaoPersonalizado(
                   texto: D[indice],
                  onPressed: () => funcChecaEIncrementa(D[indice])),
            ],
          ),
          const SizedBox(height: 120),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$contadorRespostasCertas',
                style: TextStyle(
                  color: Colors.green[900],
                  fontSize: 45,
                ),
              ),
              const SizedBox(width: 200),
              Text(
                '$contadorRespostasErradas',
                style: TextStyle(
                  color: Colors.red[900],
                  fontSize: 45,
                  shadows: const  [
                    Shadow(
                      color: Colors.red,
                      blurRadius: 900,
                    ),
                  ],
                ),
              ),
            ],
          ),
          TextButton(onPressed: widget.onPressed, child: const Text('Voltar?'))
        ],
      ),
    );
  }
}
