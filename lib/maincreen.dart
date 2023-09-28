import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final VoidCallback? parametroOnPressed1;
  final VoidCallback? parametroOnPressed2;
  const MainScreen({required this.parametroOnPressed1, required this.parametroOnPressed2, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        color: Colors.blueGrey[900],
      ),
      child: Column(
        children: [
          const SizedBox(height: 180),
          const Text(
            'Nome do Jogo',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          ElevatedButton(
            onPressed: parametroOnPressed1,
            child: const Text('Jogar'),
          ),
          ElevatedButton(
            onPressed: parametroOnPressed2,
            child: const Text('Contribuir'),
          )
        ],
      ),
    );
  }
}
