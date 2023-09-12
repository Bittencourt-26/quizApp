import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int indice = 0;

  // Correção aqui
  @override
  Widget build(BuildContext context) {
    final lista = [
      'Qual país iniciou a revolução industrial?',
      'Quando acabou a segunda guerra mundial?',
      'Quando foi o golpe do Estado Novo?',
      '',
    ];
    final List a1 = [
      'Brasil',
      '2003',
      '100 a.c',
      '',
    ];
    final List a2 = [
      'Inglaterra',
      'Depois da terceira',
      '1936',
      '',
    ];
    final List b1 = [
      'Vaticano',
      '1945',
      'Ontem',
      '',
    ];
    final List b2 = [
      'Congo',
      'Irineu',
      'Antes do Estado Velho',
      '',
    ];
    void proximaPergunta() {
      setState(
        () {
          if (indice < lista.length) {
            indice++;
          }
        },
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(lista[indice], style: const TextStyle(fontSize: 20),),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(minimumSize: MaterialStateProperty.all(const Size(180, 40.0))),
                    onPressed: () => proximaPergunta(),
                    child: Text(a1[indice]),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(minimumSize: MaterialStateProperty.all(const Size(180, 40.0))),
                    onPressed: () => proximaPergunta(),
                    child: Text(a2[indice]),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(minimumSize: MaterialStateProperty.all(const Size(180, 40.0))),
                    onPressed: () => proximaPergunta(),
                    child: Text(b1[indice]),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(minimumSize: MaterialStateProperty.all(const Size(180, 40.0))),
                    onPressed: () => proximaPergunta(),
                    child: Text(b2[indice]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
