import 'package:flutter/material.dart';
import 'botaodateladostemas.dart';

class TelaDosTemas extends StatefulWidget {
  final List<BotaoDaTelaDosTemas> listaDeBotoes;
  final VoidCallback? botaoVoltar;
  const TelaDosTemas(
      {
      required this.listaDeBotoes,
      required this.botaoVoltar,
      super.key});

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
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.black,
      ),
      child: Column(
        children: [
          const SizedBox(height: 70),
          const Text('Temas disponíveis no momento:', style: TextStyle(color: Colors.white, fontSize: 22),),
          const SizedBox(height: 200),
          ...widget.listaDeBotoes,
          TextButton(
            onPressed: widget.botaoVoltar,
            child: const Text('Voltar?'),
          ),
        ],
      ),
    );
  }
}
