import 'package:flutter/material.dart';
import 'package:flutter_application_1/botaodateladostemas.dart';
import './teladostemas.dart';
import './questionario1.dart';
import './maincreen.dart';
import './telacontribuicao.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  bool telaInicial = true;
  bool tela2TelaDosTemas = false;
  bool telaContribuicao = false;
  bool tela3TelaConhecimentosGerais = false;
  bool tela4ou5TelaFutebolOuHistoria = false;
  // Correção aqui
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: telaInicial
              ? MainScreen(
                  parametroOnPressed1: () {
                    setState(() {
                      telaInicial = false;
                      tela2TelaDosTemas = true;
                    });
                  },
                  parametroOnPressed2: () {
                    setState(() {
                      telaInicial = false;
                      tela2TelaDosTemas = false;
                      telaContribuicao = true;
                    });
                  },
                )
              : tela2TelaDosTemas
                  ? TelaDosTemas(
                      botaoVoltar: () {
                        setState(() {
                          telaInicial = true;
                        });
                      },
                      listaDeBotoes: [
                        BotaoDaTelaDosTemas(
                          parametroOnPressed: () {
                            setState(() {
                              telaInicial = false;
                              tela2TelaDosTemas = false;
                              tela3TelaConhecimentosGerais = true;
                            });
                          },
                          texto: 'Conhecimentos Gerais',
                        ),
                        BotaoDaTelaDosTemas(
                          parametroOnPressed: () {
                            setState(() {
                              telaInicial = false;
                              tela2TelaDosTemas = false;
                              tela3TelaConhecimentosGerais = false;
                              tela4ou5TelaFutebolOuHistoria = true;
                            });
                          },
                          texto: 'Quiz de Futebol',
                        )
                      ],
                    )
                  : telaContribuicao
                      ? const TelaContribuicao()
                      : tela3TelaConhecimentosGerais
                          ? Questionario(
                              listaDePerguntas: const [
                                "Qual é a capital do Brasil?",
                                "Quem escreveu a obra 'Dom Quixote'?",
                                "Qual é o maior planeta do sistema solar?",
                                "Quem pintou a 'Mona Lisa'?",
                                "Em que ano ocorreu a Revolução Francesa?",
                                "Qual é a fórmula química da água?",
                                "Quem foi o primeiro presidente dos Estados Unidos?",
                                "Qual é o maior rio do mundo?",
                                "Qual é o símbolo químico do oxigênio?",
                                "Quem é o autor da teoria da relatividade?",
                                "Quem é a figura mitológica que tinha a cabeça de leão e o corpo de cabra?",
                                "Qual é o país com a maior população do mundo?",
                                "Quem é considerado o pai da filosofia ocidental?",
                                "Qual é o maior deserto do mundo?",
                                "Quem foi o líder da Revolução Cubana?",
                                "Qual é o nome do cientista que formulou as leis do movimento dos corpos?",
                                "Qual é o metal mais abundante na crosta terrestre?",
                                "Quem é o autor de 'Romeu e Julieta'?",
                                "Qual é o elemento químico com o símbolo Na na tabela periódica?",
                                "Quem foi o primeiro ser humano a pisar na Lua?",
                                "Qual é o continente mais frio do mundo?",
                                "Quem é o autor da obra 'A Odisséia'?",
                                "Qual é o nome do rio que atravessa o Egito?",
                                "Quem é considerado o pai da psicanálise?",
                                "Qual é a maior cordilheira do mundo?",
                                "Quem é o autor da frase 'Penso, logo existo'?",
                                "Qual é a montanha mais alta do mundo?",
                                "Quem é o criador do Facebook?",
                                "Qual é o nome da coroa usada pelos reis do Egito?",
                                "Quem foi o primeiro imperador romano?",
                                "Qual é o segundo planeta do sistema solar?",
                                "Quem é o autor de 'Cem Anos de Solidão'?",
                                "Qual é o nome da primeira mulher a ganhar dois Prêmios Nobel?",
                                "Quem é o fundador da Microsoft?",
                                "Qual é o maior oceano do mundo?",
                                "Quem foi o autor da obra 'Crime e Castigo'?",
                                "Qual é o país mais extenso do mundo em área territorial?",
                                "Quem é considerado o pai da eletricidade?",
                                "Qual é o metal líquido à temperatura ambiente?",
                                "Quem é o autor da pintura 'A Noite Estrelada'?",
                                "Qual é o nome do sistema de escrita dos antigos egípcios?",
                                "Quem é o autor da teoria da evolução das espécies?",
                                "Qual é o ácido encontrado no vinagre?",
                                "Quem foi o líder sul-africano que lutou contra o apartheid?",
                                "Qual é o maior órgão do corpo humano?",
                                "Quem é o autor de 'O Pequeno Príncipe'?",
                                "Qual é o símbolo químico do ouro?",
                                "Quem foi o primeiro presidente do Brasil?",
                                "Qual é o planeta conhecido como o 'Planeta Vermelho'?",
                                "Quem é considerado o pai da geometria?",
                                "Qual é o nome do instrumento usado para medir a pressão arterial?",
                              ],
                              certas: const [
                                "Brasília",
                                "Miguel de Cervantes",
                                "Júpiter",
                                "Leonardo da Vinci",
                                "1789",
                                "H2O",
                                "George Washington",
                                "Rio Amazonas",
                                "O",
                                "Albert Einstein",
                                "Quimera",
                                "China",
                                "Sócrates",
                                "Saara",
                                "Fidel Castro",
                                "Isaac Newton",
                                "Alumínio",
                                "William Shakespeare",
                                "Sódio",
                                "Neil Armstrong",
                                "Antártica",
                                "Homero",
                                "Rio Nilo",
                                "Sigmund Freud",
                                "Cordilheira dos Andes",
                                "René Descartes",
                                "Monte Everest",
                                "Mark Zuckerberg",
                                "Pschent",
                                "Júlio César",
                                "Vênus",
                                "Gabriel García Márquez",
                                "Marie Curie",
                                "Bill Gates",
                                "Oceano Pacífico",
                                "Fiódor Dostoiévski",
                                "Rússia",
                                "Thomas Edison",
                                "Mercúrio",
                                "Vincent van Gogh",
                                "Hieróglifos",
                                "Charles Darwin",
                                "Ácido acético",
                                "Nelson Mandela",
                                "Pele",
                                "Antoine de Saint-Exupéry",
                                "Au",
                                "Deodoro da Fonseca",
                                "Marte",
                                "Euclides",
                                "Esfigmomanômetro",
                              ],
                              erradas1: const [
                                "Buenos Aires",
                                "William Shakespeare",
                                "Marte",
                                "Pablo Picasso",
                                "1776",
                                "NaCl",
                                "Abraham Lincoln",
                                "Rio Nilo",
                                "Fe",
                                "Isaac Newton",
                                "Minotauro",
                                "Índia",
                                "Platão",
                                "Gobi",
                                "Che Guevara",
                                "Galileu Galilei",
                                "Cobre",
                                "Charles Dickens",
                                "K",
                                "Buzz Aldrin",
                                "África",
                                "Virgílio",
                                "Rio Tâmisa",
                                "Jean-Jacques Rousseau",
                                "Montanhas Rochosas",
                                "Aristóteles",
                                "K2",
                                "Steve Jobs",
                                "Tutankhamon",
                                "Napoleão Bonaparte",
                                "Urano",
                                "Fyodor Dostoiévski",
                                "Canadá",
                                "Marie Curie",
                                "Jeff Bezos",
                                "Oceano Atlântico",
                                "George Orwell",
                                "Estados Unidos",
                                "Nikola Tesla",
                                "Plutão",
                                "Michelangelo",
                                "Alfabeto cirílico",
                                "Louis Pasteur",
                                "Ácido sulfúrico",
                                "Malcolm X",
                                "Fígado",
                                "J.K. Rowling",
                                "Ag",
                                "Getúlio Vargas",
                                "Vênus",
                                "Aristóteles",
                                "Termômetro",
                              ],
                              erradas2: const [
                                "Londres",
                                "Friedrich Nietzsche",
                                "Vênus",
                                "Vincent van Gogh",
                                "1848",
                                "CO2",
                                "Vladimir Putin",
                                "Rio Paraná",
                                "Ag",
                                "Stephen Hawking",
                                "Medusa",
                                "Japão",
                                "Aristóteles",
                                "Atacama",
                                "Napoleão Dynamite",
                                "Niels Bohr",
                                "Prata",
                                "Leo Tolstoy",
                                "Mg",
                                "Buzz Lightyear",
                                "Ásia",
                                "J.R.R. Tolkien",
                                "Rio Reno",
                                "Sófocles",
                                "Montanhas Urais",
                                "Friedrich Hegel",
                                "Kangchenjunga",
                                "Elon Musk",
                                "Tutankhamon",
                                "Adolf Hitler",
                                "Netuno",
                                "F. Scott Fitzgerald",
                                "Austrália",
                                "Gregor Mendel",
                                "Júpiter",
                                "Salvador Dalí",
                                "Hiragana",
                                "Erwin Schrödinger",
                                "H2SO4",
                                "Mao Zedong",
                                "Cérebro",
                                "George R.R. Martin",
                                "Cu",
                                "Juscelino Kubitschek",
                                "Urano",
                                "Aristóteles",
                                "Barômetro",
                                "Lima",
                                "Albert Camus",
                                "Pb",
                                "Rui Barbosa",
                                "Netuno",
                                "Immanuel Kant",
                              ],
                              erradas3: const [
                                "Lisboa",
                                "George Orwell",
                                "Urano",
                                "Salvador Dalí",
                                "1492",
                                "HCl",
                                "Napoleão Bonaparte",
                                "Rio Yangtzé",
                                "Zn",
                                "Marie Curie",
                                "Hidra",
                                "Alemanha",
                                "Heráclito",
                                "Kalahari",
                                "Mao Zedong",
                                "Isaac Asimov",
                                "Estanho",
                                "Fiodor Dostoievski",
                                "C",
                                "Alan Shepard",
                                "Europa",
                                "Friedrich Engels",
                                "Rio Danúbio",
                                "Ésquilo",
                                "Montanhas Apalaches",
                                "Blaise Pascal",
                                "Monte K2",
                                "Elon Musk",
                                "Cleópatra",
                                "Nikita Khrushchov",
                                "Vênus",
                                "Ernest Hemingway",
                                "Canadá",
                                "Gottfried Leibniz",
                                "Marte",
                                "Frida Kahlo",
                                "Alfabeto grego",
                                "Max Planck",
                                "HNO3",
                                "Winston Churchill",
                                "Estômago",
                                "Edgar Allan Poe",
                                "Cd",
                                "Mário de Andrade",
                                "Saturno",
                                "Platão",
                                "Odômetro",
                                "Bogotá",
                                "Voltaire",
                                "Sb",
                                "Joaquim Nabuco",
                                "Júpiter",
                              ],
                              onPressed: () {
                                setState(() {
                                  telaInicial = false;
                                  tela2TelaDosTemas = true;
                                });
                              },
                            )
                          : tela4ou5TelaFutebolOuHistoria
                              ? Questionario(
                                  /*tela4*/
                                  listaDePerguntas: const [
                                    'Quando o Flamengo foi fundado?'
                                  ],
                                  certas: const ['2019'],
                                  erradas1: const ['1895'],
                                  erradas2: const ['1903'],
                                  erradas3: const ['1981'],
                                  onPressed: () {
                                    setState(() {
                                      telaInicial = false;
                                      tela2TelaDosTemas = true;
                                    });
                                  },
                                )
                              : const Placeholder() /*tela5*/
          ),
    );
  }
}
