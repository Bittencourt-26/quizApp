import 'package:flutter/material.dart';
import './questoes.dart';
import 'botaodoquestionario.dart';
class Questionario extends StatefulWidget {
  final List<String>? listaDePerguntas;
  final List<String>? resposta1;
  final List<String>? resposta2;
  final List<String>? resposta3;
  final List<String>? resposta4;
  final List<String>? respostasCertas;
  final VoidCallback? onPressed;
  const Questionario(
      {this.listaDePerguntas,
      this.resposta1,
      this.resposta2,
      this.resposta3,
      this.resposta4,
      this.respostasCertas,
      this.onPressed,
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

    bool estaNoLimite() {
      return indice >= widget.listaDePerguntas!.length - 1;
    }

    funcChecaEIncrementa(String resposta) {
      setState(() {
        if (widget.respostasCertas!.contains(resposta)) {
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
      //parte blueGrey arredondada
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
          const SizedBox(
            height: 300,
          ),
          Questao(widget.listaDePerguntas![
              indice]), //construtor que chama as questões da listaDePerguntas de acordo com o indice
          const SizedBox(height: 20),
          Row(
            //as duas primeiras questôes
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BotaoPersonalizado(
                  texto: widget.resposta1![indice],
                  onPressed: () =>
                      funcChecaEIncrementa(widget.resposta1![indice])),
              const SizedBox(
                width: 10,
              ),
              BotaoPersonalizado(
                  texto: widget.resposta2![indice],
                  onPressed: () =>
                      funcChecaEIncrementa(widget.resposta2![indice]))
            ],
          ),
          Row(
            //as duas segundas quuestôes
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BotaoPersonalizado(
                  texto: widget.resposta3![indice],
                  onPressed: () =>
                      funcChecaEIncrementa(widget.resposta3![indice])),
              const SizedBox(
                width: 10,
              ),
              BotaoPersonalizado(
                  texto: widget.resposta4![indice],
                  onPressed: () =>
                      funcChecaEIncrementa(widget.resposta4![indice])),
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
