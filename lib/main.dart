import 'package:flutter/material.dart';
import 'package:QuizMultiTema/botaodateladostemas.dart';
import './teladostemas.dart';
import './questionario1.dart';
import './maincreen.dart';
import './telacontribuicao.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import './telacontribuintes.dart';

//o motivo das 'certas' não serem constantes é a funcChecaEIncrementa no widget Questionario
//alterei a lógica de fomra que voltou a ser cons, ignore os avisos, por hora

void main() async {
  List<String> device = [];
  WidgetsFlutterBinding.ensureInitialized();
  await MobileAds.instance.initialize();

  RequestConfiguration requestConfiguration =
      RequestConfiguration(testDeviceIds: device);
  MobileAds.instance.updateRequestConfiguration(requestConfiguration);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var id = "ca-app-pub-3940256099942544/6300978111";
  @override
  void initState() {
    super.initState();
    initBannerAd();
  }

  late BannerAd bannerAd;
  bool isAdLoaded = false;

  initBannerAd() {
    bannerAd = BannerAd(
      size: AdSize.largeBanner,
      adUnitId: id,
      listener: BannerAdListener(onAdLoaded: (ad) {
        setState(() {
          isAdLoaded = true;
        });
      }, onAdFailedToLoad: (ad, error) {
        ad.dispose();
      }),
      request: const AdRequest(),
    );
    bannerAd.load();
  }

  bool telaInicial = true;
  bool tela2TelaDosTemas = false;
  bool telaContribuicao = false;
  bool tela3TelaConhecimentosGerais = false;
  bool tela4TelaFutebol = false;
  bool tela5ou6HistoriaOuContribuintes = false;
  bool tela5Historia = false;
  bool tela6Contribuintes = false;
  bool tela7UniversoMarvel = false;
  bool tela8UniversoDc = false;
  bool tela9Astronomia = false;
  bool tela10Jogos = false;
  bool tela11Geopolitica = false;
  bool tela12ArteEMusica = false;
  bool tela13MitologiaGrega = false;
  bool tela14CulturaPop = false;
  bool tela15GeografiaBasica = false;
  bool tela16Folclore = false;
  bool tela17CulturaIndigena = false;
  bool tela18DesenhosAnimados = false;
  bool tela19LendasNordicas = false;
  bool tela20Cinema = false;
  bool tela21CienciaGeral = false;
  bool tela22ou23SeriesDeTVouInvencoesHistoricas = false;
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
                  parametroOnPressed3: () {
                    setState(() {
                      telaInicial = false;
                      tela2TelaDosTemas = false;
                      telaContribuicao = false;
                      tela3TelaConhecimentosGerais = false;
                      tela4TelaFutebol = false;
                      tela5Historia = false;
                      tela6Contribuintes = true;
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
                              telaContribuicao = false;
                              tela3TelaConhecimentosGerais = true;
                              tela4TelaFutebol = false;
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
                              tela4TelaFutebol = true;
                            });
                          },
                          texto: 'Futebol',
                        ),
                        BotaoDaTelaDosTemas(
                          parametroOnPressed: () {
                            setState(() {
                              telaInicial = false;
                              tela2TelaDosTemas = false;
                              tela3TelaConhecimentosGerais = false;
                              tela4TelaFutebol = false;
                              tela5Historia = true;
                            });
                          },
                          texto: 'História',
                        ),
                        BotaoDaTelaDosTemas(
                          parametroOnPressed: () {
                            setState(() {
                              telaInicial = false;
                              tela2TelaDosTemas = false;
                              tela3TelaConhecimentosGerais = false;
                              tela4TelaFutebol = false;
                              tela5Historia = false;
                              tela6Contribuintes = false;
                              tela7UniversoMarvel = true;
                            });
                          },
                          texto: 'Universo Marvel',
                        ),
                        BotaoDaTelaDosTemas(
                          parametroOnPressed: () {
                            setState(() {
                              telaInicial = false;
                              tela2TelaDosTemas = false;
                              tela3TelaConhecimentosGerais = false;
                              tela4TelaFutebol = false;
                              tela5Historia = false;
                              tela6Contribuintes = false;
                              tela7UniversoMarvel = false;
                              tela8UniversoDc = true;
                            });
                          },
                          texto: 'Universo DC',
                        ),
                        BotaoDaTelaDosTemas(
                          parametroOnPressed: () {
                            setState(() {
                              telaInicial = false;
                              tela2TelaDosTemas = false;
                              tela3TelaConhecimentosGerais = false;
                              tela4TelaFutebol = false;
                              tela5Historia = false;
                              tela6Contribuintes = false;
                              tela7UniversoMarvel = false;
                              tela8UniversoDc = false;
                              tela9Astronomia = true;
                            });
                          },
                          texto: 'Astronomia',
                        ),
                        BotaoDaTelaDosTemas(
                          parametroOnPressed: () {
                            setState(() {
                              telaInicial = false;
                              tela2TelaDosTemas = false;
                              tela3TelaConhecimentosGerais = false;
                              tela4TelaFutebol = false;
                              tela5Historia = false;
                              tela6Contribuintes = false;
                              tela7UniversoMarvel = false;
                              tela8UniversoDc = false;
                              tela9Astronomia = false;
                              tela10Jogos = true;
                            });
                          },
                          texto: 'Universo Gamer',
                        ),
                        BotaoDaTelaDosTemas(
                          parametroOnPressed: () {
                            setState(() {
                              telaInicial = false;
                              tela2TelaDosTemas = false;
                              tela3TelaConhecimentosGerais = false;
                              tela4TelaFutebol = false;
                              tela5Historia = false;
                              tela6Contribuintes = false;
                              tela7UniversoMarvel = false;
                              tela8UniversoDc = false;
                              tela9Astronomia = false;
                              tela10Jogos = false;
                              tela11Geopolitica = true;
                            });
                          },
                          texto: 'Geopolítica',
                        ),
                        BotaoDaTelaDosTemas(
                          parametroOnPressed: () {
                            setState(() {
                              telaInicial = false;
                              tela2TelaDosTemas = false;
                              tela3TelaConhecimentosGerais = false;
                              tela4TelaFutebol = false;
                              tela5Historia = false;
                              tela6Contribuintes = false;
                              tela7UniversoMarvel = false;
                              tela8UniversoDc = false;
                              tela9Astronomia = false;
                              tela10Jogos = false;
                              tela11Geopolitica = false;
                              tela12ArteEMusica = true;
                            });
                          },
                          texto: 'Arte/Música',
                        ),
                        BotaoDaTelaDosTemas(
                          parametroOnPressed: () {
                            setState(() {
                              telaInicial = false;
                              tela2TelaDosTemas = false;
                              tela3TelaConhecimentosGerais = false;
                              tela4TelaFutebol = false;
                              tela5Historia = false;
                              tela6Contribuintes = false;
                              tela7UniversoMarvel = false;
                              tela8UniversoDc = false;
                              tela9Astronomia = false;
                              tela10Jogos = false;
                              tela11Geopolitica = false;
                              tela12ArteEMusica = false;
                              tela13MitologiaGrega = true;
                            });
                          },
                          texto: 'Mitologia Grega',
                        ),
                        BotaoDaTelaDosTemas(
                          parametroOnPressed: () {
                            setState(() {
                              telaInicial = false;
                              tela2TelaDosTemas = false;
                              tela3TelaConhecimentosGerais = false;
                              tela4TelaFutebol = false;
                              tela5Historia = false;
                              tela6Contribuintes = false;
                              tela7UniversoMarvel = false;
                              tela8UniversoDc = false;
                              tela9Astronomia = false;
                              tela10Jogos = false;
                              tela11Geopolitica = false;
                              tela12ArteEMusica = false;
                              tela13MitologiaGrega = false;
                              tela14CulturaPop = true;
                            });
                          },
                          texto: 'Cultura Pop',
                        ),
                        BotaoDaTelaDosTemas(
                          parametroOnPressed: () {
                            setState(() {
                              telaInicial = false;
                              tela2TelaDosTemas = false;
                              tela3TelaConhecimentosGerais = false;
                              tela4TelaFutebol = false;
                              tela5Historia = false;
                              tela6Contribuintes = false;
                              tela7UniversoMarvel = false;
                              tela8UniversoDc = false;
                              tela9Astronomia = false;
                              tela10Jogos = false;
                              tela11Geopolitica = false;
                              tela12ArteEMusica = false;
                              tela13MitologiaGrega = false;
                              tela14CulturaPop = false;
                              tela15GeografiaBasica = true;
                            });
                          },
                          texto: 'Geografia Básica',
                        ),
                        BotaoDaTelaDosTemas(
                          parametroOnPressed: () {
                            setState(() {
                              telaInicial = false;
                              tela2TelaDosTemas = false;
                              tela3TelaConhecimentosGerais = false;
                              tela4TelaFutebol = false;
                              tela5Historia = false;
                              tela6Contribuintes = false;
                              tela7UniversoMarvel = false;
                              tela8UniversoDc = false;
                              tela9Astronomia = false;
                              tela10Jogos = false;
                              tela11Geopolitica = false;
                              tela12ArteEMusica = false;
                              tela13MitologiaGrega = false;
                              tela14CulturaPop = false;
                              tela15GeografiaBasica = false;
                              tela16Folclore = true;
                            });
                          },
                          texto: 'Folclore',
                        ),
                        BotaoDaTelaDosTemas(
                          parametroOnPressed: () {
                            setState(() {
                              telaInicial = false;
                              tela2TelaDosTemas = false;
                              tela3TelaConhecimentosGerais = false;
                              tela4TelaFutebol = false;
                              tela5Historia = false;
                              tela6Contribuintes = false;
                              tela7UniversoMarvel = false;
                              tela8UniversoDc = false;
                              tela9Astronomia = false;
                              tela10Jogos = false;
                              tela11Geopolitica = false;
                              tela12ArteEMusica = false;
                              tela13MitologiaGrega = false;
                              tela14CulturaPop = false;
                              tela15GeografiaBasica = false;
                              tela16Folclore = false;
                              tela17CulturaIndigena = true;
                            });
                          },
                          texto: 'Cultura Indígena',
                        ),
                        BotaoDaTelaDosTemas(
                          parametroOnPressed: () {
                            setState(() {
                              telaInicial = false;
                              tela2TelaDosTemas = false;
                              tela3TelaConhecimentosGerais = false;
                              tela4TelaFutebol = false;
                              tela5Historia = false;
                              tela6Contribuintes = false;
                              tela7UniversoMarvel = false;
                              tela8UniversoDc = false;
                              tela9Astronomia = false;
                              tela10Jogos = false;
                              tela11Geopolitica = false;
                              tela12ArteEMusica = false;
                              tela13MitologiaGrega = false;
                              tela14CulturaPop = false;
                              tela15GeografiaBasica = false;
                              tela16Folclore = false;
                              tela17CulturaIndigena = false;
                              tela18DesenhosAnimados = true;
                            });
                          },
                          texto: 'Desenhos animados',
                        ),
                        BotaoDaTelaDosTemas(
                          parametroOnPressed: () {
                            setState(() {
                              telaInicial = false;
                              tela2TelaDosTemas = false;
                              tela3TelaConhecimentosGerais = false;
                              tela4TelaFutebol = false;
                              tela5Historia = false;
                              tela6Contribuintes = false;
                              tela7UniversoMarvel = false;
                              tela8UniversoDc = false;
                              tela9Astronomia = false;
                              tela10Jogos = false;
                              tela11Geopolitica = false;
                              tela12ArteEMusica = false;
                              tela13MitologiaGrega = false;
                              tela14CulturaPop = false;
                              tela15GeografiaBasica = false;
                              tela16Folclore = false;
                              tela17CulturaIndigena = false;
                              tela18DesenhosAnimados = false;
                              tela19LendasNordicas = true;
                            });
                          },
                          texto: 'Lendas Nórdicas',
                        ),
                        BotaoDaTelaDosTemas(
                          parametroOnPressed: () {
                            setState(() {
                              telaInicial = false;
                              tela2TelaDosTemas = false;
                              tela3TelaConhecimentosGerais = false;
                              tela4TelaFutebol = false;
                              tela5Historia = false;
                              tela6Contribuintes = false;
                              tela7UniversoMarvel = false;
                              tela8UniversoDc = false;
                              tela9Astronomia = false;
                              tela10Jogos = false;
                              tela11Geopolitica = false;
                              tela12ArteEMusica = false;
                              tela13MitologiaGrega = false;
                              tela14CulturaPop = false;
                              tela15GeografiaBasica = false;
                              tela16Folclore = false;
                              tela17CulturaIndigena = false;
                              tela18DesenhosAnimados = false;
                              tela19LendasNordicas = false;
                              tela20Cinema = true;
                            });
                          },
                          texto: 'Cinema',
                        ),
                        BotaoDaTelaDosTemas(
                          parametroOnPressed: () {
                            setState(() {
                              telaInicial = false;
                              tela2TelaDosTemas = false;
                              tela3TelaConhecimentosGerais = false;
                              tela4TelaFutebol = false;
                              tela5Historia = false;
                              tela6Contribuintes = false;
                              tela7UniversoMarvel = false;
                              tela8UniversoDc = false;
                              tela9Astronomia = false;
                              tela10Jogos = false;
                              tela11Geopolitica = false;
                              tela12ArteEMusica = false;
                              tela13MitologiaGrega = false;
                              tela14CulturaPop = false;
                              tela15GeografiaBasica = false;
                              tela16Folclore = false;
                              tela17CulturaIndigena = false;
                              tela18DesenhosAnimados = false;
                              tela19LendasNordicas = false;
                              tela20Cinema = false;
                              tela21CienciaGeral = true;
                            });
                          },
                          texto: 'Ciência Geral',
                        ),
                        BotaoDaTelaDosTemas(
                          parametroOnPressed: () {
                            setState(() {
                              telaInicial = false;
                              tela2TelaDosTemas = false;
                              tela3TelaConhecimentosGerais = false;
                              tela4TelaFutebol = false;
                              tela5Historia = false;
                              tela6Contribuintes = false;
                              tela7UniversoMarvel = false;
                              tela8UniversoDc = false;
                              tela9Astronomia = false;
                              tela10Jogos = false;
                              tela11Geopolitica = false;
                              tela12ArteEMusica = false;
                              tela13MitologiaGrega = false;
                              tela14CulturaPop = false;
                              tela15GeografiaBasica = false;
                              tela16Folclore = false;
                              tela17CulturaIndigena = false;
                              tela18DesenhosAnimados = false;
                              tela19LendasNordicas = false;
                              tela20Cinema = false;
                              tela21CienciaGeral = false;
                              tela22ou23SeriesDeTVouInvencoesHistoricas = true;
                            });
                          },
                          texto: 'Séries de TV',
                        ),
                        BotaoDaTelaDosTemas(
                          parametroOnPressed: () {
                            setState(() {
                              telaInicial = false;
                              tela2TelaDosTemas = false;
                              tela3TelaConhecimentosGerais = false;
                              tela4TelaFutebol = false;
                              tela5Historia = false;
                              tela6Contribuintes = false;
                              tela7UniversoMarvel = false;
                              tela8UniversoDc = false;
                              tela9Astronomia = false;
                              tela10Jogos = false;
                              tela11Geopolitica = false;
                              tela12ArteEMusica = false;
                              tela13MitologiaGrega = false;
                              tela14CulturaPop = false;
                              tela15GeografiaBasica = false;
                              tela16Folclore = false;
                              tela17CulturaIndigena = false;
                              tela18DesenhosAnimados = false;
                              tela19LendasNordicas = false;
                              tela20Cinema = false;
                              tela21CienciaGeral = false;
                              tela22ou23SeriesDeTVouInvencoesHistoricas = false;
                            });
                          },
                          texto: 'Invenções Históricas',
                        ),
                      ],
                    )
                  : telaContribuicao
                      ? TelaContribuicao(
                          voltarParaMainScreen: () {
                            setState(() {
                              telaInicial = true;
                            });
                          },
                        )
                      : tela3TelaConhecimentosGerais
                          ? Questionario(
                              listaDePerguntas: const [
                                'Qual é o maior planeta do sistema solar?', //1
                                'Quem escreveu "A Odisséia"?', //2
                                'Qual é o país mais extenso do mundo em termos de área terrestre?', //3
                                'Quem foi o primeiro astronauta a caminhar na Lua?', //4
                                'Quem é a autora de "Harry Potter"?', //5
                                'Qual é o elemento químico mais abundante no corpo humano?', //6
                                'Quem pintou "A Última Ceia"?', //7
                                'Qual é o segundo planeta a partir do Sol?', //8
                                'Em que ano a Segunda Guerra Mundial começou?', //9
                                'Qual é o maior oceano do mundo?', //10
                                'Quem escreveu "1984"?', //11
                                'Qual é o símbolo químico do carbono?', //12
                                'Quem foi o primeiro presidente dos Estados Unidos?', //13
                                'Qual é o livro sagrado do Islã?', //14
                                'Em que país você encontraria a Grande Muralha?', //15
                                'Quem é conhecido como o "pai da física moderna"?', //16
                                'Qual é o rio mais longo da América do Sul?', //17
                                'Quem foi o líder do movimento pelos direitos civis nos Estados Unidos na década de 1960?', //18
                                'Qual é a maior cordilheira do mundo?', //19
                                'Qual é o gás mais abundante na atmosfera da Terra?', //20
                                'Quem escreveu "Romeu e Julieta"?', //21
                                'Qual é o país mais populoso da África?', //22
                                'Quem é considerado o "pai da psicanálise"?', //23
                                'Qual é o símbolo químico do ferro?', //24
                                'Quem foi o primeiro ser humano a viajar para o espaço?', //25
                                'Qual é o país mais populoso do mundo?', //26
                                'Quem pintou "A Noite Estrelada"?', //27
                                'Qual é o segundo metal mais abundante na crosta terrestre?', //28
                                'Quem é a autora de "Orgulho e Preconceito"?', //29
                                'Qual é a montanha mais alta da América do Norte?', //30
                                'Quem é considerado o "pai da ciência moderna"?', //31
                                'Qual é o menor planeta do sistema solar?', //32
                                'Em que ano a Revolução Francesa começou?', //33
                                'Qual é a unidade básica de estrutura e função em um organismo unicelular?', //34
                                'Quem é o autor de "Cem Anos de Solidão"?', //35
                                'Qual é o animal terrestre mais rápido do mundo?', //36
                                'Quem foi o primeiro presidente do Brasil?', //37
                                'Qual é o símbolo químico do oxigênio?', //38
                                'Quem escreveu "O Pequeno Príncipe"?', //39
                                'Qual é o maior órgão interno do corpo humano?', //40
                                'Qual é o país mais populoso da Europa?', //41
                                'Quem é conhecido como o "pai da eletricidade"?', //42
                                'Qual é o processo pelo qual as plantas produzem seu próprio alimento?', //43
                                'Quem é a autora de "O Diário de Anne Frank"?', //44
                                'Qual é a maior ilha do mundo?', //45
                                'Quem foi o líder da Revolução Cubana em 1959?', //46
                                'Qual é o símbolo químico do sódio?', //47
                                'Quem escreveu "Odisseia no Espaço"?', //48
                                'Qual é o país mais populoso da América do Sul?', //49
                                'Quem é o autor de "Crime e Castigo"?', //50
                              ],
                              certas: const [
                                // não é const, confia
                                'Júpiter', //1
                                'Homero', //2
                                'Rússia', //3
                                'Neil Armstrong', //4
                                'J.K. Rowling', //5
                                'Oxigênio', //6
                                'Leonardo da Vinci', //7
                                'Vênus', //8
                                '1939', //9
                                'Oceano Pacífico', //10
                                'George Orwell', //11
                                'C', //12
                                'George Washington', //13
                                'Alcorão', //14
                                'China', //15
                                'Albert Einstein', //16
                                'Rio Amazonas', //17
                                'Martin Luther King Jr.', //18
                                'Cordilheira dos Andes', //19
                                'Nitrogênio', //20
                                'William Shakespeare', //21
                                'Nigéria', //22
                                'Sigmund Freud', //23
                                'Fe', //24
                                'Yuri Gagarin', //25
                                'China', //26
                                'Vincent van Gogh', //27
                                'Alumínio', //28
                                'Jane Austen', //29
                                'Monte McKinley (Denali)', //30
                                'Galileu Galilei', //31
                                'Mercúrio', //32
                                '1789', //33
                                'Célula', //34
                                'Gabriel García Márquez', //35
                                'Guepardo', //36
                                'Marechal Deodoro da Fonseca', //37
                                'O', //38
                                'Antoine de Saint-Exupéry', //39
                                'Fígado', //40
                                'Alemanha', //41
                                'Thomas Edison', //42
                                'Fotossíntese', //43
                                'Anne Frank', //44
                                'Groenlândia', //45
                                'Fidel Castro', //46
                                'Na', //47
                                'Charles Bukowski', //48
                                'Brasil', //49
                                'Fiódor Dostoiévski', //50
                              ],
                              erradas1: const [
                                'Marte', //1
                                'Machado de Assis', //2
                                'Canadá', //3
                                'Buzz Aldrin', //4
                                'Stephen King', //5
                                'Hélio', //6
                                'Pablo Picasso', //7
                                'Marte', //8
                                '1945', //9
                                'Oceano Atlântico', //10
                                'Aldous Huxley', //11
                                'H', //12
                                'Thomas Jefferson', //13
                                'Bíblia', //14
                                'Rússia', //15
                                'Isaac Newton', //16
                                'Rio Nilo', //17
                                'Malcolm X', //18
                                'Cordilheira do Himalaia', //19
                                'Dióxido de Carbono', //20
                                'Charles Dickens', //21
                                'Índia', //22
                                'Carl Jung', //23
                                'Cu', //24
                                'John Neutron', //25
                                'Índia', //26
                                'Pierre-Auguste Renoir', //27
                                'Ferro', //28
                                'Emily Brontë', //29
                                'Monte Everest', //30
                                'Nicolau Copérnico', //31
                                'Vênus', //32
                                '1776', //33
                                'Célula-tronco', //34
                                'Ernest Hemingway', //35
                                'Leopardo', //36
                                'Getúlio Vargas', //37
                                'N', //38
                                'Leo Tolstoy', //39
                                'Pâncreas', //40
                                'França', //41
                                'Nikola Tesla', //42
                                'Respiração', //43
                                'Virginia Woolf', //44
                                'Austrália', //45
                                'Che Guevara', //46
                                'K', //47
                                'Clarice Lispector', //48
                                'Argentina', //49
                                'Graciliano Ramos', //50
                              ],
                              erradas2: const [
                                'Saturno', //1
                                'Edgar Allan Poe', //2
                                'Estados Unidos', //3
                                'Alan Shepard', //4
                                'Agatha Christie', //5
                                'Ferro', //6
                                'Salvador Dalí', //7
                                'Mercúrio', //8
                                '1914', //9
                                'Oceano Índico', //10
                                'Ayn Rand', //11
                                'N', //12
                                'Abraham Lincoln', //13
                                'Torá', //14
                                'Alemanha', //15
                                'Marie Curie', //16
                                'Rio Paraná', //17
                                'Rosa Parks', //18
                                'Serra do Mar', //19
                                'Argônio', //20
                                'Tolstoy', //21
                                'Indonésia', //22
                                'Peter Gay', //23
                                'Ca', //24
                                'John Glenn', //25
                                'Indonésia', //26
                                'Claude Monet', //27
                                'Cobre', //28
                                'Mark Twain', //29
                                'Monte Kilimanjaro', //30
                                'Isaac Newton', //31
                                'Netuno', //32
                                '1798', //33
                                'Mitocôndria', //34
                                'Leo Tolstoy', //35
                                'Elefante', //36
                                'Juscelino Kubitschek', //37
                                'He', //38
                                'F. Scott Fitzgerald', //39
                                'Baço', //40
                                'Espanha', //41
                                'Marie Curie', //42
                                'Fermentação', //43
                                'F. Scott Fitzgerald', //44
                                'Islândia', //45
                                'Mao Zedong', //46
                                'Mg', //47
                                'Isaac Asimov', //48
                                'Colômbia', //49
                                'Friedrich Nietzsche', //50
                              ],
                              erradas3: const [
                                'Urano', //1
                                'Miguel de Cervantes', //2
                                'Austrália', //3
                                'John Glenn', //4
                                'Dan Brown', //5
                                'Potássio', //6
                                'Vincent van Gogh', //7
                                'Júpiter', //8
                                '1918', //9
                                'Mar de Aral', //10
                                'J.R.R. Tolkien', //11
                                'Li', //12
                                'Benjamin Franklin', //13
                                'Bhagavad Gita', //14
                                'Canadá', //15
                                'Nikola Tesla', //16
                                'Rio São Francisco', //17
                                'Harriet Tubman', //18
                                'Cordilheira dos Apalaches', //19
                                'Hidrogênio', //20
                                'Oscar Wilde', //21
                                'Bangladesh', //22
                                'Lacan', //23
                                'Al', //24
                                'Buzz Lightyear', //25
                                'Paquistão', //26
                                'Pablo Picasso', //27
                                'Silício', //28
                                'F. Scott Fitzgerald', //29
                                'Monte Fuji', //30
                                'Nikola Tesla', //31
                                'Plutão', //32
                                '1812', //33
                                'Núcleo', //34
                                'Virginia Woolf', //35
                                'Peregrino', //36
                                'Jânio Quadros', //37
                                'Ca', //38
                                'Charles Bukowski', //39
                                'Intestino delgado', //40
                                'Reino Unido', //41
                                'Michael Faraday', //42
                                'Adubação', //43
                                'Emily Brontë', //44
                                'Nova Zelândia', //45
                                'Hugo Chávez', //46
                                'Au', //47
                                'George Lucas', //48
                                'Peru', //49
                                'Lev Tolstói', //50
                              ],
                              voltar: () {
                                setState(() {
                                  telaInicial = false;
                                  tela2TelaDosTemas = true;
                                });
                              },
                              generoDasPerguntas: 'Conhecimentos Gerais',
                            )
                          : tela4TelaFutebol
                              ? Questionario(
                                  /*tela4*/
                                  listaDePerguntas: const [
                                    'Qual seleção nacional venceu a Copa do Mundo de 2018?', //1
                                    'Quem é o maior artilheiro de todos os tempos na história da Copa do Mundo?', //2
                                    'Qual é o nome do troféu concedido ao vencedor da Liga dos Campeões da UEFA?', //3
                                    'Quantas Copas do Mundo a seleção brasileira de futebol já venceu?', //4
                                    'Em que país a Copa do Mundo de 2022 será realizada?', //5
                                    'Quem é conhecido como o "Rei" do futebol brasileiro?', //6
                                    'Qual é o nome do estádio mais icônico de Barcelona, onde joga o FC Barcelona?', //7
                                    'Quem é o artilheiro da Polônia?', //8
                                    'Qual é o país de origem do jogador Cristiano Ronaldo?', //9
                                    'Quem venceu o prêmio FIFA Ballon dOr em 2007?', //10
                                    'Qual clube italiano é conhecido como "A Velha Senhora"?', //11
                                    'Quem é o técnico da seleção alemã de futebol?', //12
                                    'Qual jogador detém o recorde de mais gols marcados em uma única temporada de La Liga?', //13
                                    'Qual é o nome da competição de clubes de futebol mais prestigiada da América do Sul?', //14
                                    'Quantas Copas do Mundo a seleção alemã de futebol já venceu?', //15
                                    'Qual jogador é frequentemente chamado de "Menino ney"?', //16
                                    'Em que ano o Brasil sediou a Copa do Mundo de futebol pela última vez?', //17
                                    'Qual é o maior clube de futebol da Argentina?', //18
                                    'Qual é o nome do estádio do Real Madrid CF?', //19
                                    'Quem é o maior artilheiro da história da Liga dos Campeões da UEFA?', //20
                                    'Quantos jogadores uma equipe de futebol tem em campo durante uma partida?', //21
                                    'Qual seleção nacional venceu a Eurocopa de 2020?', //22
                                    'Quem é o maior artilheiro da seleção francesa de futebol?', //23
                                    'Qual é o nome do clube de futebol mais antigo do mundo, fundado em 1857?', //24
                                    'Quem é o jogador de futebol brasileiro conhecido como "O Fenômeno"?', //25
                                    'Qual é o nome do troféu concedido ao vencedor da Copa Libertadores?', //26
                                    'Qual é o time de futebol mais vitorioso da Premier League?', //27
                                    'Quem é o técnico da seleção francesa de futebol?', //28
                                    'Qual time foi campeão da Champions 2004?', //29
                                    'Em que país surgiu o futebol moderno, com a criação das regras do jogo?', //30
                                    'Qual é o nome do estádio do Bayern de Munique?', //31
                                    'Quem é o artilheiro de todos os tempos na história da Liga Italiana?', //32
                                    'Qual jogador venceu a Chuteira de Ouro da FIFA em 2021?', //33
                                    'Quantos minutos dura um tempo de jogo em uma partida de futebol?', //34
                                    'Qual é o nome do técnico do Manchester City FC?', //35
                                    'Qual seleção nacional venceu a Copa do Mundo de 2010?', //36
                                    'Quem marcou o gol do título da copa do mundo de 2010?', //37
                                    'Qual é o país de origem do jogador Lionel Messi?', //38
                                    'Quem é o atual técnico do Liverpool FC?', //39
                                    'Qual é o nome do estádio do Paris Saint-Germain?', //40
                                    'Qual jogador é frequentemente chamado de "Cascão"?', //41
                                    'Quantas Copas do Mundo a seleção espanhola de futebol já venceu?', //42
                                    'Qual é o nome do troféu concedido ao vencedor da Copa América?', //43
                                    'Quem é o artilheiro de todos os tempos na história da Premier League?', //44
                                    'Qual é o país de origem do jogador Haaland?', //45
                                    'Quem venceu o prêmio FIFA Ballon dOr em 2020?', //46
                                    'Quantas equipes participam da fase de grupos da Liga dos Campeões da UEFA?', //47
                                    'Qual seleção nacional venceu a Copa do Mundo de 1994?', //48
                                    'Quem é o artilheiro da seleção uruguaia de futebol?', //49
                                    'Qual é o nome do estádio do Borussia Dortmund?' //50
                                  ],
                                  certas: const [
                                    'França', //1
                                    'Miroslav Klose', //2
                                    'Taça dos Campeões Europeus', //3
                                    '5', //4
                                    'Catar', //5
                                    'Pelé', //6
                                    'Camp Nou', //7
                                    'Lewandowski', //8
                                    'Portugal', //9
                                    'Kaká', //10
                                    'Juventus', //11
                                    'Hans-Dieter Flick', //12
                                    'Lionel Messi', //13
                                    'Copa Libertadores', //14
                                    '4', //15
                                    'Neymar', //16
                                    '2014', //17
                                    'Boca Juniors', //18
                                    'Estádio Santiago Bernabéu', //19
                                    'Cristiano Ronaldo', //20
                                    '11 jogadores', //21
                                    'Itália', //22
                                    'Thierry Henry', //23
                                    'Sheffield FC', //24
                                    'Ronaldo Nazário', //25
                                    'Copa Libertadores', //26
                                    'Manchester United', //27
                                    'Didier Deschamps', //28
                                    'Porto', //29
                                    'Inglaterra', //30
                                    'Allianz Arena', //31
                                    'Silvio Piola', //32
                                    'Robert Lewandowski', //33
                                    '45 minutos', //34
                                    'Pep Guardiola', //35
                                    'Espanha', //36
                                    'Andrés Iniesta', //37
                                    'Argentina', //38
                                    'Jürgen Klopp', //39
                                    'Parc des Princes', //40
                                    'Ronaldo Fenômeno', //41
                                    '1', //42
                                    'Copa América', //43
                                    'Alan Shearer', //44
                                    'Noruega', //45
                                    'Robert Lewandowski', //46
                                    '32 equipes', //47
                                    'Brasil', //48
                                    'Suárez', //49
                                    'Signal Iduna Park' //50
                                  ],
                                  erradas1: const [
                                    'Bélgica', //1 onst
                                    'Pele', //2
                                    'Liga dos Campeões da FIFA', //3
                                    'Nenhuma', //4
                                    'Emirados Árabes', //5
                                    'Diego Maradona', //6
                                    'Estádio Real Madrid', //7
                                    'Neymar Jr', //8
                                    'Holanda', //9
                                    'CR7', //10
                                    'Milan', //11
                                    'Joachim Löw', //12
                                    'Cristiano Ronaldo', //13
                                    'Superliga Europeia', //14
                                    '3', //15
                                    'Ronaldinho Gaúcho', //16
                                    '2002', //17
                                    'River Plate', //18
                                    'Estádio Barcelona', //19
                                    'Messi', //20
                                    '22 jogadores', //21
                                    'Portugal', //22
                                    'Zinedine Zidane', //23
                                    'Liverpool FC', //24
                                    'Romário', //25
                                    'Copa Sul-Americana', //26
                                    'Liverpool', //27
                                    'Zinedine Zidane', //28
                                    'PSG', //29
                                    'Alemanha', //30
                                    'Estádio Arsenal', //31
                                    'Francesco Totti', //32
                                    'Kylian Mbappé', //33
                                    '90 minutos', //34
                                    'Mauricio Pochettino', //35
                                    'Uruguai', //36
                                    'Ronaldinho Gaúcho', //37
                                    'Chile', //38
                                    'Sampaoli', //39
                                    'Estádio Manchester United', //40
                                    'Neymar Jr.', //41
                                    '2', //42
                                    'Copa das Confederações', //43
                                    'David Beckham', //44
                                    'Portugal', //45
                                    'Luka Modric', //46
                                    '16 equipes', //47
                                    'Alemanha', //48
                                    'Zlatan Ibrahimovic', //49
                                    'Estádio Chelsea' //50
                                  ],
                                  erradas2: const [
                                    'Argentina', //1
                                    'Neymar Jr.', //2
                                    'Copa da UEFA', //3
                                    '6', //4
                                    'Espanha', //5
                                    'Ronaldo Nazário', //6
                                    'Estádio Camp Nou', //7
                                    'CR7', //8
                                    'Brasil', //9
                                    'Messi', //10
                                    'Real Madrid', //11
                                    'Jurgen Klopp', //12
                                    'Neymar Jr.', //13
                                    'Copa do Mundo de Clubes', //14
                                    '2', //15
                                    'Messi', //16
                                    '1998', //17
                                    'Santos', //18
                                    'Estádio Manchester United', //19
                                    'Neymar Jr.', //20
                                    '8 jogadores', //21
                                    'Holanda', //22
                                    'CR7', //23
                                    'Barcelona FC', //24
                                    'Zinedine Zidane', //25
                                    'Taça Libertadores', //26
                                    'Manchester City', //27
                                    'Arsène Wenger', //28
                                    'Milan', //29
                                    'Espanha', //30
                                    'Estádio Borussia Dortmund', //31
                                    'Zlatan Ibrahimovic', //32
                                    'Messi', //33
                                    '60 minutos', //34
                                    'José Mourinho', //35
                                    'França', //36
                                    'Zlatan Ibrahimovic', //37
                                    'Inglaterra', //38
                                    'Pep Guardiola', //39
                                    'Estádio Juventus', //40
                                    'Messi', //41
                                    '4', //42
                                    'Copa Ouro', //43
                                    'Neymar Jr.', //44
                                    'Argentina', //45
                                    'Cristiano Ronaldo', //46
                                    '24 equipes', //47
                                    'Itália', //48
                                    'Ronaldo Nazário', //49
                                    'Estádio  Barcelona' //50
                                  ],
                                  erradas3: const [
                                    'Alemanha', //1
                                    'Maradona', //2
                                    'Copa da Concacaf', //3
                                    '3', //4
                                    'Argentina', //5
                                    'Romário', //6
                                    'Estádio Old Trafford', //7
                                    'Neymar Jr.', //8
                                    'Egito', //9
                                    'Zlatan Ibrahimovic', //10
                                    'Inter de Milão', //11
                                    'Carlo Ancelotti', //12
                                    'Suárez', //13
                                    'Copa Sul-Americana', //14
                                    'Nenhuma', //15
                                    'Luis Suárez', //16
                                    '2010', //17
                                    'Independiente', //18
                                    'Estádio Anfield', //19
                                    'Luis Suárez', //20
                                    '9 jogadores', //21
                                    'Suécia', //22
                                    'Ronaldo Nazário', //23
                                    'Paris Saint-Germain', //24
                                    'Neymar Jr.', //25
                                    'Copa Sul-Americana', //26
                                    'Chelsea FC', //27
                                    'Roberto Mancini', //28
                                    'Sevilla', //29
                                    'Brasil', //30
                                    'Estádio Emirates', //31
                                    'Samuel Etoo', //32
                                    'Karim Benzema', //33
                                    '75 minutos', //34
                                    'Diego Simeone', //35
                                    'Espanha', //36
                                    'Neymar Jr.', //37
                                    'Uruguai', //38
                                    'Antonio Conte', //39
                                    'Estádio Liverpool', //40
                                    'Andrés Iniesta', //41
                                    '5', //42
                                    'Copa das Confederações', //43
                                    'Messi', //44
                                    'Polônia', //45
                                    'Ronaldo Nazário ', //46
                                    '64 equipes', //47
                                    'Espanha', //48
                                    'Messi', //49
                                    'Estádio Manchester City' //50
                                  ],
                                  voltar: () {
                                    setState(() {
                                      telaInicial = false;
                                      tela2TelaDosTemas = true;
                                    });
                                  },
                                  generoDasPerguntas: 'Quiz de Futebol',
                                )
                              : tela5Historia
                                  ? Questionario(
                                      listaDePerguntas: const [
                                          "Qual civilização antiga construiu as pirâmides de Gizé?", //1
                                          "Quem foi o primeiro presidente dos Estados Unidos?", //2
                                          "Qual evento histórico levou à assinatura da Declaração de Independência dos Estados Unidos?", //3
                                          "Qual foi o impacto da Revolução Industrial na produção de bens?", //4
                                          "Quem foi o líder da Revolução Chinesa que estabeleceu a República Popular da China?", //5
                                          "Qual movimento histórico lutou pelo direito das mulheres ao voto?", //6
                                          "Qual foi o papel da Inquisição Espanhola na história europeia?", //7
                                          "Quem foi o líder da Revolução Cubana que derrubou o governo de Fulgencio Batista?", //8
                                          "Qual foi o nome dado ao período de tensões e rivalidades entre os Estados Unidos e a União Soviética após a Segunda Guerra Mundial?", //9
                                          "Qual foi a dinastia que governou a China antes da Revolução Russa de 1917?", //10
                                          "Quem liderou a luta contra o apartheid na África do Sul?", //11
                                          "Qual foi o resultado da Revolução Francesa?", //12
                                          "O que foi a Guerra dos Cem Anos?", //13
                                          "Quem foi o líder militar que desempenhou um papel significativo na Guerra Civil Americana?", //14
                                          "Qual filósofo grego é conhecido por suas contribuições à ética e à filosofia política?", //15
                                          "O que foi a Revolução Mexicana e quem foi seu líder?", //16
                                          "Qual foi o impacto do Renascimento na arte e na cultura europeia?", //17
                                          "Quem foi o líder da independência do Brasil do domínio português?", //18
                                          "Qual batalha marcou a derrota final de Napoleão Bonaparte?", //19
                                          "Qual foi o principal efeito da Peste Negra na Europa medieval?", //20
                                          "Quem foi o líder comunista chinês que fundou a República Popular da China?", //21
                                          "Qual movimento literário e artístico do século XX foi marcado pela expressão do inconsciente e do irracional?", //22
                                          "Quem foi o líder da Revolução Haitiana, que levou à independência do Haiti?", //23
                                          "Qual foi o evento histórico que levou à independência dos Estados Unidos do domínio britânico?", //24
                                          "Qual é o nome da dinastia que governou a Inglaterra após a Guerra das Rosas?", //25
                                          "Quem foi o filósofo alemão que escreveu 'O Capital' e é considerado o pai do comunismo moderno?", //26
                                          "Qual líder político e militar levou a Argentina à independência do domínio espanhol?", //27
                                          "Qual foi a importância da Carta Magna na história da Inglaterra?", //28
                                          "Quem foi o líder soviético responsável pela política da Perestroika e da Glasnost?", //29
                                          "Qual foi o resultado do Movimento dos Direitos Civis nos Estados Unidos liderado por Martin Luther King Jr.?" //30
                                        ],
                                      certas: const [
                                          //não é const, confia em mim
                                          "Egito", //1
                                          "George Washington", //2
                                          "Revolução Americana", //3
                                          "Aumento na produção", //4
                                          "Mao Zedong", //5
                                          "Sufrágio feminino", //6
                                          "Perseguição religiosa e política", //7
                                          "Fidel Castro", //8
                                          "Guerra Fria", //9
                                          "Dinastia Romanov", //10
                                          "Nelson Mandela", //11
                                          "Abolição da monarquia", //12
                                          "Conflito prolongado entre a França e a Inglaterra", //13
                                          "Ulysses S. Grant e Robert E. Lee", //14
                                          "Sócrates", //15
                                          "Emiliano Zapata", //16
                                          "Renascimento", //17
                                          "Dom Pedro I", //18
                                          "Batalha de Waterloo", //19
                                          "Mortalidade significativa", //20
                                          "Mao Zedong", //21
                                          "Surrealismo", //22
                                          "Toussaint Louverture", //23
                                          "A Guerra da Independência", //24
                                          "Casa de Tudor", //25
                                          "Karl Marx", //26
                                          "José de San Martín", //27
                                          "Limitação do poder monárquico", //28
                                          "Mikhail Gorbachev", //29
                                          "Progresso nos direitos dos afro-americanos", //30
                                        ],
                                      erradas1: const [
                                          "China", //1 const
                                          "Thomas Jefferson", //2
                                          "Guerra Civil Americana", //3
                                          "Decréscimo na produção", //4
                                          "Chiang Kai-shek", //5
                                          "Revolução Industrial", //6
                                          "Inovação tecnológica", //7
                                          "Hugo Chávez", //8
                                          "Primeira Guerra Mundial", //9
                                          "Dinastia Han", //10
                                          "Desmond Tutu", //11
                                          "Expansão do poder monárquico", //12
                                          "Guerra dos Trinta Anos", //13
                                          "George Washington", //14
                                          "Platão", //15
                                          "Pancho Villa", //16
                                          "Idade das Trevas", //17
                                          "Dom Pedro II", //18
                                          "Batalha de Stalingrado", //19
                                          "Melhoria nas condições de vida", //20
                                          "Karl Marx", //21
                                          "Barroco", //22
                                          "Simón Bolívar", //23
                                          "Tratado de Versalhes", //24
                                          "Casa de Stuart", //25
                                          "Friedrich Nietzsche", //26
                                          "Simón Bolívar", //27
                                          "Consolidação do absolutismo Monárquico", //28
                                          "Joseph Stalin", //29
                                          "Abolição dos direitos afro-americanos", //30
                                        ],
                                      erradas2: const [
                                          "Grécia", //1
                                          "Benjamin Franklin", //2
                                          "Revolução Industrial", //3
                                          "Redução da desigualdade", //4
                                          "Sun Yat-sen", //5
                                          "Renascimento", //6
                                          "Invenção da imprensa", //7
                                          "Che Guevara", //8
                                          "Guerra dos Seis Dias", //9
                                          "Dinastia Qing", //10
                                          "Mahatma Gandhi", //11
                                          "Reforço do poder feudal", //12
                                          "Guerra do Peloponeso", //13
                                          "Abraham Lincoln", //14
                                          "Aristóteles", //15
                                          "Fidel Castro", //16
                                          "Revolução Industrial", //17
                                          "José de San Martín", //18
                                          "Batalha de Gettysburg", //19
                                          "Declínio das doenças", //20
                                          "Vladimir Lenin", //21
                                          "Expressionismo", //22
                                          "Pancho Villa", //23
                                          "Tratado de Tordesilhas", //24
                                          "Casa de Windsor", //25
                                          "Adam Smith", //26
                                          "Hernán Cortés", //27
                                          "Independência das colônias britânicas", //28
                                          "Leon Trotsky", //29
                                          "Recuo dos direitos dos afro-americanos", //30
                                        ],
                                      erradas3: const [
                                          "Roma", //1
                                          "Alexander Hamilton", //2
                                          "Revolução Francesa", //3
                                          "Avanço na agricultura", //4
                                          "Ho Chi Minh", //5
                                          "Revolução Praieira", //6
                                          "Teoria da relatividade", //7
                                          "Napoleão Bonaparte", //8
                                          "Guerra dos Boers", //9
                                          "Dinastia Tang", //10
                                          "Oliver Cromwell", //11
                                          "Consolidação do absolutismo monárquico", //12
                                          "Revolução Russa", //13
                                          "Thomas Jefferson", //14
                                          "Confúcio", //15
                                          "Francisco Franco", //16
                                          "Guerra Fria", //17
                                          "Getúlio Vargas", //18
                                          "Batalha de Saratoga", //19
                                          "Expansão da escravidão", //20
                                          "Mikhail Gorbachev", //21
                                          "Renascença Cultural", //22
                                          "Bernardo O'Higgins", //23
                                          "Tratado de Utrecht", //24
                                          "Casa de Plantageneta", //25
                                          "John Locke", //26
                                          "Hugo Chávez", //27
                                          "Declaração dos Direitos do Homem e do Cidadão", //28
                                          "Benito Mussolini", //29
                                          "SUpremacia afro-americana nos EUA", //30
                                        ],
                                      voltar: () {
                                        setState(() {
                                          telaInicial = false;
                                          tela2TelaDosTemas = true;
                                        });
                                      },
                                      generoDasPerguntas: 'História')
                                  : tela6Contribuintes
                                      ? TelaContribuintes(
                                          voltarParaMainScreen: () {
                                            setState(() {
                                              telaInicial = true;
                                            });
                                          },
                                        )
                                      : tela7UniversoMarvel
                                          ? Questionario(
                                              listaDePerguntas: const [
                                                  "Quem é conhecido como o Homem de Ferro?", //1
                                                  "Qual é o nome verdadeiro do herói Aranha?", //2
                                                  "Quem é o arqui-inimigo do Pantera Negra?", //3
                                                  "Qual é a identidade secreta da Viúva Negra?", //4
                                                  "Quem é o deus do trovão na Marvel?", //5
                                                  "Quem é o mentor de Peter Parker e Homem-Aranha?", //6
                                                  "Qual é o nome da equipe de super-heróis que inclui Capitão América, Homem de Ferro e Thor?", //7
                                                  "Qual é a pedra que concedeu poderes a Visão?", //8
                                                  "Qual é o metal que o escudo do Capitão América é feito?", //9
                                                  "Quem é o irmão do deus do trovão?", //10
                                                  "Qual é o nome do reino de Thor?", //11
                                                  "Quem é o principal inimigo do Doutor Estranho?", //12
                                                  "Qual é o nome da cientista que se tornou a Mulher-Hulk?", //13
                                                  "Quem é o principal vilão do Homem-Aranha?", //14
                                                  "Qual é o nome do poderoso martelo de Thor?", //15
                                                  "Quem é o herói cego que combate o crime no bairro Hell's Kitchen de Nova York?", //16
                                                  "Quem é o líder dos X-Men?", //17
                                                  "Qual é o planeta natal do Hulk?", //18
                                                  "Qual é o nome da organização de espionagem internacional que a Viúva Negra faz parte?", //19
                                                  "Qual é o nome do reino governado por Namor, o Príncipe Submarino?", //20
                                                  "Quem é conhecido como o Sentinela da Liberdade?", //21
                                                  "Quem é o herói com habilidades de pantera e rei de Wakanda?", //22
                                                  "Qual é o nome da cidade fictícia onde a maior parte das histórias do Homem-Aranha acontece?", //23
                                                  "Quem é o anti-herói conhecido como Mercenário?", //24
                                                  "Qual é o apelido de Natasha Romanoff na Marvel?", //25
                                                  "Quem é a irmã mais nova de Thor?", //26
                                                  "Quem é o vilão robótico que busca eliminar todos os mutantes?", //27
                                                  "Qual é o nome da detetive particular e super-heroína da Marvel?", //28
                                                  "Quem é o parceiro de combate ao crime de Luke Cage?", //29
                                                  "Qual é o nome da organização mutante liderada pelo Professor Xavier?", //30
                                                  "Quem é o cientista brilhante que se tornou o Hulk?", //31
                                                  "Qual é o nome da joalheria de Adam Warlock?", //32
                                                  "Quem é a deusa asgardiana da morte?", //33
                                                  "Quem é o cientista que criou o super soldado que se tornou o Capitão América?", //34
                                                  "Qual é o nome da irmã gêmea de Pietro Maximoff?", //35
                                                  "Quem é conhecido como o Mago Supremo?", //36
                                                  "Qual é o nome da ilha fictícia que serve de lar para Magneto e outros mutantes?", //37
                                                  "Quem é o vilão conhecido por ser o mestre da ilusão?", //38
                                                  "Qual é o nome do herói que se funde com o simbionte alienígena para se tornar Venom?", //39
                                                  "Quem é a mutante com habilidade de controlar o clima?", //40
                                                  "Qual é o nome do androide membro dos Vingadores?", //41
                                                  "Quem é o alter ego de Deadpool?", //42
                                                  "Qual é o nome do guardião da Galáxia com uma arma em forma de planta?", //43
                                                  "Quem é a líder dos Inumanos?", //44
                                                  "Qual é o nome do rei dos inumanos?", //45
                                                  "Quem é o vilão megalomaníaco obcecado pelo equilíbrio no universo?", //46
                                                  "Qual é o nome da equipe de super-heróis cósmicos liderada por Star-Lord?", //47
                                                  "Quem é o ser cósmico responsável pela manutenção do multiverso Marvel?", //48
                                                  "Qual é o nome da joia que concede o poder de controlar a realidade?", //49
                                                  "Quem é o inimigo do Homem-Aranha que é um cientista obcecado?", //50
                                                ],
                                              certas: const [
                                                  //não é const, confia em mim
                                                  "Tony Stark", //1
                                                  "Peter Parker", //2
                                                  "Erik Killmonger", //3
                                                  "Natasha Romanoff", //4
                                                  "Thor", //5
                                                  "Tony Stark", //6
                                                  "Os Vingadores", //7
                                                  "Gema da Mente", //8
                                                  "Vibranium", //9
                                                  "Loki", //10
                                                  "Asgard", //11
                                                  "Dormammu", //12
                                                  "Jennifer Walters", //13
                                                  "Duende Verde", //14
                                                  "Mjolnir", //15
                                                  "Demolidor", //16
                                                  "Charles Xavier (Professor X)", //17
                                                  "Planeta Sakaar", //18
                                                  "SHIELD", //19
                                                  "Atlântida", //20
                                                  "Steve Rogers", //21
                                                  "T'Challa", //22
                                                  "Nova Iorque", //23
                                                  "Bullseye", //24
                                                  "Nat", //25
                                                  "Hela", //26
                                                  "Sentinela", //27
                                                  "Jessica Jones", //28
                                                  "Punho de Ferro (Danny Rand)", //29
                                                  "X-Men", //30
                                                  "Bruce Banner", //31
                                                  "Sovereign", //32
                                                  "Hela", //33
                                                  "Dr. Abraham Erskine", //34
                                                  "Wanda Maximoff", //35
                                                  "Stephen Strange", //36
                                                  "Genosha", //37
                                                  "Mysterio", //38
                                                  "Eddie Brock", //39
                                                  "Ororo Munroe (Tempestade)", //40
                                                  "Visão", //41
                                                  "Wade Wilson", //42
                                                  "Groot", //43
                                                  "Medusa", //44
                                                  "Raí", //45
                                                  "Thanos", //46
                                                  "Guardiões da Galáxia", //47
                                                  "O Vigia", //48
                                                  "Joia do Espaço (Tesseract)", //49
                                                  "Doutor Octopus", //50
                                                ],
                                              erradas1: const [
                                                  "Peter Parker", //1
                                                  "Steve Rogers", //2
                                                  "Lex Luthor", //3
                                                  "Carol Danvers", //4
                                                  "Arqueiro Verde", //5
                                                  "Tia May", //6
                                                  "Liga da Justiça", //7
                                                  "Pedra do Tempo", //8
                                                  "Adamantino", //9
                                                  "Chronus", //10
                                                  "Mística", //11
                                                  "Homem Formiga", //12
                                                  "Jeniffer Loris", //13
                                                  "Duende Macabro", //14
                                                  "Escudo Dourado", //15
                                                  "Gavião Arqueiro", //16
                                                  "Mística", //17
                                                  "Planeta Hulk", //18
                                                  "HYDRA", //19
                                                  "Atalanta", //20
                                                  "Freedom-man", //21
                                                  "Luke Cage", //22
                                                  "Atlântida", //23
                                                  "Venom", //24
                                                  "Viúva", //25
                                                  "Malekith", //26
                                                  "Thanos", //27
                                                  "Sherlocka Homas", //28
                                                  "Jessica Jones", //29
                                                  "Irmandade de Mutantes", //30
                                                  "Reed Locus", //31
                                                  "Wakanda", //32
                                                  "Valkyrie", //33
                                                  "Hank Pym", //34
                                                  "Polaris", //35
                                                  "Wong", //36
                                                  "Genosia", //37
                                                  "Venom", //38
                                                  "Mac Gargan (Escorpião)", //39
                                                  "Jean Grey", //40
                                                  "Homem de Ferro Branco", //41
                                                  "Walter Nolan", //42
                                                  "Peter", //43
                                                  "Lady Sif", //44
                                                  "Karnak", //45
                                                  "Loki", //46
                                                  "Defensores", //47
                                                  "Galactus", //48
                                                  "Joia do Poder (Power Gem)", //49
                                                  "Duende Verde", //50
                                                ],
                                              erradas2: const [
                                                  "Bruce Wayne", //1
                                                  "Clark Kent", //2
                                                  "Coringa", //3
                                                  "Carol Danvers", //4
                                                  "Loki", //5
                                                  "Mary Jane", //6
                                                  "Liga da Justiça", //7
                                                  "Pedra da Alma (Soul Stone)", //8
                                                  "Adamantium", //9
                                                  "T'Chaka", //10
                                                  "Dormammu", //11
                                                  "Feiticeira Escarlate", //12
                                                  "Elektra", //13
                                                  "Abutre", //14
                                                  "Martelo Encantado", //15
                                                  "Pantera Negra", //16
                                                  "Venom", //17
                                                  "Krypton", //18
                                                  "AIM (Advanced Idea Mechanics)", //19
                                                  "Kamar-Taj", //20
                                                  "Peter Quill", //21
                                                  "Doutor Estranho", //22
                                                  "Gotham City", //23
                                                  "Mysterio", //24
                                                  "Pepper Potts", //25
                                                  "Sentinela", //26
                                                  "Ultron", //27
                                                  "Harley Quinn", //28
                                                  "Bushmaster", //29
                                                  "Liga dos Vingadores", //30
                                                  "Reed Richards", //31
                                                  "Compus", //32
                                                  "Rela", //33
                                                  "Amateur Wantis", //34
                                                  "Feiticeira Escarlate", //35
                                                  "Mordo", //36
                                                  "Attilan", //37
                                                  "Electro", //38
                                                  "Abutre", //39
                                                  "Vespa", //40
                                                  "Homem de Ferro Negro", //41
                                                  "Clark Kent", //42
                                                  "Drax, o Destruidor", //43
                                                  "A destruidora", //44
                                                  "Troiks", //45
                                                  "Ronan, o Acusador", //46
                                                  "Os Supremos", //47
                                                  "O Ancião", //48
                                                  "Joia da Realidade (Reality Gem)", //49
                                                  "Duende Macabro", //50
                                                ],
                                              erradas3: const [
                                                  "Wade Wilson", //1
                                                  "Barry Allen", //2
                                                  "Doutor Octopus", //3
                                                  "Jessica Drew", //4
                                                  "Odin", //5
                                                  "Ned", //6
                                                  "Jovens Titãs", //7
                                                  "Pedra da Realidade (Reality Stone)", //8
                                                  "Uru", //9
                                                  "Namorita", //10
                                                  "Barão Mordo", //11
                                                  "Capitã Marvel", //12
                                                  "Bullseye", //13
                                                  "Venom", //14
                                                  "Escudo Energético", //15
                                                  "Jessica Jones", //16
                                                  "Ciclope", //17
                                                  "Marte", //18
                                                  "HIDRA", //19
                                                  "Nova Atlântida", //20
                                                  "Matt Murdock", //21
                                                  "Raio Negro", //22
                                                  "Metropolis", //23
                                                  "Escorpião", //24
                                                  "Wasp", //25
                                                  "Dormammu", //26
                                                  "Apocalipse", //27
                                                  "Pássaro Flamejante", //28
                                                  "Misty Knight", //29
                                                  "Liga dos Defensores", //30
                                                  "Emil Blonsky", //31
                                                  "Contratante", //32
                                                  "Heimdall", //33
                                                  "Alexander Pierce", //34
                                                  "Vampira", //35
                                                  "Feiticeira de Wundagore", //36
                                                  "Utopia", //37
                                                  "Duende Verde", //38
                                                  "Demolidor", //39
                                                  "Noturno", //40
                                                  "Vingador de Ferro", //41
                                                  "Matthew Murdock", //42
                                                  "Mantis", //43
                                                  "Raio Negro", //44
                                                  "Triton", //45
                                                  "Red Skull", //46
                                                  "Os guardiões", //47
                                                  "Eon", //48
                                                  "Joia do Tempo (Time Stone)", //49
                                                  "Doutor Hexapus", //50
                                                ],
                                              voltar: () {
                                                setState(() {
                                                  telaInicial = false;
                                                  tela2TelaDosTemas = true;
                                                });
                                              },
                                              generoDasPerguntas:
                                                  'Universo Marvel')
                                          : tela8UniversoDc
                                              ? Questionario(
                                                  listaDePerguntas: const [
                                                      "Quem é o alter ego do Batman?", //1
                                                      "Qual é a cidade natal do Superman?", //2
                                                      "Qual é o nome da Mulher-Maravilha?", //3
                                                      "Quem é o arqueiro verde do universo DC?", //4
                                                      "Qual vilão é conhecido como o Coringa?", //5
                                                      "Qual é o nome do Lanterna Verde mais famoso da Terra?", //6
                                                      "Quem é o Aquaman?", //7
                                                      "Qual herói da DC é conhecido como o Flash?", //8
                                                      "Quem é o alter ego de Barry Allen?", //9
                                                      "Qual é o nome da equipe de super-heróis formada por Batman, Superman e Mulher-Maravilha?", //10
                                                      "Quem é o adversário mais famoso do Batman?", //11
                                                      "Qual é o nome da tia de Superman que o criou na Terra?", //12
                                                      "Qual é o planeta natal de Superman?", //13
                                                      "Qual é o apelido de Oliver Queen, o Arqueiro Verde?", //14
                                                      "Qual é o nome real da Mulher-Gato?", //15
                                                      "Quem é o icônico inimigo do Flash que pode controlar a velocidade?", //16
                                                      "Qual é o nome da cidade natal do Arqueiro Verde?", //17
                                                      "Qual membro da Liga da Justiça é conhecido por sua velocidade?", //18
                                                      "Quem é o inimigo do Aquaman e governa Atlântida?", //19
                                                      "Qual é o nome da ilha natal da Mulher-Maravilha?", //20
                                                      "Qual é o nome do mordomo de Bruce Wayne?", //21
                                                      "Quem é a jornalista que trabalha no Planeta Diário com Clark Kent?", //22
                                                      "Quem é o adversário mortal do Lanterna Verde?", //23
                                                      "Qual é o nome da irmã de Aquaman?", //24
                                                      "Quem é o Flash original da Era de Ouro da DC?", //25
                                                      "Qual é o nome da corporação que fornece poder aos Lanternas Verdes?", //26
                                                      "Quem é conhecido como 'O Mago do Novo Deus'?", //27
                                                      "Qual é o nome do pai adotivo de Bruce Wayne?", //28
                                                      "Quem é a amiga e confidente de Bruce Wayne que se torna a Batwoman?", //29
                                                      "Quem é o supervilão com metade do rosto queimado e é um inimigo do Batman?", //30
                                                      "Qual membro da Liga da Justiça é uma princesa da Ilha Themyscira?", //31
                                                      "Quem é a filha de Zeus e aliada da Mulher-Maravilha?", //32
                                                      "Qual é o nome do vilão que é a versão distorcida do Flash?", //33
                                                      "Quem é o líder da Tropa dos Lanternas Amarelos?", //34
                                                      "Qual é o apelido de Oliver Queen como Arqueiro Verde?", //35
                                                      "Quem é a androide que faz parte dos Jovens Titãs?", //36
                                                      "Qual é o nome da filha do Aquaman?", //37
                                                      "Quem é o herói que é um androide membro da Liga da Justiça?", //38
                                                      "Qual é o nome do vilão que controla a mente de outras pessoas com seu chapéu?", //39
                                                      "Quem é a vilã que é uma ecoterrorista com poderes de planta?", //40
                                                      "Qual é o nome da cidade natal do Shazam?", //41
                                                      "Quem é o vilão que é a personificação do medo no universo DC?", //42
                                                      "Qual é o nome do vilão que é conhecido como 'Senhor do Oceano'?", //43
                                                      "Quem é o anti-herói da DC que é um ex-membro dos Lanternas Verdes?", //44
                                                      "Qual é o nome do planeta em que o Batman foi treinado pelas Ligas das Sombras?", //45
                                                      "Quem é o cientista louco que é inimigo do Flash?", //46
                                                      "Qual é o nome do vilão que é uma versão retorcida do Super-Homem?", //47
                                                      "Quem é o vilão que é a encarnação da morte e inimigo do Lanterna Verde?", //48
                                                      "Qual é o nome do vigilante de Gotham City que não tem superpoderes?", //49
                                                      "Qual cientista que se transforma em monstro após um acidente e se torna um inimigo do Homem-Morcego?", //50
                                                    ],
                                                  certas: const [
                                                      "Bruce Wayne", //1
                                                      "Smallville, Kansas, EUA", //2
                                                      "Diana Prince", //3
                                                      "Oliver Queen", //4
                                                      "Coringa", //5
                                                      "Hal Jordan", //6
                                                      "Arthur Curry", //7
                                                      "Barry Allen", //8
                                                      "Barry Allen", //9
                                                      "Trindade", //10
                                                      "Coringa", //11
                                                      "Martha Kent", //12
                                                      "Krypton", //13
                                                      "Arqueiro Esmeralda", //14
                                                      "Selina Kyle", //15
                                                      "Flash Reverso (Eobard Thawne)", //16
                                                      "Star City", //17
                                                      "Flash", //18
                                                      "Mestre do Oceano (Orm)", //19
                                                      "Themyscira", //20
                                                      "Alfred Pennyworth", //21
                                                      "Lois Lane", //22
                                                      "Sinestro", //23
                                                      "Mera", //24
                                                      "Jay Garrick", //25
                                                      "Tropa dos Lanternas Verdes", //26
                                                      "Metron", //27
                                                      "Thomas Wayne", //28
                                                      "Kate Kane", //29
                                                      "Duas-Caras", //30
                                                      "Mulher-Maravilha (Diana Prince)", //31
                                                      "Donna Troy", //32
                                                      "Flash Reverso (Eobard Thawne)", //33
                                                      "Sinestro", //34
                                                      "Arqueiro Verde", //35
                                                      "Cyborg", //36
                                                      "Andy Curry", //37
                                                      "Cyborg", //38
                                                      "Chapeleiro Louco (Mad Hatter)", //39
                                                      "Poison Ivy (Hera Venenosa)", //40
                                                      "Fawcett City", //41
                                                      "Anel Amarelo (Parallax)", //42
                                                      "Ocean Master", //43
                                                      "Lobo", //44
                                                      "Nanda Parbat", //45
                                                      "Mestre dos Espelhos (Mirror Master)", //46
                                                      "Ultraman", //47
                                                      "Nekron", //48
                                                      "Batman", //49
                                                      "Homem-Croc", //50
                                                    ],
                                                  erradas1: const [
                                                      "Peter Parker", //1
                                                      "Gotham City", //2
                                                      "Mary Jane Watson", //3
                                                      "Clark Kent", //4
                                                      "Pinguim", //5
                                                      "Kyle Rayner", //6
                                                      "Black Manta", //7
                                                      "Wally West", //8
                                                      "Wally West", //9
                                                      "Liga da Justiça", //10
                                                      "Duas-Caras", //11
                                                      "Lois Lane", //12
                                                      "Planeta Terra", //13
                                                      "Robin Hood", //14
                                                      "Harley Quinn", //15
                                                      "Lex Luthor", //16
                                                      "Central City", //17
                                                      "Aquaman", //18
                                                      "Mestre dos Espelhos", //19
                                                      "Paradise Island", //20
                                                      "Alfred Hitchcock", //21
                                                      "Jimmy Olsen", //22
                                                      "Ra's al Ghul", //23
                                                      "Aqua Girl", //24
                                                      "Barry White", //25
                                                      "Guardians of the Galaxy", //26
                                                      "Merlin", //27
                                                      "Alfred E. Neuman", //28
                                                      "Robin", //29
                                                      "Charada", //30
                                                      "Princesa Aurora", //31
                                                      "Zeus' Daughter", //32
                                                      "The Riddler", //33
                                                      "Green Hornet", //34
                                                      "Golden Arrow", //35
                                                      "Wonder Woman", //36
                                                      "Aquababy", //37
                                                      "Superman", //38
                                                      "Espantalho", //39
                                                      "Batgirl", //40
                                                      "Metropolis", //41
                                                      "Medo", //42
                                                      "King Neptune", //43
                                                      "Captain Marvel", //44
                                                      "Krypton", //45
                                                      "Professor Zoom", //46
                                                      "Power Man", //47
                                                      "Darkseid", //48
                                                      "Green Lantern", //49
                                                      "The Joker", //50
                                                    ],
                                                  erradas2: const [
                                                      "Wade Wilson", //1
                                                      "Metropolis", //2
                                                      "Barbara Gordon", //3
                                                      "Barry Allen", //4
                                                      "Charada", //5
                                                      "John Stewart", //6
                                                      "Lex Luthor", //7
                                                      "Hal Jordan", //8
                                                      "Wally West", //9
                                                      "Vingadores", //10
                                                      "Pinguim", //11
                                                      "Aunt May", //12
                                                      "Marte", //13
                                                      "Hawkeye", //14
                                                      "Poison Ivy", //15
                                                      "Coringa", //16
                                                      "Gotham City", //17
                                                      "Superman", //18
                                                      "Caveira Vermelha", //19
                                                      "Atlantis", //20
                                                      "Alfredo Hitchcock", //21
                                                      "Jimmy Neutron", //22
                                                      "Doutor Octopus", //23
                                                      "Sue Storm", //24
                                                      "Savitar", //25
                                                      "Sith", //26
                                                      "Zatanna", //27
                                                      "Homer Simpson", //28
                                                      "Hera Venenosa", //29
                                                      "Venom", //30
                                                      "Harley Quinn", //31
                                                      "Thor", //32
                                                      "Loki", //33
                                                      "Thanos", //34
                                                      "Arrow", //35
                                                      "Wolverine", //36
                                                      "Flash Thompson", //37
                                                      "Wonder Woman", //38
                                                      "Mystique", //39
                                                      "Black Widow", //40
                                                      "Gorilla City", //41
                                                      "Lex Luthor", //42
                                                      "Bane", //43
                                                      "Deadpool", //44
                                                      "Black Panther", //45
                                                      "Magneto", //46
                                                      "Storm", //47
                                                      "Green Goblin", //48
                                                      "Silver Surfer", //49
                                                      "Doctor Doom", //50
                                                    ],
                                                  erradas3: const [
                                                      "Volverine", //1
                                                      "Central City", //2
                                                      "Lois Lane", //3
                                                      "John Diggle", //4
                                                      "Duende Verde", //5
                                                      "Guy Gardner", //6
                                                      "Coringa", //7
                                                      "Oliver Queen", //8
                                                      "Clark Kent", //9
                                                      "X-Men", //10
                                                      "Bruce Wayne", //11
                                                      "Martha Wayne", //12
                                                      "Planeta Apokolips", //13
                                                      "Flecha Verde", //14
                                                      "Cheetah", //15
                                                      "Kid Flash", //16
                                                      "Coast City", //17
                                                      "Mercúrio", //18
                                                      "Mister Freeze", //19
                                                      "New York City", //20
                                                      "Lucius Fox", //21
                                                      "Mary Jane Watson", //22
                                                      "Darkseid", //23
                                                      "Supergirl", //24
                                                      "Black Lightning", //25
                                                      "X-Force", //26
                                                      "Sinestro", //27
                                                      "Commissioner Gordon", //28
                                                      "Wonder Girl", //29
                                                      "Poison Ivy", //30
                                                      "Canário Negra", //31
                                                      "Hera Venenosa", //32
                                                      "Green Arrow", //33
                                                      "Captain Cold", //34
                                                      "Red Arrow", //35
                                                      "Beast Boy", //36
                                                      "Starfire", //37
                                                      "Plastic Man", //38
                                                      "Riddler", //39
                                                      "Red Hood", //40
                                                      "Gotham City", //41
                                                      "Ra's al Ghul", //42
                                                      "Harley Quinn", //43
                                                      "Harley Quinn", //44
                                                      "Arkham City", //45
                                                      "Scarecrow", //46
                                                      "Green Arrow", //47
                                                      "Deadshot", //48
                                                      "Batwoman", //49
                                                      "Black Mask", //50
                                                    ],
                                                  voltar: () {
                                                    setState(() {
                                                      telaInicial = false;
                                                      tela2TelaDosTemas = true;
                                                    });
                                                  },
                                                  generoDasPerguntas:
                                                      'Universo DC')
                                              : tela9Astronomia
                                                  ? Questionario(
                                                      listaDePerguntas: const [
                                                          "O que é uma estrela?", //1
                                                          "O que é uma galáxia?", //2
                                                          "Como os planetas se formam?", //3
                                                          "O que é uma constelação?", //4
                                                          "O que é a Via Láctea?", //5
                                                          "Qual é o planeta mais próximo do Sol?", //6
                                                          "O que é um buraco negro?", //7
                                                          "O que é uma nebulosa?", //8
                                                          "Qual é a maior lua de Júpiter?", //9
                                                          "O que é um cometa?", //10
                                                          "O que é um meteorito?", //11
                                                          "O que faz um telescópio?", //12
                                                          "O que é a luz de uma estrela?", //13
                                                          "O que é o cinturão de asteroides?", //14
                                                          "Como é medida a distância entre as estrelas?", //15
                                                          "O que é a aurora boreal?", //16
                                                          "Qual é a estrela mais brilhante no céu noturno?", //17
                                                          "O que são planetas gasosos?", //18
                                                          "O que é o zodíaco?", //19
                                                          "O que é uma estação espacial?", //20
                                                          "Qual é a teoria mais aceita sobre a formação do universo?", //21
                                                          "O que é uma supernova?", //22
                                                          "O que é a sonda espacial Voyager?", //23
                                                          "Qual é o planeta mais frio do sistema solar?", //24
                                                          "O que é uma estrela anã branca?", //25
                                                          "O que é um exoplaneta?", //26
                                                          "O que é uma estrela de nêutrons?", //27
                                                          "Qual é o planeta mais distante do Sol?", //28
                                                          "O que é a órbita de um planeta?", //29
                                                          "Como as estrelas produzem energia?" //30
                                                        ],
                                                      certas: const [
                                                          "Esfera de gás brilhante", //1
                                                          "Sistema de estrelas e planetas", //2
                                                          "Formam-se de discos de gás e poeira", //3
                                                          "Padrão de estrelas", //4
                                                          "Nossa galáxia", //5
                                                          "Mercúrio", //6
                                                          "Região gravitacional extrema", //7
                                                          "Nuvens interestelares", //8
                                                          "Ganimedes", //9
                                                          "Corpo gelado", //10
                                                          "Fragmento espacial", //11
                                                          "Amplia objetos distantes", //12
                                                          "Radiação eletromagnética", //13
                                                          "Região com muitos asteroides", //14
                                                          "Medida em anos-luz", //15
                                                          "Fenômeno nos polos", //16
                                                          "Sirius", //17
                                                          "Gigantes de gás", //18
                                                          "Região do céu", //19
                                                          "Laboratório no espaço", //20
                                                          "o Big-Bang", //21
                                                          "Explosão estelar", //22
                                                          "Sonda espacial da NASA", //23
                                                          "Planeta mais frio", //24
                                                          "Remanescente estelar", //25
                                                          "Orbitam outras estrelas", //26
                                                          "Relíquia estelar", //27
                                                          "Planeta mais distante", //28
                                                          "Trajetória de um planeta", //29
                                                          "Fusão nuclear", //30
                                                        ],
                                                      erradas1: const [
                                                          "Asteroide rochoso", //1
                                                          "Grupo de cometas", //2
                                                          "Nascem instantaneamente", //3
                                                          "Grupo de asteroides", //4
                                                          "Outra estrela", //5
                                                          "Saturno", //6
                                                          "Campo magnético forte", //7
                                                          "Oceano estelar", //8
                                                          "Lua de Marte", //9
                                                          "Planeta gasoso", //10
                                                          "Estrela brilhante", //11
                                                          "Encolhe objetos", //12
                                                          "Radiação sonora", //13
                                                          "Área livre de asteroides", //14
                                                          "Medida em quilômetros", //15
                                                          "Fenômeno no equador", //16
                                                          "Planeta mais brilhante à noite", //17
                                                          "Planetas rochosos", //18
                                                          "Região subterrânea", //19
                                                          "Oficina de reparo", //20
                                                          "Teoria da formação de asteroides", //21
                                                          "Silêncio estelar", //22
                                                          "Nave tripulada da NASA", //23
                                                          "Planeta mais quente", //24
                                                          "Estrela recém-nascida", //25
                                                          "Orbitam asteroides", //26
                                                          "Invenção estelar", //27
                                                          "Planeta mais próximo", //28
                                                          "Trajetória de um cometa", //29
                                                          "Divisão nuclear" //30
                                                        ],
                                                      erradas2: const [
                                                          "Nuvem de poeira estelar", //1
                                                          "Grupo de asteroides", //2
                                                          "Nascem espontaneamente", //3
                                                          "Grupo de cometas", //4
                                                          "Planeta desconhecido", //5
                                                          "Vênus", //6
                                                          "Zona de baixa gravidade", //7
                                                          "Mar sideral", //8
                                                          "Lua de Saturno", //9
                                                          "Estrela gelada", //10
                                                          "Nuvem de poeira", //11
                                                          "Distorce objetos distantes", //12
                                                          "Corrente elétrica", //13
                                                          "Área livre de sóis", //14
                                                          "Medida em metros", //15
                                                          "Evento no equador", //16
                                                          "Lua cheia", //17
                                                          "Planetas anões", //18
                                                          "Região subaquática", //19
                                                          "Estação de comunicação lunar", //20
                                                          "Teoria das manchas solares", //21
                                                          "Nada acontece", //22
                                                          "Estação espacial chinesa", //23
                                                          "Marte", //24
                                                          "Estrela recém-nascida", //25
                                                          "Orbitam asteroides", //26
                                                          "Invenção estelar", //27
                                                          "Planeta mais próximo", //28
                                                          "Trajetória de um cometa", //29
                                                          "Divisão nuclear" //30
                                                        ],
                                                      erradas3: const [
                                                          "Planeta oco", //1
                                                          "Aglomerado de asteroides", //2
                                                          "Resultado de eventos aleatórios", //3
                                                          "Conjunto de satélites", //4
                                                          "Constelação distante", //5
                                                          "Júpiter", //6
                                                          "Lugar de baixa gravidade", //7
                                                          "Mar espacial", //8
                                                          "Lua de Plutão", //9
                                                          "Estrela quente", //10
                                                          "Planeta anão", //11
                                                          "Distorce objetos próximos", //12
                                                          "Energia sonora", //13
                                                          "Área sem estrelas", //14
                                                          "Medida em segundos", //15
                                                          "Evento no deserto", //16
                                                          "Planeta mais escuro à noite", //17
                                                          "Planetas rochosos", //18
                                                          "Região submarina", //19
                                                          "Base militar extraterrestre", //20
                                                          "Teoria dos buracos negros", //21
                                                          "Colisão de galáxias", //22
                                                          "Nave espacial de turismo", //23
                                                          "Planeta mais quente", //24
                                                          "Estrela cadente", //25
                                                          "Perdem-se no espaço", //26
                                                          "Criatura espacial", //27
                                                          "Planeta mais próximo", //28
                                                          "Órbita de uma lua", //29
                                                          "Divisão atômica" //30
                                                        ],
                                                      voltar: () {
                                                        setState(() {
                                                          telaInicial = false;
                                                          tela2TelaDosTemas =
                                                              true;
                                                        });
                                                      },
                                                      generoDasPerguntas:
                                                          'Astronomia')
                                                  : tela10Jogos
                                                      ? Questionario(
                                                          listaDePerguntas: const [
                                                              "Qual é o jogo eletrônico mais vendido de todos os tempos?", //1
                                                              "Quem é o personagem principal de 'The Legend of Zelda' da Nintendo?", //2
                                                              "Em que ano foi lançado o primeiro jogo da franquia 'Super Mario'?", //3
                                                              "Qual é o jogo de batalha real desenvolvido pela Epic Games?", //4
                                                              "Quem é o criador de 'Minecraft'?", //5
                                                              "Qual é o nome do protagonista de 'The Witcher'?", //6
                                                              "Qual jogo popular apresenta um mundo de construção e sobrevivência com blocos?", //7
                                                              "Qual é o nome da série de jogos de tiro em primeira pessoa da Activision?", //8
                                                              "Que jogo de aventura segue as aventuras de Nathan Drake?", //9
                                                              "Qual jogo de estratégia é conhecido por seu modo 'Battle Royale'?", //10
                                                              "Quem é o personagem principal de 'Final Fantasy VII' da Square Enix?", //11
                                                              "Qual é o jogo de corrida de kart da Nintendo com personagens famosos?", //12
                                                              "Em que jogo você controla um assassino com uma lâmina oculta?", //13
                                                              "Qual é o jogo de quebra-cabeça que apresenta blocos caindo chamados Tetriminos?", //14
                                                              "Quem é o protagonista de 'Red Dead Redemption' da Rockstar Games?", //15
                                                              "Qual é o nome do estúdio que desenvolveu 'Fortnite'?", //16
                                                              "Que jogo de RPG apresenta um mundo mágico e monstros chamados Pokémon?", //17
                                                              "Qual é o jogo em que você controla um grupo de sobreviventes de um apocalipse zumbi?", //18
                                                              "Qual é o jogo de simulação de vida em que você cria e controla pessoas?", //19
                                                              "Quem é o personagem icônico da série 'Metal Gear Solid' da Konami?", //20
                                                              "Qual é o jogo de estratégia em tempo real com facções rivais?", //21
                                                              "Que jogo de tiro em equipe é conhecido por seus personagens coloridos e tiroteios?", //22
                                                              "Em que jogo de aventura você explora um mundo pós-apocalíptico como o Vault Dweller?", //23
                                                              "Qual é o jogo de plataforma onde um ouriço azul enfrenta o Dr. Robotnik?", //24
                                                              "Quem é o personagem principal de 'Resident Evil' da Capcom?", //25
                                                              "Qual é o nome do simulador de construção de cidades da Maxis?", //26
                                                              "Que jogo de estratégia de guerra é conhecido por sua jogabilidade em tempo real?", //27
                                                              "Em que jogo você luta contra invasões alienígenas como o Comandante Shepard?", //28
                                                              "Qual é o jogo de luta com personagens da Marvel e da Capcom?", //29
                                                              "Quem é o protagonista de 'Assassin's Creed' da Ubisoft?", //30
                                                              "Qual jogo de terror de sobrevivência ocorre em uma mansão assombrada?", //31
                                                              "Qual é o jogo de ação em que você assume o papel de um caçador de monstros?", //32
                                                              "Em que jogo você viaja por um mundo de blocos e cria estruturas?", //33
                                                              "Qual é o nome do jogo em que você assume o papel de um pássaro que não pode voar?", //34
                                                              "Quem é o personagem principal de 'BioShock' da 2K Games?", //35
                                                              "Qual é o jogo de tiro em primeira pessoa que apresenta um combate entre terroristas e contra-terroristas?", //36
                                                              "Que jogo de ação e aventura segue um herói mascarado em Hyrule?", //37
                                                              "Em que jogo você deve resolver quebra-cabeças para resgatar a princesa Peach?", //38
                                                              "Qual é o jogo de tiro online com um Battle Royale chamado 'Warzone'?", //39
                                                              "Quem é o protagonista de 'Dark Souls' da FromSoftware?", //40
                                                              "Qual é o jogo em que você cria e gerencia um parque de diversões?", //41
                                                              "Que jogo de estratégia de construção de cidades é conhecido por seus gráficos isométricos?", //42
                                                              "Em que jogo de aventura você luta contra criaturas do submundo como Kratos?", //43
                                                              "Qual é o nome do jogo de estratégia baseado em turnos com cartas colecionáveis?", //44
                                                              "Quem é o personagem principal de 'The Elder Scrolls V: Skyrim'?", //45
                                                              "Qual é o jogo de ação que segue a história de um caçador de caça-fantasmas?", //46
                                                              "Qual é o jogo de plataforma em que você ajuda um cavaleiro vazio a resgatar um reino?", //47
                                                              "Em que jogo de ação em mundo aberto você joga como um hacker?", //48
                                                              "Qual é o jogo de estratégia em que você constrói e gerencia uma civilização ao longo da história?", //49
                                                              "Quem é o protagonista da série 'Max Payne' da Remedy Entertainment?", //50
                                                            ],
                                                          certas: const [
                                                              //não é const (func no widget questionario)
                                                              "Tetris", //1
                                                              "Link", //2
                                                              "1985", //3
                                                              "Fortnite", //4
                                                              "Markus Persson", //5
                                                              "Geralt of Rivia", //6
                                                              "Minecraft", //7
                                                              "Call of Duty", //8
                                                              "Uncharted", //9
                                                              "PlayerUnknown's Battlegrounds (PUBG)", //10
                                                              "Cloud Strife", //11
                                                              "Mario Kart", //12
                                                              "Assassin's Creed", //13
                                                              "Tetris", //14
                                                              "John Marston", //15
                                                              "Epic Games", //16
                                                              "Pokémon", //17
                                                              "Left 4 Dead", //18
                                                              "The Sims", //19
                                                              "Solid Snake", //20
                                                              "StarCraft", //21
                                                              "Overwatch", //22
                                                              "Fallout", //23
                                                              "Sonic the Hedgehog", //24
                                                              "Leon S. Kennedy", //25
                                                              "SimCity", //26
                                                              "Age of Empires", //27
                                                              "Mass Effect", //28
                                                              "Marvel vs. Capcom", //29
                                                              "Altair Ibn-La'Ahad", //30
                                                              "Resident Evil", //31
                                                              "The Witcher", //32
                                                              "Minecraft", //33
                                                              "Flappy Bird", //34
                                                              "Jack Marston", //35
                                                              "Counter-Strike", //36
                                                              "The Legend of Zelda", //37
                                                              "Super Mario", //38
                                                              "Call of Duty: Warzone", //39
                                                              "The Chosen Undead", //40
                                                              "RollerCoaster Tycoon", //41
                                                              "Cities: Skylines", //42
                                                              "God of War", //43
                                                              "Hearthstone", //44
                                                              "Dovahkiin (Dragonborn)", //45
                                                              "Luigi's Mansion", //46
                                                              "Hollow Knight", //47
                                                              "Watch Dogs", //48
                                                              "Civilization", //49
                                                              "Max Payne", //50
                                                            ],
                                                          erradas1: const [
                                                              "Space Invaders", //1
                                                              "Donkey Kong", //2
                                                              "2005", //3
                                                              "Call of Duty: Black Ops 4", //4
                                                              "Bill Gates", //5
                                                              "Gollum", //6
                                                              "PUBG: Battlegrounds", //7
                                                              "Team Fortress 2", //8
                                                              "Uncharted 4: A Thief's End", //9
                                                              "Dota 2", //10
                                                              "Sora", //11
                                                              "Crash Team Racing", //12
                                                              "Splinter Cell", //13
                                                              "Super Mario", //14
                                                              "Cole Phelps", //15
                                                              "Blizzard Entertainment", //16
                                                              "Dragon Age: Inquisition", //17
                                                              "The Last of Us", //18
                                                              "Zynga Poker", //19
                                                              "Doom Slayer", //20
                                                              "Civilization VI", //21
                                                              "Rainbow Six Siege", //22
                                                              "Horizon Zero Dawn", //23
                                                              "Rayman", //24
                                                              "Claire Redfield", //25
                                                              "SimAnt", //26
                                                              "Europa Universalis IV", //27
                                                              "Fallout 4", //28
                                                              "Super Smash Bros.", //29
                                                              "Lara Croft", //30
                                                              "Amnesia: The Dark Descent", //31
                                                              "Dark Souls III", //32
                                                              "The Sims 4", //33
                                                              "Candy Crush", //34
                                                              "Sanction Muri", //35
                                                              "Destiny 2", //36
                                                              "Mega Man X", //37
                                                              "Super Mario Run", //38
                                                              "Fortnite: Save the World", //39
                                                              "Sonic Adventure", //40
                                                              "Clash Royale", //41
                                                              "The sims", //42
                                                              "Shadow of the Colossus", //43
                                                              "Uno", //44
                                                              "Samus Aran", //45
                                                              "Conker's Bad Fur Day", //46
                                                              "Celeste", //47
                                                              "Prey", //48
                                                              "Stronghold Crusader", //49
                                                              "Bioshock Infinite", //50
                                                            ],
                                                          erradas2: const [
                                                              "Pac-Man", //1
                                                              "Princess Zelda", //2
                                                              "1990", //3
                                                              "Apex Legends", //4
                                                              "Steve Jobs", //5
                                                              "Frodo Baggins", //6
                                                              "Fortnite", //7
                                                              "Battlefield", //8
                                                              "God of War", //9
                                                              "League of Legends", //10
                                                              "Mario", //11
                                                              "Sonic & All-Stars Racing Transformed", //12
                                                              "The Legend of Zelda", //13
                                                              "Space Invaders", //14
                                                              "Nathan Drake", //15
                                                              "Mojang", //16
                                                              "The Witcher 3: Wild Hunt", //17
                                                              "Dead Rising", //18
                                                              "Sims Social", //19
                                                              "Master Chief", //20
                                                              "Age of Mythology", //21
                                                              "Splatoon", //22
                                                              "The Elder Scrolls V: Skyrim", //23
                                                              "Bubsy 3D", //24
                                                              "Jill Valentine", //25
                                                              "SimFarm", //26
                                                              "Total War: Rome II", //27
                                                              "Bioshock", //28
                                                              "Street Fighter", //29
                                                              "Ezio Auditore", //30
                                                              "Alone in the Dark", //31
                                                              "Bloodborne", //32
                                                              "Roblox", //33
                                                              "Clash of Clans", //34
                                                              "Neldon Cross", //35
                                                              "Half-Life", //36
                                                              "Sekiro: Shadows Die Twice", //37
                                                              "Donkey Kong", //38
                                                              "Grand Theft Auto V", //39
                                                              "Duke Nukem Forever", //40
                                                              "FarCry", //41
                                                              "SimCity", //42
                                                              "Mega Man", //43
                                                              "QuizMultiTema", //44
                                                              "Link", //45
                                                              "Wario Land", //46
                                                              "Shovel Knight", //47
                                                              "Deus Ex", //48
                                                              "Age of Empires II", //49
                                                              "Gears of War", //50
                                                            ],
                                                          erradas3: const [
                                                              "Donkey Kong", //1
                                                              "Samus Aran", //2
                                                              "2000", //3
                                                              "FreeFire", //4
                                                              "Elon Musk", //5
                                                              "Harry Potter", //6
                                                              "Minecraft Dungeons", //7
                                                              "Titanfall", //8
                                                              "The Last of Us Part II", //9
                                                              "Apex Legends", //10
                                                              "Yoshi", //11
                                                              "Mario Party", //12
                                                              "Dishonored", //13
                                                              "Super Smash Bros.", //14
                                                              "Ezio Auditore", //15
                                                              "Minecraft", //16
                                                              "Fable III", //17
                                                              "Zombie Tsunami", //18
                                                              "FarmVille", //19
                                                              "Gordon Freeman", //20
                                                              "Age of Empires III", //21
                                                              "Paladins", //22
                                                              "Dying Light", //23
                                                              "Crash Bandicoot", //24
                                                              "Lara Croft", //25
                                                              "RollerCoaster Tycoon", //26
                                                              "Civilization V", //27
                                                              "Half-Life 2", //28
                                                              "Mortal Kombat", //29
                                                              "Henry Chinaski", //30
                                                              "Outlast", //31
                                                              "Kingdom Hearts", //32
                                                              "FIFA 22", //33
                                                              "Pong", //34
                                                              "Sulivar Neruda", //35
                                                              "Borderlands", //36
                                                              "Hollow Knight", //37
                                                              "Donkey Kong Country", //38
                                                              "Counter-Strike: Global Offensive", //39
                                                              "Star Fox", //40
                                                              "The last day on earth", //41
                                                              "Tropico 6", //42
                                                              "Monster Hunter", //43
                                                              "Temple Run", //44
                                                              "Spyro the Dragon", //45
                                                              "Banjo-Kazooie", //46
                                                              "Stardew Valley", //47
                                                              "Prey (2017)", //48
                                                              "Stronghold", //49
                                                              "The Division 2", //50
                                                            ],
                                                          voltar: () {
                                                            setState(() {
                                                              telaInicial =
                                                                  false;
                                                              tela2TelaDosTemas =
                                                                  true;
                                                            });
                                                          },
                                                          generoDasPerguntas:
                                                              'Jogos')
                                                      : tela11Geopolitica
                                                          ? Questionario(
                                                              listaDePerguntas: const [
                                                                  "O que é geopolítica?", //1
                                                                  "Quem são os atores geopolíticos?", //2
                                                                  "Qual é a importância das fronteiras?", //3
                                                                  "O que é a ONU?", //4
                                                                  "O que são alianças militares?", //5
                                                                  "O que é a Teoria do Realismo na geopolítica?", //6
                                                                  "O que é o equilíbrio de poder?", //7
                                                                  "O que é a OTAN?", //8
                                                                  "O que é a União Europeia (UE)?", //9
                                                                  "O que são conflitos étnicos?", //10
                                                                  "O que é a Primavera Árabe?", //11
                                                                  "O que é o Estado Islâmico (ISIS)?", //12
                                                                  "Qual é a situação na Península Coreana?", //13
                                                                  "O que é a Rota da Seda?", //14
                                                                  "O que é a guerra cibernética?", //15
                                                                  "O que é a Teoria do Caos na geopolítica?", //16
                                                                  "O que é a diplomacia?", //17
                                                                  "O que é um embargo?", //18
                                                                  "O que é a Doutrina Monroe?", //19
                                                                  "O que é uma superpotência?", //20
                                                                  "O que é a Teoria da Dependência?", //21
                                                                  "O que são blocos econômicos?", //22
                                                                  "O que é o Acordo de Paris?", //23
                                                                  "O que é o Acordo Nuclear com o Irã?", //24
                                                                  "O que é a Teoria do Pivot Asiático?", //25
                                                                  "O que é nacionalismo étnico?", //26
                                                                  "O que é a Zona Econômica Exclusiva (ZEE)?", //27
                                                                  "O que é a Paradiplomacia?", //28
                                                                  "O que é a geopolítica da energia?", //29
                                                                  "O que é a Doutrina de Segurança Nacional?", //30
                                                                  "O que é o Tratado INF?", //31
                                                                  "O que é o Tratado START?", //32
                                                                  "O que é a Teoria do Heartland?", //33
                                                                  "O que é a Teoria do Rimland?", //34
                                                                  "O que é a Teoria da Cordilheira?", //35
                                                                  "O que é o Islã político?", //36
                                                                  "O que é a Guerra Fria?", //37
                                                                  "O que é a Teoria da Janela Quebrada?", //38
                                                                  "O que é o Mar do Sul da China?", //39
                                                                  "O que é a Doutrina de Truman?", //40
                                                                  "O que é o efeito dominó na geopolítica?", //41
                                                                  "O que é a política de portas abertas?", //42
                                                                  "O que são resoluções do Conselho de Segurança da ONU?", //43
                                                                  "O que é a geopolítica das águas?", //44
                                                                  "O que são as Ilhas Falkland/Malvinas?", //45
                                                                  "O que é o Tratado de Não Proliferação Nuclear?", //46
                                                                  "O que é a Organização de Cooperação de Xangai?", //47
                                                                  "O que é a Organização dos Países Exportadores de Petróleo (OPEP)?", //48
                                                                  "O que é o terrorismo internacional?", //49
                                                                  "O que é o processo de paz no Oriente Médio?" //50
                                                                ],
                                                              certas: const [
                                                                  "Estudo das relações internacionais.", //1
                                                                  "Países, organizações e grupos.", //2
                                                                  "Delimitam territórios e soberania.", //3
                                                                  "Organização das Nações Unidas.", //4
                                                                  "Acordos de defesa mútua.", //5
                                                                  "Estado busca interesse próprio.", //6
                                                                  "Distribuição de influência.", //7
                                                                  "Aliança militar ocidental.", //8
                                                                  "União econômica e política.", //9
                                                                  "Disputas baseadas em etnia.", //10
                                                                  "Protestos no mundo árabe.", //11
                                                                  "Grupo extremista islâmico.", //12
                                                                  "Divisão e tensões.", //13
                                                                  "Rota comercial histórica.", //14
                                                                  "Conflitos no ciberespaço.", //15
                                                                  "Instabilidade geopolítica.", //16
                                                                  "Negociação entre estados.", //17
                                                                  "Restrição comercial.", //18
                                                                  "Intervenção dos EUA.", //19
                                                                  "Domínio global.", //20
                                                                  "Exploração econômica.", //21
                                                                  "Cooperação econômica regional.", //22
                                                                  "Luta contra mudanças climáticas.", //23
                                                                  "Restrições nucleares.", //24
                                                                  "Foco dos EUA na Ásia.", //25
                                                                  "Ênfase na etnia.", //26
                                                                  "Direitos marítimos.", //27
                                                                  "Ações de regiões autônomas.", //28
                                                                  "Recursos energéticos.", //29
                                                                  "Política de segurança.", //30
                                                                  "Desarmamento de mísseis.", //31
                                                                  "Redução de armas nucleares.", //32
                                                                  "Centralidade geopolítica.", //33
                                                                  "Litoral estratégico.", //34
                                                                  "Barreiras naturais.", //35
                                                                  "Religião na política.", //36
                                                                  "Confronto EUA-URSS.", //37
                                                                  "Manutenção da ordem.", //38
                                                                  "Disputas territoriais.", //39
                                                                  "Contenção do comunismo.", //40
                                                                  "Propagação de influência.", //41
                                                                  "Acesso livre ao comércio.", //42
                                                                  "Decisões internacionais.", //43
                                                                  "Recursos aquáticos.", //44
                                                                  "Disputa territorial.", //45
                                                                  "Prevenção de armas nucleares.", //46
                                                                  "Cooperação regional.", //47
                                                                  "Cartel de petróleo.", //48
                                                                  "Ataques globais.", //49
                                                                  "Negociações para estabilidade." //50
                                                                ],
                                                              erradas1: const [
                                                                  "Estudo das relações interplanetárias.", //1
                                                                  "Cidades e vilarejos.", //2
                                                                  "São irrelevantes na geopolítica.", //3
                                                                  "Organização que promove Guerras", //4
                                                                  "Acordos comerciais.", //5
                                                                  "Estado busca a paz mundial.", //6
                                                                  "Desigualdade de poder.", //7
                                                                  "Aliança militar Global.", //8
                                                                  "União militar e apolítica.", //9
                                                                  "Disputas de recursos naturais.", //10
                                                                  "Protestos no Japão.", //11
                                                                  "Grupo político moderado.", //12
                                                                  "Unificação pacífica.", //13
                                                                  "Rota comercial ultrapassada.", //14
                                                                  "Conflitos no espaço exterior.", //15
                                                                  "Estabilidade política.", //16
                                                                  "Confronto entre estados.", //17
                                                                  "Promoção comercial.", //18
                                                                  "Intervenção humanitária.", //19
                                                                  "Influência regional.", //20
                                                                  "Cooperação econômica global.", //21
                                                                  "Bloqueio econômico.", //22
                                                                  "Acordo climático global.", //23
                                                                  "Restrições comerciais.", //24
                                                                  "Foco da Rússia na Ásia.", //25
                                                                  "Ênfase na religião.", //26
                                                                  "Limites territoriais.", //27
                                                                  "Ações de governos centrais.", //28
                                                                  "Recursos agrícolas.", //29
                                                                  "Diplomacia comercial.", //30
                                                                  "Acordo de redução de impostos.", //31
                                                                  "Aumento de armas nucleares.", //32
                                                                  "Área sem relevância geopolítica.", //33
                                                                  "Área desabitada.", //34
                                                                  "Região sem importância.", //35
                                                                  "Ateísmo na política.", //36
                                                                  "Confronto EUA-Brasil.", //37
                                                                  "Criação de conflitos.", //38
                                                                  "Disputas espaciais.", //39
                                                                  "Apoio ao comunismo.", //40
                                                                  "Isolamento de influência.", //41
                                                                  "Barreiras comerciais.", //42
                                                                  "Resoluções unilaterais.", //43
                                                                  "Recursos terrestres.", //44
                                                                  "Disputa oceânica.", //45
                                                                  "Prevenção de armas químicas.", //46
                                                                  "Organização de exportadores agrícolas.", //47
                                                                  "Cartel de diamantes.", //48
                                                                  "Ataques cibernéticos.", //49
                                                                  "Negociações para conflitos." //50
                                                                ],
                                                              erradas2: const [
                                                                  "Pesquisa de fenômenos climáticos.", //1
                                                                  "Organizações religiosas.", //2
                                                                  "Definem apenas culturas.", //3
                                                                  "Grupo ambientalista internacional.", //4
                                                                  "Negociações diplomáticas.", //5
                                                                  "Estado busca harmonia global.", //6
                                                                  "Equilíbrio instável.", //7
                                                                  "Aliança militar russa.", //8
                                                                  "União política e militar.", //9
                                                                  "Disputas linguísticas.", //10
                                                                  "Protestos na Europa.", //11
                                                                  "Grupo nacionalista.", //12
                                                                  "Conflito e divisão contínuos.", //13
                                                                  "Rota comercial na Idade Média.", //14
                                                                  "Conflitos em águas internacionais.", //15
                                                                  "Instabilidade financeira.", //16
                                                                  "Cooperação comercial.", //17
                                                                  "Controle de armas.", //18
                                                                  "Isolamento político.", //19
                                                                  "Influência regional e global.", //20
                                                                  "Colaboração econômica regional.", //21
                                                                  "Cooperação comercial e militar.", //22
                                                                  "Acordo comercial regional.", //23
                                                                  "Sanções econômicas.", //24
                                                                  "Foco da Rússia na Europa.", //25
                                                                  "Ênfase na língua na política.", //26
                                                                  "Delimitação terrestre.", //27
                                                                  "Ações de organizações não governamentais.", //28
                                                                  "Recursos tecnológicos.", //29
                                                                  "Diplomacia de guerra.", //30
                                                                  "Aumento de mísseis nucleares.", //31
                                                                  "Desenvolvimento de armas nucleares.", //32
                                                                  "Área estratégica.", //33
                                                                  "Região em disputa.", //34
                                                                  "Região esquecida.", //35
                                                                  "Secularismo na política.", //36
                                                                  "Confronto EUA-China.", //37
                                                                  "Intensificação de conflitos.", //38
                                                                  "Disputas no espaço sideral.", //39
                                                                  "Apoio ao autoritarismo.", //40
                                                                  "Preferência por influência única.", //41
                                                                  "Protecionismo comercial.", //42
                                                                  "Resoluções internacionais.", //43
                                                                  "Recursos hídricos.", //44
                                                                  "Disputa no deserto.", //45
                                                                  "Prevenção de armas nucleares e convencionais.", //46
                                                                  "Cooperação global ambiental.", //47
                                                                  "Cartel de carvão e urânio.", //48
                                                                  "Ataques cibernéticos e biológicos.", //49
                                                                  "Negociações para confronto." //50
                                                                ],
                                                              erradas3: const [
                                                                  "Estudo da culinária internacional.", //1
                                                                  "Empresas de entretenimento.", //2
                                                                  "Não têm relevância na geopolítica.", //3
                                                                  "Grupo de astronautas.", //4
                                                                  "Acordos comerciais e culturais.", //5
                                                                  "Estado busca cooperação global.", //6
                                                                  "Equilíbrio de comércio.", //7
                                                                  "Aliança militar oriental.", //8
                                                                  "União econômica e apolítica.", //9
                                                                  "Disputas linguísticas e culturais.", //10
                                                                  "Protestos na China.", //11
                                                                  "Grupo político progressista.", //12
                                                                  "Unificação pacífica e fraterna.", //13
                                                                  "Rota comercial moderna.", //14
                                                                  "Conflitos no espaço aéreo.", //15
                                                                  "Estabilidade econômica global.", //16
                                                                  "Cooperação diplomática.", //17
                                                                  "Embarque de cargas.", //18
                                                                  "Intervenção cultural.", //19
                                                                  "Influência local.", //20
                                                                  "Confronto comercial global.", //21
                                                                  "Bloqueio econômico global.", //22
                                                                  "Acordo econômico global.", //23
                                                                  "Restrições econômicas.", //24
                                                                  "Foco da China na Europa.", //25
                                                                  "Ênfase na educação na política.", //26
                                                                  "Delimitação terrestre e marítima.", //27
                                                                  "Ações de governos nacionais.", //28
                                                                  "Recursos naturais.", //29
                                                                  "Diplomacia de cooperação.", //30
                                                                  "Aumento de armas convencionais.", //31
                                                                  "Redução de armas biológicas.", //32
                                                                  "Área com potencial econômico.", //33
                                                                  "Região despovoada.", //34
                                                                  "Área crítica.", //35
                                                                  "Ateísmo na cultura.", //36
                                                                  "Confronto EUA-Rússia.", //37
                                                                  "Manutenção do status quo.", //38
                                                                  "Disputas comerciais.", //39
                                                                  "Apoio à liberdade.", //40
                                                                  "Equilíbrio de poder regional.", //41
                                                                  "Promoção do livre comércio.", //42
                                                                  "Decisões unilaterais.", //43
                                                                  "Recursos tecnológicos.", //44
                                                                  "Disputa no espaço sideral.", //45
                                                                  "Prevenção de armas químicas e biológicas.", //46
                                                                  "Cooperação global econômica.", //47
                                                                  "Cartel de metais preciosos.", //48
                                                                  "Ataques militares convencionais.", //49
                                                                  "Negociações para guerra." //50
                                                                ],
                                                              voltar: () {
                                                                setState(() {
                                                                  telaInicial =
                                                                      false;
                                                                  tela2TelaDosTemas =
                                                                      true;
                                                                });
                                                              },
                                                              generoDasPerguntas:
                                                                  'Geopolítica')
                                                          : tela12ArteEMusica
                                                              ? Questionario(
                                                                  listaDePerguntas: const [
                                                                      "Quem pintou a 'Mona Lisa'?", //1
                                                                      "Quem é o autor de 'A Noite Estrelada'?", //2
                                                                      "O que é uma escultura abstrata?", //3
                                                                      "Quem é o autor da 'Guernica'?", //4
                                                                      "Qual é a origem do hip-hop?", //5
                                                                      "Quem é considerado o 'rei do pop'?", //6
                                                                      "Quem é o autor de 'O Grito'?", //7
                                                                      "O que é uma exposição de arte?", //8
                                                                      "Quem é o famoso artista do movimento pop art?", //9
                                                                      "O que é o cubismo?", //10
                                                                      "Quem é o criador do 'Retrato de Dora Maar'?", //11
                                                                      "O que é um artista plástico?", //12
                                                                      "Quem é o autor de 'O Beijo'?", //13
                                                                      "O que é um mural de arte urbana?", //14
                                                                      "Quem é o pintor de 'As Senhoritas de Avignon'?", //15
                                                                      "O que é uma escultura cinética?", //16
                                                                      "Quem é o 'rei do rock'?", //17
                                                                      "O que é uma instalação artística?", //18
                                                                      "Quem é o autor de 'A Última Ceia'?", //19
                                                                      "O que é um graffiti?", //20
                                                                      "Quem é a pintora das 'Flores' famosas?", //21
                                                                      "O que é uma banda de garagem?", //22
                                                                      "Quem é o autor da 'Vitória de Samotrácia'?", //23
                                                                      "O que é a dança clássica?", //24
                                                                      "Quem é o autor de 'O Nascimento de Vênus'?", //25
                                                                      "O que é um movimento artístico?", //26
                                                                      "Quem é o compositor de 'A Quinta Sinfonia'?", //27
                                                                      "O que é um autorretrato?", //28
                                                                      "Quem é o autor do 'David' em Florença?", //29
                                                                      "O que é uma exposição de arte moderna?", //30
                                                                      "Quem é o rei do reggae?", //31
                                                                      "O que é uma peça teatral?", //32
                                                                      "Quem é o autor de 'As Meninas'?", //33
                                                                      "O que é uma arte digital?", //34
                                                                      "Quem é o autor da 'Máquina Abstrata'?", //35
                                                                      "O que é uma orquestra sinfônica?", //36
                                                                      "Quem é o compositor de 'A Nona Sinfonia'?", //37
                                                                      "O que é um mural de graffiti?", //38
                                                                      "Quem é o autor de 'A Persistência da Memória'?", //39
                                                                      "O que é uma dança contemporânea?", //40
                                                                      "Quem é o autor da 'Vitória de Samotrácia'?", //41
                                                                      "O que é um autorretrato?", //42
                                                                      "Quem é o rei do reggae?", //43
                                                                      "O que é uma peça teatral?", //44
                                                                      "Quem é o autor de 'As Meninas'?", //45
                                                                      "O que é uma arte digital?", //46
                                                                      "Quem é o autor da 'Máquina Abstrata'?", //47
                                                                      "O que é uma orquestra sinfônica?", //48
                                                                      "Quem é o compositor de 'A Nona Sinfonia'?", //49
                                                                      "O que é um mural de graffiti?" //50
                                                                    ],
                                                                  certas: const [
                                                                      "Leonardo da Vinci", //1
                                                                      "Vincent van Gogh", //2
                                                                      "Escultura sem figuras reconhecíveis", //3
                                                                      "Pablo Picasso", //4
                                                                      "Bronx, Nova York", //5
                                                                      "Michael Jackson", //6
                                                                      "Edvard Munch", //7
                                                                      "Exibição pública de arte", //8
                                                                      "Andy Warhol", //9
                                                                      "Movimento artístico abstrato", //10
                                                                      "Pablo Picasso", //11
                                                                      "Criador de arte visual", //12
                                                                      "Gustav Klimt", //13
                                                                      "Arte em espaços urbanos", //14
                                                                      "Pablo Picasso", //15
                                                                      "Escultura em movimento", //16
                                                                      "Elvis Presley", //17
                                                                      "Obra de arte específica para um espaço", //18
                                                                      "Leonardo da Vinci", //19
                                                                      "Arte em espaços públicos", //20
                                                                      "Georgia O'Keeffe", //21
                                                                      "Banda amadora", //22
                                                                      "Desconhecido", //23
                                                                      "Dança clássica europeia", //24
                                                                      "Sandro Botticelli", //25
                                                                      "Tendência artística", //26
                                                                      "Ludwig van Beethoven", //27
                                                                      "Retrato próprio", //28
                                                                      "Michelangelo", //29
                                                                      "Exposição de arte contemporânea", //30
                                                                      "Bob Marley", //31
                                                                      "Peça teatral", //32
                                                                      "Diego Velázquez", //33
                                                                      "Arte digital", //34
                                                                      "Francis Picabia", //35
                                                                      "Conjunto de músicos", //36
                                                                      "Ludwig van Beethoven", //37
                                                                      "Arte urbana pintada", //38
                                                                      "Salvador Dalí", //39
                                                                      "Dança contemporânea", //40
                                                                      "Desconhecido", //41
                                                                      "Retrato próprio", //42
                                                                      "Bob Marley", //43
                                                                      "Apresentação teatral ao vivo", //44
                                                                      "Diego Velázquez", //45
                                                                      "Arte digital", //46
                                                                      "Francis Picabia", //47
                                                                      "Conjunto de músicos", //48
                                                                      "Ludwig van Beethoven", //49
                                                                      "Arte urbana pintada" //50
                                                                    ],
                                                                  erradas1: const [
                                                                      "Vincent van Gogh", //1
                                                                      "Pablo Picasso", //2
                                                                      "Pintura morderna", //3
                                                                      "Vincent van Gogh", //4
                                                                      "Brooklyn, Califórnia", //5
                                                                      "Elton John", //6
                                                                      "Claude Monet", //7
                                                                      "Leilão de arte", //8
                                                                      "Leonardo da Vinci", //9
                                                                      "Renascimento italiano", //10
                                                                      "Vincent van Gogh", //11
                                                                      "Escultor famoso", //12
                                                                      "Frida Kahlo", //13
                                                                      "Arte em museus", //14
                                                                      "Sandro Botticelli", //15
                                                                      "Escultura em mármore", //16
                                                                      "The Beatles", //17
                                                                      "Quadro emoldurado", //18
                                                                      "Rembrandt", //19
                                                                      "Arte em galerias", //20
                                                                      "Pablo Picasso", //21
                                                                      "Banda de rock famosa", //22
                                                                      "Artista anônimo", //23
                                                                      "Dança de rua", //24
                                                                      "Michelangelo", //25
                                                                      "Estilo único", //26
                                                                      "Wolfgang Amadeus Mozart", //27
                                                                      "Pintura de paisagem", //28
                                                                      "Leonardo da Vinci", //29
                                                                      "Exposição de arte renascentista", //30
                                                                      "Elvis Presley", //31
                                                                      "Comédia de stand-up", //32
                                                                      "Leonardo da Vinci", //33
                                                                      "Escultura clássica", //34
                                                                      "Vincent van Gogh", //35
                                                                      "Músico solo", //36
                                                                      "Johann Sebastian Bach", //37
                                                                      "Arte abstrata", //38
                                                                      "Pablo Picasso", //39
                                                                      "Dança clássica", //40
                                                                      "Artista famoso", //41
                                                                      "Retrato de outra pessoa", //42
                                                                      "Michael Jackson", //43
                                                                      "Filme de animação", //44
                                                                      "Pierre-Auguste Renoir", //45
                                                                      "Escultura em mármore", //46
                                                                      "Pablo Picasso", //47
                                                                      "Compositor famoso", //48
                                                                      "Wolfgang Amadeus Mozart", //49
                                                                      "Arte abstrata" //50
                                                                    ],
                                                                  erradas2: const [
                                                                      "Adolf Hitler", //1
                                                                      "Leonardo Da Vinci", //2
                                                                      "Pintura clássica", //3
                                                                      "Salvador Dalí", //4
                                                                      "Manhattan, Nova York", //5
                                                                      "David Bowie", //6
                                                                      "Paul Cézanne", //7
                                                                      "Feira de artesanato", //8
                                                                      "Claude Monet", //9
                                                                      "Realismo artístico", //10
                                                                      "Pierre-Auguste Renoir", //11
                                                                      "Escultor renomado", //12
                                                                      "Jackson Pollock", //13
                                                                      "Arte em espaços fechados", //14
                                                                      "Henri Matisse", //15
                                                                      "Escultura cinética", //16
                                                                      "Elton John", //17
                                                                      "Escultura clássica", //18
                                                                      "Vincent van Gogh", //19
                                                                      "Arte contemporânea", //20
                                                                      "Jackson Pollock", //21
                                                                      "Orquestra de câmara", //22
                                                                      "Elton John", //23
                                                                      "É uma dança moderna", //24
                                                                      "Pablo Picasso", //25
                                                                      "Cubismo", //26
                                                                      "Johann Sebastian Bach", //27
                                                                      "Retrato clássico", //28
                                                                      "Rembrandt", //29
                                                                      "Exposição de arte clássica", //30
                                                                      "David Bowie", //31
                                                                      "Ópera", //32
                                                                      "Salvador Dalí", //33
                                                                      "Pintura abstrata", //34
                                                                      "Claude Monet", //35
                                                                      "Banda de Rock", //36
                                                                      "Michael Jackson", //37
                                                                      "Escultura em mármore", //38
                                                                      "Georgia O'Keeffe", //39
                                                                      "Dança pré-histórica", //40
                                                                      "Pintor renomado", //41
                                                                      "Arte contemporânea", //42
                                                                      "Bob Dylan", //43
                                                                      "Apresentação de teatro", //44
                                                                      "Edgar Degas", //45
                                                                      "Arte abstrata", //46
                                                                      "René Magritte", //47
                                                                      "Compositor clássico", //48
                                                                      "Miles Davis", //49
                                                                      "Escultura em mármore" //50
                                                                    ],
                                                                  erradas3: const [
                                                                      "Rococó", //1
                                                                      "Pintor contemporâneo", //2
                                                                      "Escultura pré-histórica", //3
                                                                      "Frida Kahlo", //4
                                                                      "Los Angeles, Califórnia", //5
                                                                      "Mozart", //6
                                                                      "Henri Matisse", //7
                                                                      "Feira de antiguidades", //8
                                                                      "Rembrandt", //9
                                                                      "Arte impressionista", //10
                                                                      "Michelangelo", //11
                                                                      "Arquiteto famoso", //12
                                                                      "Vincent van Gogh", //13
                                                                      "Arte em espaços privados", //14
                                                                      "Piet Mondrian", //15
                                                                      "Escultura clássica", //16
                                                                      "Madonna", //17
                                                                      "Pintura abstrata", //18
                                                                      "Mona Lisa", //19
                                                                      "Renascimento italiano", //20
                                                                      "Vincent van Gogh", //21
                                                                      "Ballet clássico", //22
                                                                      "Pintor renomado", //23
                                                                      "Dança contemporânea", //24
                                                                      "Salvador Dalí", //25
                                                                      "Pintura a óleo", //26
                                                                      "Michael Jackson", //27
                                                                      "Obra de arte única", //28
                                                                      "Claude Monet", //29
                                                                      "Arte abstrata", //30
                                                                      "Elton John", //31
                                                                      "Apresentação teatral ao vivo", //32
                                                                      "Pablo Picasso", //33
                                                                      "Escultura cinética", //34
                                                                      "Leonardo da Vinci", //35
                                                                      "Banda de jazz", //36
                                                                      "Andy Warhol", //37
                                                                      "Escultura em madeira", //38
                                                                      "Frida Kahlo", //39
                                                                      "Música clássica", //40
                                                                      "Artista iniciante", //41
                                                                      "Retrato de animal", //42
                                                                      "John Lennon", //43
                                                                      "Exposição de fotografia", //44
                                                                      "Georges Seurat", //45
                                                                      "Arte em cerâmica", //46
                                                                      "Vik Muniz", //47
                                                                      "Pintura renascentista", //48
                                                                      "Ballet contemporâneo", //49
                                                                      "Sculpture cinética" //50
                                                                    ],
                                                                  voltar: () {
                                                                    setState(
                                                                        () {
                                                                      telaInicial =
                                                                          false;
                                                                      tela2TelaDosTemas =
                                                                          true;
                                                                    });
                                                                  },
                                                                  generoDasPerguntas:
                                                                      'Arte e Música')
                                                              : tela13MitologiaGrega
                                                                  ? Questionario(
                                                                      listaDePerguntas: const [
                                                                          "Quem é o deus do trovão na mitologia grega?", //1
                                                                          "Quem é a deusa da sabedoria e da estratégia?", //2
                                                                          "Qual é o nome do herói que derrotou o Minotauro?", //3
                                                                          "Quem é a deusa do amor e da beleza?", //4
                                                                          "Quem é o deus do mar na mitologia grega?", //5
                                                                          "Qual é o nome do deus do sol e da poesia?", //6
                                                                          "Quem é o titã que roubou o fogo para os humanos?", //7
                                                                          "Qual é o nome da deusa da colheita?", //8
                                                                          "Quem é o deus dos mortos e do submundo?", //9
                                                                          "Quem é o herói conhecido por matar a Medusa?", //10
                                                                          "Qual é o nome da deusa da caça e da virgindade?", //11
                                                                          "Quem é o deus do vinho e das festas?", //12
                                                                          "Qual é o nome do herói que liderou os Argonautas em busca do Velocino de Ouro?", //13
                                                                          "Quem é o deus mensageiro dos deuses?", //14
                                                                          "Qual é o nome do rei dos deuses na mitologia grega?", //15
                                                                          "Quem é o titã que é o pai de Zeus e seus irmãos?", //16
                                                                          "Qual é o nome do cavalo alado que nasceu do sangue da Medusa decapitada?", //17
                                                                          "Quem é a deusa da justiça e da lei?", //18
                                                                          "Quem é o deus do comércio e dos viajantes?", //19
                                                                          "Qual é o nome do titã que segura o céu sobre os ombros?", //20
                                                                          "Quem é o herói que realizou os doze trabalhos?", //21
                                                                          "Quem é o deus do amor e do desejo sexual?", //22
                                                                          "Qual é o nome da deusa da vingança?", //23
                                                                          "Quem é o deus do fogo e da forja?", //24
                                                                          "Quem é o deus das artes e da música?", //25
                                                                          "Qual é o nome da deusa da discórdia?", //26
                                                                          "Quem é o herói conhecido por sua força extraordinária?", //27
                                                                          "Quem é o deus dos ventos na mitologia grega?", //28
                                                                          "Qual é o nome do rei de Tróia durante a Guerra de Troia?", //29
                                                                          "Quem é o deus da medicina e da cura?" //30
                                                                        ],
                                                                      certas: const [
                                                                          "Zeus", //1
                                                                          "Atena", //2
                                                                          "Teseu", //3
                                                                          "Afrodite", //4
                                                                          "Poseidon", //5
                                                                          "Apolo", //6
                                                                          "Prometeu", //7
                                                                          "Deméter", //8
                                                                          "Hades", //9
                                                                          "Perseu", //10
                                                                          "Ártemis", //11
                                                                          "Dionísio", //12
                                                                          "Jasão", //13
                                                                          "Hermes", //14
                                                                          "Zeus", //15
                                                                          "Cronos", //16
                                                                          "Pégaso", //17
                                                                          "Têmis", //18
                                                                          "Hermes", //19
                                                                          "Atlas", //20
                                                                          "Hércules", //21
                                                                          "Eros", //22
                                                                          "Nêmesis", //23
                                                                          "Hefesto", //24
                                                                          "Apolo", //25
                                                                          "Éris", //26
                                                                          "Hércules", //27
                                                                          "Eolo", //28
                                                                          "Príamo", //29
                                                                          "Asclépio" //30
                                                                        ],
                                                                      erradas1: const [
                                                                          "Hércules", //1
                                                                          "Afrodite", //2
                                                                          "Aquiles", //3
                                                                          "Hera", //4
                                                                          "Ares", //5
                                                                          "Dionísio", //6
                                                                          "Epimeteu", //7
                                                                          "Hera", //8
                                                                          "Hermes", //9
                                                                          "Teseu", //10
                                                                          "Hera", //11
                                                                          "Zeus", //12
                                                                          "Perseu", //13
                                                                          "Hades", //14
                                                                          "Hades", //15
                                                                          "Urano", //16
                                                                          "Cérbero", //17
                                                                          "Nêmesis", //18
                                                                          "Hades", //19
                                                                          "Prometeu", //20
                                                                          "Teseu", //21
                                                                          "Pan", //22
                                                                          "Éris", //23
                                                                          "Ares", //24
                                                                          "Dionísio", //25
                                                                          "Héstia", //26
                                                                          "Perseu", //27
                                                                          "Bóreas", //28
                                                                          "Heitor", //29
                                                                          "Hipócrates" //30
                                                                        ],
                                                                      erradas2: const [
                                                                          "Hera", //1
                                                                          "Ares", //2
                                                                          "Perseu", //3
                                                                          "Deméter", //4
                                                                          "Hermes", //5
                                                                          "Hades", //6
                                                                          "Pandora", //7
                                                                          "Atena", //8
                                                                          "Apolo", //9
                                                                          "Héracles", //10
                                                                          "Deméter", //11
                                                                          "Atena", //12
                                                                          "Héracles", //13
                                                                          "Dionísio", //14
                                                                          "Posídon", //15
                                                                          "Poseidon", //16
                                                                          "Medusa", //17
                                                                          "Íris", //18
                                                                          "Zeus", //19
                                                                          "Teseu", //20
                                                                          "Ulisses", //21
                                                                          "Dionísio", //22
                                                                          "Héstia", //23
                                                                          "Hermes", //24
                                                                          "Demétris", //25
                                                                          "Perséfone", //26
                                                                          "Aquiles", //27
                                                                          "Zéfiro", //28
                                                                          "Agamemnon", //29
                                                                          "Aristóteles" //30
                                                                        ],
                                                                      erradas3: const [
                                                                          "Afrodite", //1
                                                                          "Zeus", //2
                                                                          "Hércules", //3
                                                                          "Apolo", //4
                                                                          "Deméter", //5
                                                                          "Zeus", //6
                                                                          "Postomeu", //7
                                                                          "Ares", //8
                                                                          "Dionísio", //9
                                                                          "Meseu", //10
                                                                          "Hermes", //11
                                                                          "Deméter", //12
                                                                          "Afrodite", //13
                                                                          "Hera", //14
                                                                          "Ares", //15
                                                                          "Zeus", //16
                                                                          "Hera", //17
                                                                          "Apolo", //18
                                                                          "Deméter", //19
                                                                          "Zeus", //20
                                                                          "Hades", //21
                                                                          "Deméter", //22
                                                                          "Afrodite", //23
                                                                          "Apolo", //24
                                                                          "Zeus", //25
                                                                          "Ares", //26
                                                                          "Deméter", //27
                                                                          "Apolo", //28
                                                                          "Hades", //29
                                                                          "Afrodite" //30
                                                                        ],
                                                                      voltar:
                                                                          () {
                                                                        setState(
                                                                            () {
                                                                          telaInicial =
                                                                              false;
                                                                          tela2TelaDosTemas =
                                                                              true;
                                                                        });
                                                                      },
                                                                      generoDasPerguntas:
                                                                          'Mitologia Grega')
                                                                  : tela14CulturaPop
                                                                      ? Questionario(
                                                                          listaDePerguntas: const [
                                                                              "Quem é o protagonista de 'Star Wars'?", //1
                                                                              "Qual é a primeira franquia de super-heróis da Marvel?", //2
                                                                              "Quem é o criador do personagem Batman?", //3
                                                                              "Qual é o nome do famoso bruxo de óculos e cicatriz na testa?", //4
                                                                              "Em que década a série 'Stranger Things' se passa?", //5
                                                                              "Quem é a protagonista da série 'The Hunger Games'?", //6
                                                                              "Qual é o nome da nave espacial de Han Solo em 'Star Wars'?", //7
                                                                              "Qual é a banda de rock liderada por Mick Jagger?", //8
                                                                              "Quem é a cantora conhecida como 'Rainha do Pop'?", //9
                                                                              "Qual é o nome do famoso encanador da Nintendo?", //10
                                                                              "Qual é o diretor de 'Jurassic Park'?", //11
                                                                              "Qual é a franquia de videogame com criaturas chamadas 'Pokémon'?", //12
                                                                              "Quem interpretou o agente 007 James Bond em '007 - Skyfall'?", //13
                                                                              "Qual é o nome da protagonista da série 'Buffy, a Caça-Vampiros'?", //14
                                                                              "Qual é a primeira adaptação cinematográfica da série 'Harry Potter'?", //15
                                                                              "Quem é o criador do universo Marvel?", //16
                                                                              "Qual é o nome do personagem principal da série 'The Big Bang Theory'?", //17
                                                                              "Em que filme a frase 'May the Force be with you' é famosa?", //18
                                                                              "Qual é o nome da série de animação sobre uma esponja do mar?", //19
                                                                              "Quem é o personagem principal de 'O Senhor dos Anéis'?", //20
                                                                              "Qual é o apelido do vilão de 'Batman - O Cavaleiro das Trevas'?", //21
                                                                              "Quem é a criadora da série de livros 'Harry Potter'?", //22
                                                                              "Qual é a série de TV baseada em uma guerra de tronos?", //23
                                                                              "Quem é o diretor de 'Avatar'?", //24
                                                                              "Qual é o nome da heroína dos quadrinhos com laço mágico?", //25
                                                                              "Em que filme o personagem Jack Dawson morre no final?", //26
                                                                              "Quem é o criador da série 'The Simpsons'?", //27
                                                                              "Qual é a série de TV que se passa na cidade fictícia de Springfield?", //28
                                                                              "Quem interpretou o Homem de Ferro no Universo Cinematográfico Marvel?", //29
                                                                              "Qual é o nome do robô astromech de 'Star Wars'?", //30
                                                                              "Quem é o protagonista da série 'Breaking Bad'?", //31
                                                                              "Em que filme o personagem Neo luta contra máquinas em Matrix?", //32
                                                                              "Qual é o nome da nave da série 'Doctor Who'?", //33
                                                                              "Quem é o criador da série 'The X-Files'?", //34
                                                                              "Qual é a série de TV sobre investigadores paranormais?", //35
                                                                              "Quem é o protagonista de 'Homem-Aranha'?", //36
                                                                              "Em que filme os Vingadores enfrentam Thanos?", //37
                                                                              "Qual é o nome da mais famosa franquia de filmes de animação por computador?", //38
                                                                              "Quem é a protagonista da série 'Grey's Anatomy'?", //39
                                                                              "Qual é o nome do famoso canal de vídeos online para compartilhar conteúdo?", //40
                                                                              "Quem é o cantor conhecido como 'Rei do Pop'?", //41
                                                                              "Em que filme os dinossauros são recriados por engenharia genética?", //42
                                                                              "Qual é a série de TV sobre a vida no espaço com Capitão Kirk?", //43
                                                                              "Quem é o diretor de 'Senhor dos Anéis'?", //44
                                                                              "Qual é o nome do famoso personagem de quadrinhos que é um repórter?", //45
                                                                              "Quem é o protagonista da série de livros 'Crepúsculo'?", //46
                                                                              "Em que filme o personagem Jason Bourne é um agente secreto?", //47
                                                                              "Qual é a série de TV sobre o consultor de detetives 'Sherlock Holmes'?", //48
                                                                              "Quem é o criador da série 'Friends'?", //49
                                                                              "Qual é a série de comédia sobre seis amigos que vivem em Nova York?" //50
                                                                            ],
                                                                          certas: const [
                                                                              "Luke Skywalker", //1
                                                                              "X-Men", //2
                                                                              "Bob Kane", //3
                                                                              "Harry Potter", //4
                                                                              "Anos 80", //5
                                                                              "Katniss Everdeen", //6
                                                                              "Millennium Falcon", //7
                                                                              "The Rolling Stones", //8
                                                                              "Madonna", //9
                                                                              "Mario", //10
                                                                              "Steven Spielberg", //11
                                                                              "Pokémon", //12
                                                                              "Daniel Craig", //13
                                                                              "Buffy Summers", //14
                                                                              "Harry Potter e a Pedra Filosofal", //15
                                                                              "Stan Lee", //16
                                                                              "Sheldon Cooper", //17
                                                                              "Star Wars: Uma Nova Esperança", //18
                                                                              "Bob Esponja", //19
                                                                              "Frodo Bolseiro", //20
                                                                              "Cavaleiro das Trevas", //21
                                                                              "J.K. Rowling", //22
                                                                              "Game of Thrones", //23
                                                                              "James Cameron", //24
                                                                              "Mulher-Maravilha", //25
                                                                              "Titanic", //26
                                                                              "Matt Groening", //27
                                                                              "The Simpsons", //28
                                                                              "Robert Downey Jr.", //29
                                                                              "R2-D2", //30
                                                                              "Walter White", //31
                                                                              "Matrix", //32
                                                                              "TARDIS", //33
                                                                              "Chris Carter", //34
                                                                              "Arquivo X", //35
                                                                              "Peter Parker", //36
                                                                              "Vingadores: Guerra Infinita", //37
                                                                              "Pixar", //38
                                                                              "Meredith Grey", //39
                                                                              "YouTube", //40
                                                                              "Michael Jackson", //41
                                                                              "Jurassic Park", //42
                                                                              "Star Trek", //43
                                                                              "Peter Jackson", //44
                                                                              "Clark Kent", //45
                                                                              "Bella Swan", //46
                                                                              "Identidade Bourne", //47
                                                                              "Sherlock", //48
                                                                              "David Crane e Marta Kauffman", //49
                                                                              "Friends", //50
                                                                            ],
                                                                          erradas1: const [
                                                                              "Han Solo", //1
                                                                              "Homem-Aranha", //2
                                                                              "Stan Lee", //3
                                                                              "Gandalf", //4
                                                                              "Anos 90", //5
                                                                              "Hermione Granger", //6
                                                                              "USS Enterprise", //7
                                                                              "The Beatles", //8
                                                                              "Lady Gaga", //9
                                                                              "Sonic", //10
                                                                              "James Cameron", //11
                                                                              "Digimon", //12
                                                                              "Pierce Brosnan", //13
                                                                              "Willow Rosenberg", //14
                                                                              "O Senhor dos Anéis: As Duas Torres", //15
                                                                              "Jack Kirby", //16
                                                                              "Leonard Hofstadter", //17
                                                                              "Star Trek: O Filme", //18
                                                                              "Popeye", //19
                                                                              "Bilbo Bolseiro", //20
                                                                              "Duas Caras", //21
                                                                              "George R. R. Martin", //22
                                                                              "Lost", //23
                                                                              "George Lucas", //24
                                                                              "Mulher-Gato", //25
                                                                              "Starship Troopers", //26
                                                                              "Seth MacFarlane", //27
                                                                              "Family Guy", //28
                                                                              "Chris Evans", //29
                                                                              "BB-8", //30
                                                                              "Jesse Pinkman", //31
                                                                              "O Exterminador do Futuro", //32
                                                                              "Apollo 13", //33
                                                                              "J.J. Abrams", //34
                                                                              "The Walking Dead", //35
                                                                              "Bruce Banner", //36
                                                                              "Guerra Civil", //37
                                                                              "DreamWorks", //38
                                                                              "Olivia Pope", //39
                                                                              "Facebook", //40
                                                                              "Elvis Presley", //41
                                                                              "Jurassic World", //42
                                                                              "Firefly", //43
                                                                              "Christopher Nolan", //44
                                                                              "Super-Homem", //45
                                                                              "Jacob Black", //46
                                                                              "Missão: Impossível", //47
                                                                              "Elementary", //48
                                                                              "Matthew Perry", //49
                                                                              "The Office", //50
                                                                            ],
                                                                          erradas2: const [
                                                                              "Darth Vader", //1
                                                                              "Liga da justiça", //2
                                                                              "Frank Miller", //3
                                                                              "Bilbo Bolseiro", //4
                                                                              "Anos 70", //5
                                                                              "Tris Prior", //6
                                                                              "Nostromo", //7
                                                                              "Led Zeppelin", //8
                                                                              "Beyoncé", //9
                                                                              "Donkey Kong", //10
                                                                              "Woody Allen", //11
                                                                              "Yu-Gi-Oh!", //12
                                                                              "Tom Cruise", //13
                                                                              "Xena", //14
                                                                              "Senhor dos Anéis: O Retorno do Rei", //15
                                                                              "Frank Miller", //16
                                                                              "Rajesh Koothrappali", //17
                                                                              "Blade Runner", //18
                                                                              "Pateta", //19
                                                                              "Legolas", //20
                                                                              "Arlequina", //21
                                                                              "J.R.R. Tolkien", //22
                                                                              "Battlestar Galactica", //23
                                                                              "Ridley Scott", //24
                                                                              "Supergirl", //25
                                                                              "Halloween", //26
                                                                              "David Lynch", //27
                                                                              "American Dad!", //28
                                                                              "Ryan Reynolds", //29
                                                                              "C-3PO", //30
                                                                              "Tony Stark", //31
                                                                              "Os Vingadores", //32
                                                                              "Galactica", //33
                                                                              "Walt Disney", //34
                                                                              "X-Files", //35
                                                                              "Tony Stark", //36
                                                                              "Jurassic World", //37
                                                                              "Universal Pictures", //38
                                                                              "Judith", //39
                                                                              "Instagram", //40
                                                                              "David Bowie", //41
                                                                              "E.T. - O Extraterrestre", //42
                                                                              "Stargate SG-1", //43
                                                                              "Martin Scorsese", //44
                                                                              "Bruce Wayne", //45
                                                                              "Katniss Everdeen", //46
                                                                              "Guerra nas Estrelas", //47
                                                                              "Sherlock Holmes", //48
                                                                              "Larry David", //49
                                                                              "The Simpsons", //50
                                                                            ],
                                                                          erradas3: const [
                                                                              "Princesa Leia", //1
                                                                              "Os Vingadores", //2
                                                                              "Alan Moore", //3
                                                                              "Gollum", //4
                                                                              "Anos 60", //5
                                                                              "Edward Cullen", //6
                                                                              "Serenity", //7
                                                                              "AC/DC", //8
                                                                              "Taylor Swift", //9
                                                                              "Mega Man", //10
                                                                              "Quentin Tarantino", //11
                                                                              "Naruto", //12
                                                                              "Harrison Ford", //13
                                                                              "Alan West", //14
                                                                              "Senhor dos Anéis: As Três Torres", //15
                                                                              "Alan Moore", //16
                                                                              "Howard Wolowitz", //17
                                                                              "Blade", //18
                                                                              "Ultraman", //19
                                                                              "Aragorn", //20
                                                                              "Coringa", //21
                                                                              "J.R.R. Martin", //22
                                                                              "Star Trek: A Nova Geração", //23
                                                                              "Quentin Tarantino", //24
                                                                              "Batgirl", //25
                                                                              "Matrix", //26
                                                                              "Quentin Tarantino", //27
                                                                              "South Park", //28
                                                                              "Hugh Jackman", //29
                                                                              "Wall-E", //30
                                                                              "Jack Sparrow", //31
                                                                              "Star Wars: O Despertar da Força", //32
                                                                              "Firefly", //33
                                                                              "James Cameron", //34
                                                                              "Doctor Who", //35
                                                                              "Wade Wilson", //36
                                                                              "Matrix Recarregado", //37
                                                                              "Dream", //38
                                                                              "Tony Stark", //39
                                                                              "Snapchat", //40
                                                                              "Madonna", //41
                                                                              "Independence Day", //42
                                                                              "Stargate Atlantis", //43
                                                                              "Quentin Tarantino", //44
                                                                              "Peter Parker", //45
                                                                              "Peeta Mellark", //46
                                                                              "Homens de preto", //47
                                                                              "WestHam", //48
                                                                              "Charlie Sheen", //49
                                                                              "Family Guy", //50
                                                                            ],
                                                                          voltar:
                                                                              () {
                                                                            setState(() {
                                                                              telaInicial = false;
                                                                              tela2TelaDosTemas = true;
                                                                            });
                                                                          },
                                                                          generoDasPerguntas:
                                                                              'Cultura Pop')
                                                                      : tela15GeografiaBasica
                                                                          ? Questionario(
                                                                              listaDePerguntas: const [
                                                                                  "Qual é o maior continente do mundo?", //1
                                                                                  "Qual é o país mais populoso do mundo?", //2
                                                                                  "Onde fica a Grande Barreira de Coral?", //3
                                                                                  "Qual é o maior oceano do mundo?", //4
                                                                                  "Onde fica a Torre Eiffel?", //5
                                                                                  "Qual é o país conhecido como a Terra do Sol Nascente?", //6
                                                                                  "Onde fica o Deserto do Saara?", //7
                                                                                  "Qual é o rio mais longo do mundo?", //8
                                                                                  "Onde está localizada a Grande Muralha da China?", //9
                                                                                  "Qual é o ponto mais alto da Terra?", //10
                                                                                  "Em que continente está a Austrália?", //11
                                                                                  "Qual é o país com a maior área terrestre do mundo?", //12
                                                                                  "Onde fica a cidade de Machu Picchu?", //13
                                                                                  "Qual é o país que possui a maior parte da Floresta Amazônica?", //14
                                                                                  "Em que continente está localizada a Rússia?", //15
                                                                                  "Qual é o país com a maior população da Europa?", //16
                                                                                  "Onde fica o Deserto do Atacama?", //17
                                                                                  "Qual é o oceano que banha a costa leste dos Estados Unidos?", //18
                                                                                  "Em que continente está a Antártica?", //19
                                                                                  "Qual é a capital da França?", //20
                                                                                  "Onde fica o monte Everest?", //21
                                                                                  "Qual é o país com a forma de uma bota?", //22
                                                                                  "Em que continente está localizado o Egito?", //23
                                                                                  "Qual é o país que faz fronteira com os Estados Unidos ao sul?", //24
                                                                                  "Onde está localizada a Grande Barreira de Coral?", //25
                                                                                  "Qual é o oceano que banha a costa leste do Brasil?", //26
                                                                                  "Em que continente está a Índia?", //27
                                                                                  "Qual é o país conhecido como Terra do Sol da Meia-Noite?", //28
                                                                                  "Onde fica o Mar Mediterrâneo?", //29
                                                                                  "Qual é o país que é uma península no sul da Europa?", //30
                                                                                  "Em que continente está a África do Sul?", //31
                                                                                  "Onde fica o Deserto do Gobi?", //32
                                                                                  "Qual é o país que ocupa a maior parte da América do Sul?", //33
                                                                                  "Em que continente está a Nova Zelândia?", //34
                                                                                  "Onde fica o rio Nilo?", //35
                                                                                  "Qual é o país que tem uma pirâmide na África?", //36
                                                                                  "Em que continente está a Argentina?", //37
                                                                                  "Onde está localizado o Grand Canyon?", //38
                                                                                  "Qual é o país que possui a Península Arábica?", //39
                                                                                  "Em que continente está a Noruega?", //40
                                                                                  "Onde fica o Lago Titicaca?", //41
                                                                                  "Qual é o país com a maior área de floresta tropical?", //42
                                                                                  "Em que continente está a Coreia do Sul?", //43
                                                                                  "Onde está localizada a Grande Muralha?", //44
                                                                                  "Qual é o país que possui a forma de uma bota?", //45
                                                                                  "Em que continente está a Grécia?", //46
                                                                                  "Onde fica o Deserto de Kalahari?", //47
                                                                                  "Qual é o país conhecido como a Terra dos Cangurus?", //48
                                                                                  "Em que continente está a Espanha?", //49
                                                                                  "Onde está localizado o Canal de Suez?", //50
                                                                                ],
                                                                              certas: const [
                                                                                  "Ásia", //1
                                                                                  "China", //2
                                                                                  "Austrália", //3
                                                                                  "Oceano Pacífico", //4
                                                                                  "Paris, França", //5
                                                                                  "Japão", //6
                                                                                  "Norte da África", //7
                                                                                  "Rio Eufrates", //8
                                                                                  "Norte da China", //9
                                                                                  "Monte Everest", //10
                                                                                  "Oceania", //11
                                                                                  "Rússia", //12
                                                                                  "Peru", //13
                                                                                  "Brasil", //14
                                                                                  "Ásia", //15
                                                                                  "Indonésia", //16
                                                                                  "Chile", //17
                                                                                  "Oceano Atlântico", //18
                                                                                  "Antártica", //19
                                                                                  "Paris", //20
                                                                                  "Nepal", //21
                                                                                  "Itália", //22
                                                                                  "África", //23
                                                                                  "México", //24
                                                                                  "Austrália", //25
                                                                                  "Oceano Atlântico", //26
                                                                                  "Ásia", //27
                                                                                  "Noruega", //28
                                                                                  "Mediterrâneo", //29
                                                                                  "Itália", //30
                                                                                  "África", //31
                                                                                  "Mongólia", //32
                                                                                  "Brasil", //33
                                                                                  "Oceania", //34
                                                                                  "Egito", //35
                                                                                  "Egito", //36
                                                                                  "América do Sul", //37
                                                                                  "Estados Unidos", //38
                                                                                  "Arábia Saudita", //39
                                                                                  "Europa", //40
                                                                                  "Peru", //41
                                                                                  "Brasil", //42
                                                                                  "Ásia", //43
                                                                                  "China", //44
                                                                                  "Itália", //45
                                                                                  "Europa", //46
                                                                                  "África", //47
                                                                                  "Austrália", //48
                                                                                  "Europa", //49
                                                                                  "Egito", //50
                                                                                ],
                                                                              erradas1: const [
                                                                                  "Europa", //1
                                                                                  "Índia", //2
                                                                                  "América do Norte", //3
                                                                                  "Oceano Índico", //4
                                                                                  "Nova Iorque, EUA", //5
                                                                                  "Coreia do Sul", //6
                                                                                  "Deserto do Mojave", //7
                                                                                  "Rio Nilo", //8
                                                                                  "Sul da Índia", //9
                                                                                  "Ponto mais profundo dos oceanos", //10
                                                                                  "África", //11
                                                                                  "Canadá", //12
                                                                                  "México", //13
                                                                                  "Canadá", //14
                                                                                  "América do Norte", //15
                                                                                  "México", //16
                                                                                  "Austrália", //17
                                                                                  "Oceano Índico", //18
                                                                                  "América do Norte", //19
                                                                                  "Londres, Reino Unido", //20
                                                                                  "Himalaia", //21
                                                                                  "Espanha", //22
                                                                                  "Ásia", //23
                                                                                  "Rússia", //24
                                                                                  "Índia", //25
                                                                                  "Antártida", //26
                                                                                  "África", //27
                                                                                  "Espanha", //28
                                                                                  "Egito", //29
                                                                                  "Egito", //30
                                                                                  "Brasil", //31
                                                                                  "Europa", //32
                                                                                  "Argentina", //33
                                                                                  "Antártica", //34
                                                                                  "China", //35
                                                                                  "Argentina", //36
                                                                                  "Equador", //37
                                                                                  "Canadá", //38
                                                                                  "México", //39
                                                                                  "África", //40
                                                                                  "Argentina", //41
                                                                                  "Indonésia", //42
                                                                                  "Austrália", //43
                                                                                  "Índia", //44
                                                                                  "Espanha", //45
                                                                                  "Ásia", //46
                                                                                  "América do Norte", //47
                                                                                  "África", //48
                                                                                  "Ásia", //49
                                                                                  "Canadá", //50
                                                                                ],
                                                                              erradas2: const [
                                                                                  "África do Sul", //1
                                                                                  "Rússia", //2
                                                                                  "América do Sul", //3
                                                                                  "Oceano Atlântico", //4
                                                                                  "Londres, Reino Unido", //5
                                                                                  "China", //6
                                                                                  "Deserto do Saara", //7
                                                                                  "Rio Amazonas", //8
                                                                                  "Sul dos Estados Unidos", //9
                                                                                  "Pico da Neblina", //10
                                                                                  "América do Sul", //11
                                                                                  "Estados Unidos", //12
                                                                                  "Argentina", //13
                                                                                  "México", //14
                                                                                  "África do Sul", //15
                                                                                  "Espanha", //16
                                                                                  "Oceano Atlântico", //17
                                                                                  "Oceano Pacífico", //18
                                                                                  "América do Sul", //19
                                                                                  "Berlim, Alemanha", //20
                                                                                  "Monte Kilimanjaro", //21
                                                                                  "Grécia", //22
                                                                                  "América do Norte", //23
                                                                                  "Austrália", //24
                                                                                  "China", //25
                                                                                  "América do Norte", //26
                                                                                  "Europa", //27
                                                                                  "México", //28
                                                                                  "Austrália", //29
                                                                                  "África do Sul", //30
                                                                                  "Jamaica", //31
                                                                                  "Ásia", //32
                                                                                  "Chile", //33
                                                                                  "África", //34
                                                                                  "Rússia", //35
                                                                                  "Canadá", //36
                                                                                  "América Central", //37
                                                                                  "México", //38
                                                                                  "Austrália", //39
                                                                                  "Ásia", //40
                                                                                  "México", //41
                                                                                  "Austrália", //42
                                                                                  "América do Norte", //43
                                                                                  "Europa", //44
                                                                                  "China", //45
                                                                                  "África", //46
                                                                                  "América do Sul", //47
                                                                                  "Europa", //48
                                                                                  "Madrid", //49
                                                                                  "América do Sul", //50
                                                                                ],
                                                                              erradas3: const [
                                                                                  "Canadá", //1
                                                                                  "México", //2
                                                                                  "Europa", //3
                                                                                  "Oceano Ártico", //4
                                                                                  "Tóquio, Japão", //5
                                                                                  "Índia", //6
                                                                                  "Deserto do Atacama", //7
                                                                                  "Rio Mississippi", //8
                                                                                  "Norte da Austrália", //9
                                                                                  "Monte Kilimanjaro", //10
                                                                                  "América Central", //11
                                                                                  "China", //12
                                                                                  "Espanha", //13
                                                                                  "Argentina", //14
                                                                                  "Canadá", //15
                                                                                  "Rússia", //16
                                                                                  "Oceano Índico", //17
                                                                                  "Oceano Ártico", //18
                                                                                  "América Central", //19
                                                                                  "Roma, Itália", //20
                                                                                  "Monte Fuji", //21
                                                                                  "Portugal", //22
                                                                                  "Oceania", //23
                                                                                  "Canadá", //24
                                                                                  "Brasil", //25
                                                                                  "Antártica", //26
                                                                                  "América Central", //27
                                                                                  "França", //28
                                                                                  "Rio Nilo", //29
                                                                                  "Austrália", //30
                                                                                  "Canadá", //31
                                                                                  "África do Sul", //32
                                                                                  "Austrália", //33
                                                                                  "América do Sul", //34
                                                                                  "Canadá", //35
                                                                                  "Rússia", //36
                                                                                  "América do Norte", //37
                                                                                  "Austrália", //38
                                                                                  "Canadá", //39
                                                                                  "América do Norte", //40
                                                                                  "Rússia", //41
                                                                                  "Canadá", //42
                                                                                  "Europa", //43
                                                                                  "Brasil", //44
                                                                                  "Índia", //45
                                                                                  "América do Norte", //46
                                                                                  "Europa", //47
                                                                                  "Oceania", //48
                                                                                  "Oceania", //49
                                                                                  "Europa", //50
                                                                                ],
                                                                              voltar: () {
                                                                                setState(() {
                                                                                  telaInicial = false;
                                                                                  tela2TelaDosTemas = true;
                                                                                });
                                                                              },
                                                                              generoDasPerguntas: 'Geografia Básica')
                                                                          : tela16Folclore
                                                                              ? Questionario(
                                                                                  listaDePerguntas: const [
                                                                                      "O que é o folclore?", //1
                                                                                      "Quem é o Curupira?", //2
                                                                                      "O Boto Cor-de-Rosa é?", //3
                                                                                      "O que é o Boitatá?", //4
                                                                                      "Defina Chupa-cabra.", //5
                                                                                      "Quem é Saci-Pererê?", //6
                                                                                      "Mula sem Cabeça é?", //7
                                                                                      "Quem é a Cuca?", //8
                                                                                      "O que são sereias?", //9
                                                                                      "Curupira é de onde?", //10
                                                                                      "Lendas urbanas são?", //11
                                                                                      "Como Lobisomem brasileiro age?", //12
                                                                                      "Quem são os duendes?", //13
                                                                                      "Papa-Figo faz o quê?", //14
                                                                                      "Quem é a Iara?", //15
                                                                                      "O que é Bumba-meu-boi?", //16
                                                                                      "Minotauro é de onde?", //17
                                                                                      "O Bicho-Papão faz?", //18
                                                                                      "Lobisomem brasileiro é?", //19
                                                                                      "Pai-do-Mato faz o quê?", //20
                                                                                      "Nenê de Santa Cruz?", //21
                                                                                      "O que é Mãe-d'Água?", //22
                                                                                      "O Boto Cor-de-Rosa é?", //23
                                                                                      "Lobisomem é?", //24
                                                                                      "Como age Lobisomem brasileiro?", //25
                                                                                      "Bumba-meu-boi é?", //26
                                                                                      "Bicho-Papão faz o quê?", //27
                                                                                      "Minotauro é de onde?", //28
                                                                                      "Pai-do-Mato faz o quê?", //29
                                                                                      "Lenda do Minotauro é?", //30
                                                                                    ],
                                                                                  certas: const [
                                                                                      "Tradições populares transmitidas oralmente.", //1
                                                                                      "Guardião da floresta com pés invertidos.", //2
                                                                                      "Boto que se transforma em homem.", //3
                                                                                      "Cobra de fogo protetora.", //4
                                                                                      "Criatura de lendas urbanas.", //5
                                                                                      "Personagem travesso de uma perna.", //6
                                                                                      "Criatura com fogo no lugar da cabeça", //7
                                                                                      "Bruxa do folclore infantil.", //8
                                                                                      "Metade mulher, metade peixe.", //9
                                                                                      "Personagem do Sul do Brasil.", //10
                                                                                      "Histórias urbanas e misteriosas.", //11
                                                                                      "Pessoa que vira lobo.", //12
                                                                                      "Pequenas criaturas mágicas.", //13
                                                                                      "Ladrão de fígados.", //14
                                                                                      "Sereia sedutora das águas.", //15
                                                                                      "Festa do boi ressuscitado.", //16
                                                                                      "Monstro mitológico grego.", //17
                                                                                      "Assusta crianças desobedientes.", //18
                                                                                      "Pessoa que se torna lobo.", //19
                                                                                      "Protetor da natureza.", //20
                                                                                      "Personagem do carnaval carioca.", //21
                                                                                      "Ser que vive nos rios.", //22
                                                                                      "Boto que se transforma em homem.", //23
                                                                                      "Pessoa que se torna lobo.", //24
                                                                                      "Transformação em lobo na lua cheia.", //25
                                                                                      "Festa folclórica com boi.", //26
                                                                                      "Cria medos nas crianças.", //27
                                                                                      "Grécia", //28
                                                                                      "Protetor da fauna e flora.", //29
                                                                                      "Monstro mitológico grego." //30
                                                                                    ],
                                                                                  erradas1: const [
                                                                                      "Histórias tradicionais populares", //1
                                                                                      "Personagem da floresta mágica", //2
                                                                                      "Peixe da Amazônia", //3
                                                                                      "Cobra de fogo", //4
                                                                                      "Criatura real", //5
                                                                                      "Personagem do folclore japonês", //6
                                                                                      "Animal lendário", //7
                                                                                      "Bruxa assustadora", //8
                                                                                      "Criaturas marinhas", //9
                                                                                      "Ser mitológico", //10
                                                                                      "Lendas rurais", //11
                                                                                      "Lobo homem", //12
                                                                                      "Grandes seres mágicos", //13
                                                                                      "Ladrão de doces", //14
                                                                                      "Sereia mítica", //15
                                                                                      "Festa tradicional brasileira", //16
                                                                                      "Monstro grego", //17
                                                                                      "Assusta crianças", //18
                                                                                      "Ser sobrenatural", //19
                                                                                      "Protetor da floresta", //20
                                                                                      "Personagem do Carnaval", //21
                                                                                      "Ser das águas", //22
                                                                                      "Peixe encantado", //23
                                                                                      "Ser noturno", //24
                                                                                      "Lobisomem", //25
                                                                                      "Festa folclórica", //26
                                                                                      "Assusta crianças", //27
                                                                                      "Brasil", //28
                                                                                      "Protetor da natureza", //29
                                                                                      "Monstro mitológico", //30
                                                                                    ],
                                                                                  erradas2: const [
                                                                                      "Festa anual tradicional.", //1
                                                                                      "Personagem da selva.", //2
                                                                                      "Peixe colorido.", //3
                                                                                      "Criatura mágica do fogo.", //4
                                                                                      "Lenda do bode.", //5
                                                                                      "Personagem de filme infantil.", //6
                                                                                      "Personagem de histórias de terror.", //7
                                                                                      "Bruxa malvada.", //8
                                                                                      "Metade mulher metade homem", //9
                                                                                      "Personagem da Amazônia.", //10
                                                                                      "Contos de fadas.", //11
                                                                                      "Ser noturno misterioso.", //12
                                                                                      "Pequenos seres travessos e amarelos.", //13
                                                                                      "Coletor de moedas antigas.", //14
                                                                                      "Deusa do mar.", //15
                                                                                      "Dança típica do Norte.", //16
                                                                                      "Labirinto grego lendário.", //17
                                                                                      "Personagem de histórias infantis.", //18
                                                                                      "Lobisomem de filmes.", //19
                                                                                      "Erva medicinal.", //20
                                                                                      "Personagem de Carnaval famoso.", //21
                                                                                      "Criatura dos pântanos.", //22
                                                                                      "Animal da Amazônia.", //23
                                                                                      "Personagem de filmes de terror.", //24
                                                                                      "Transformação misteriosa.", //25
                                                                                      "Dança com boi.", //26
                                                                                      "Monstro de pesadelo.", //27
                                                                                      "Reino do Minotauro.", //28
                                                                                      "Guardião da floresta tropical.", //29
                                                                                      "Criatura do mito grego.", //30
                                                                                    ],
                                                                                  erradas3: const [
                                                                                      "Personagem de desenho animado.", //1
                                                                                      "Espírito protetor da floresta.", //2
                                                                                      "Peixe lendário do Amazonas.", //3
                                                                                      "Lenda de cobra voadora.", //4
                                                                                      "Monstro marinho fictício.", //5
                                                                                      "Entidade sobrenatural travessa.", //6
                                                                                      "Fantasma de cavalo sem cabeça.", //7
                                                                                      "Personagem de conto de fadas.", //8
                                                                                      "Criatura mítica voadora.", //9
                                                                                      "Guardião das florestas.", //10
                                                                                      "Histórias de assombração.", //11
                                                                                      "Ser que vira lobo.", //12
                                                                                      "Ser pequeno.", //13
                                                                                      "Personagem que rouba frutas.", //14
                                                                                      "Deusa da lua.", //15
                                                                                      "Festa tradicional nordestina.", //16
                                                                                      "Monstro de labirinto grego.", //17
                                                                                      "Assusta crianças à noite.", //18
                                                                                      "Homem-lobo lendário.", //19
                                                                                      "Espírito guardião da mata.", //20
                                                                                      "Criança encrenqueira.", //21
                                                                                      "Sereia da floresta.", //22
                                                                                      "Peixe que canta.", //23
                                                                                      "Lobo mágico.", //24
                                                                                      "Transformação em lobo.", //25
                                                                                      "Dança folclórica brasileira.", //26
                                                                                      "Monstro que assusta.", //27
                                                                                      "Pampas", //28
                                                                                      "Protetor da natureza.", //29
                                                                                      "Herói de história épica.", //30
                                                                                    ],
                                                                                  voltar: () {
                                                                                    setState(() {
                                                                                      telaInicial = false;
                                                                                      tela2TelaDosTemas = true;
                                                                                    });
                                                                                  },
                                                                                  generoDasPerguntas: 'Folclore')
                                                                              : tela17CulturaIndigena
                                                                                  ? Questionario(
                                                                                      listaDePerguntas: const [
                                                                                          "O que é um cacique indígena?", //1
                                                                                          "Quais são as principais etnias indígenas no Brasil?", //2
                                                                                          "Quais são os principais rituais indígenas?", //3
                                                                                          "O que é a Casa de Reza em uma aldeia indígena?", //4
                                                                                          "Qual é o significado da pintura corporal indígena?", //5
                                                                                          "Quais são as principais formas de subsistência das tribos indígenas?", //6
                                                                                          "O que são os cantos e danças indígenas?", //7
                                                                                          "Qual é a importância das línguas indígenas?", //8
                                                                                          "Como é o artesanato indígena?", //9
                                                                                          "O que são os mitos e lendas indígenas?", //10
                                                                                          "Como os indígenas se relacionam com a natureza?", //11
                                                                                          "Quais são os principais desafios enfrentados pelos indígenas hoje?", //12
                                                                                          "O que é a demarcação de terras indígenas?", //13
                                                                                          "Qual é a história do contato entre indígenas e não indígenas?", //14
                                                                                          "Quais são as principais festas e celebrações indígenas?", //15
                                                                                          "Como os indígenas preservam suas tradições culturais?", //16
                                                                                          "O que são os pajés nas comunidades indígenas?", //17
                                                                                          "Como a culinária indígena influenciou a gastronomia brasileira?", //18
                                                                                          "Quais são os instrumentos musicais tradicionais indígenas?", //19
                                                                                          "O que são as terras indígenas demarcadas?", //20
                                                                                        ],
                                                                                      certas: const [
                                                                                          "Líder de tribo indígena.", //1
                                                                                          "Guarani, Tikuna, Xavante, etc.", //2
                                                                                          "Danças, cantos, rituais.", //3
                                                                                          "Local sagrado da aldeia.", //4
                                                                                          "Significados simbólicos.", //5
                                                                                          "Caça, pesca, agricultura.", //6
                                                                                          "Expressão cultural e religiosa.", //7
                                                                                          "Preservam cultura.", //8
                                                                                          "Cestaria, cerâmica, tecelagem.", //9
                                                                                          "Narrativas sobre origem.", //10
                                                                                          "Com respeito à natureza.", //11
                                                                                          "Perda de terras, pressão.", //12
                                                                                          "Delimitação de territórios.", //13
                                                                                          "Conflitos, impactos culturais.", //14
                                                                                          "Festas religiosas e de colheita.", //15
                                                                                          "Rituais e tradições.", //16
                                                                                          "Líderes espirituais, curandeiros.", //17
                                                                                          "Alimentação: mandioca, peixes etc...", //18
                                                                                          "Instrumentos: maracás, flautas.", //19
                                                                                          "Terras protegidas legalmente.", //20
                                                                                        ],
                                                                                      erradas1: const [
                                                                                          "Idioma falado pelos índios.", //1
                                                                                          "Pararuka, Melnus, Pola...", //2
                                                                                          "Ritual de dança do ventre.", //3
                                                                                          "Lugar onde vivem os macacos.", //4
                                                                                          "Método de pesca moderno.", //5
                                                                                          "Fé.", //6
                                                                                          "Alimento tradicional indígena.", //7
                                                                                          "Comunicação nacional", //8
                                                                                          "Artefatos de guerra indígena.", //9
                                                                                          "Música eletrônica nas tribos.", //10
                                                                                          "Cultura popular japonesa.", //11
                                                                                          "Costumes de povos africanos.", //12
                                                                                          "Dança tradicional chinesa.", //13
                                                                                          "Relações diplomáticas saudáveis", //14
                                                                                          "Festas do Carnaval brasileiro.", //15
                                                                                          "Rituais de bruxaria indígena.", //16
                                                                                          "Líderes de bandas de rock.", //17
                                                                                          "Toda a culinária foi influenciada", //18
                                                                                          "Instrumentos musicais japoneses.", //19
                                                                                          "Áreas de preservação europeias.", //20
                                                                                        ],
                                                                                      erradas2: const [
                                                                                          "Tribos da Ásia Central.", //1
                                                                                          "Não existem.", //2
                                                                                          "Ritual da dança da chuva", //3
                                                                                          "Florestas tropicais do Brasil.", //4
                                                                                          "Método de pesca tradicional.", //5
                                                                                          "Chuva", //6
                                                                                          "Plantação de café indígena.", //7
                                                                                          "Guardar conhecimento em livros populares", //8
                                                                                          "Pinturas rupestres tribais.", //9
                                                                                          "Danças tradicionais africanas.", //10
                                                                                          "Com desrespeito.", //11
                                                                                          "Costumes de povos nórdicos.", //12
                                                                                          "Dança flamenca espanhola.", //13
                                                                                          "Contato pacífico", //14
                                                                                          "Tradições natalinas brasileiras.", //15
                                                                                          "Rituais de xamanismo indígena.", //16
                                                                                          "Astros do esporte americano.", //17
                                                                                          "Atráves de poucos pratos.", //18
                                                                                          "Os mesmos europeus", //19
                                                                                          "Monumentos históricos europeus.", //20
                                                                                        ],
                                                                                      erradas3: const [
                                                                                          "Sistema de transporte moderno.", //1
                                                                                          "Muriçocas, gaúchos e germânicos", //2
                                                                                          "Esporte popular nos EUA.", //3
                                                                                          "Cidade do Oriente Médio.", //4
                                                                                          "Instrumento musical de corda.", //5
                                                                                          "Sorte", //6
                                                                                          "Língua falada na África.", //7
                                                                                          "Sobremesa famosa da França.", //8
                                                                                          "Baseado na arte européia", //9
                                                                                          "Histórias reais", //10
                                                                                          "Com a técnica de dança africana.", //11
                                                                                          "Filme de super-herói.", //12
                                                                                          "Banda de rock britânica.", //13
                                                                                          "Formação de parcerias", //14
                                                                                          "Estilo arquitetônico grego.", //15
                                                                                          "Com pratos típicos japoneses.", //16
                                                                                          "Cidade europeia famosa.", //17
                                                                                          "Não influenciou", //18
                                                                                          "Astro do esporte brasileiro.", //19
                                                                                          "Platô geográfico da África.", //20
                                                                                        ],
                                                                                      voltar: () {
                                                                                        setState(() {
                                                                                          telaInicial = false;
                                                                                          tela2TelaDosTemas = true;
                                                                                        });
                                                                                      },
                                                                                      generoDasPerguntas: 'Cultura Indígena')
                                                                                  : tela18DesenhosAnimados
                                                                                      ? Questionario(
                                                                                          listaDePerguntas: const [
                                                                                              "Quem é o personagem principal em 'Bob Esponja Calça Quadrada'?", //1
                                                                                              "Qual é o nome do gato de Pernalonga nos Looney Tunes?", //2
                                                                                              "Que desenho animado apresenta uma família de esponjas do mar?", //3
                                                                                              "O que é 'Scooby-Doo' em 'Scooby-Doo, Cadê Você?'?", //4
                                                                                              "Quem é o rival do Pica-Pau?", //5
                                                                                              "Qual desenho animado segue as aventuras de Tom, um gato, e Jerry, um rato?", //6
                                                                                              "Que personagem mora em uma casa de abacaxi no fundo do mar?", //7
                                                                                              "Quem é o vilão em 'Tom e Jerry'?", //8
                                                                                              "Qual é o apelido do Coiote na série do Papa-Léguas?", //9
                                                                                              "Qual é a famosa raposa que está sempre tentando pegar o Papa-Léguas?", //10
                                                                                              "Quem é o famoso gato do desenho animado que persegue o rato Jerry?", //11
                                                                                              "Qual é a espécie de Tweety, o passarinho amarelo dos Looney Tunes?", //12
                                                                                              "Que desenho animado apresenta as aventuras de um esquilo chamado Rocky?", //13
                                                                                              "Quem é o personagem principal em 'Os Simpsons'?", //14
                                                                                              "Qual é o nome do inventor mirim em 'Dexter's Laboratory'?", //15
                                                                                              "Quem é a filha mais velha dos Flintstones?", //16
                                                                                              "Em 'Os Simpsons', o chefe da família trabalha em qual usina nuclear?", //17
                                                                                              "Quem é o pato bilionário de 'Tio Patinhas'?", //18
                                                                                              "Quem é o personagem humano em 'Pernalonga'?", //19
                                                                                              "Qual é o apelido de Mandy, a amiga de Billy em 'Billy e Mandy'?", //20
                                                                                              "Quem é o protagonista em 'Os Padrinhos Mágicos'?", //21
                                                                                              "Que animal é Perry, o mascote de Phineas e Ferb?", //22
                                                                                              "Qual é o nome do cachorro robô no desenho animado 'Jetsons'?", //23
                                                                                              "Quem é o protagonista em 'Os Padrinhos Mágicos'?", //24
                                                                                              "Quem é o melhor amigo de Bob Esponja?", //25
                                                                                              "Qual é o nome da namorada do Mickey Mouse?", //26
                                                                                              "Quem é o vilão principal em 'He-Man'?", //27
                                                                                              "Quem é o rival do Super Mouse?", //28
                                                                                              "Qual é o nome do cachorro de Pernalonga?", //29
                                                                                              "Quem é o mentor de Aang em 'Avatar: A Lenda de Aang'?", //30
                                                                                              "Quem é o protagonista em 'Os Simpsons'?", //31
                                                                                              "Que personagem faz experimentos malucos em 'Dexter's Laboratory'?", //32
                                                                                              "Qual é o nome da esposa de Fred Flintstone?", //33
                                                                                              "Quem é o sobrinho de Tio Patinhas?", //34
                                                                                              "Quem é o pássaro que persegue o gato Sylvester nos Looney Tunes?", //35
                                                                                              "Quem é o irmão de Phineas em 'Phineas e Ferb'?", //36
                                                                                              "Qual o nome da Rosinha, a namorada do Cebolinha?", //37
                                                                                              "Quem é a irmã mais nova de Bart Simpson?", //38
                                                                                              "Qual é o nome do laboratório do Dexter em 'Dexter's Laboratory'?", //39
                                                                                              "Quem é o inimigo de Billy em 'Billy e Mandy'?", //40
                                                                                              "Qual é o nome da fada madrinha de Timmy em 'Os Padrinhos Mágicos'?", //41
                                                                                              "Quem é o pet ornitorrinco de Phineas e Ferb?", //42
                                                                                              "Qual é o nome do cão robô em 'Jetsons'?", //43
                                                                                              "Quem é o antagonista principal em 'Avatar: A Lenda de Aang'?", //44
                                                                                              "O que é a coisa rosa que vive debaixo da cama em 'Os Padrinhos Mágicos'?", //45
                                                                                              "Quem é o professor de poções em Hogwarts em 'Harry Potter'?", //46
                                                                                              "Quem é o rival de Plankton no restaurante Siri Cascudo em 'Bob Esponja'?", //47
                                                                                              "Qual é o nome da professora de Bart Simpson?", //48
                                                                                              "Quem é o cientista louco em 'Dexter's Laboratory'?", //49
                                                                                              "Qual é o nome do apresentador do show de talentos de Endsville em 'Billy e Mandy'?", //50
                                                                                            ],
                                                                                          certas: const [
                                                                                              "Bob Esponja Calça Quadrada.", //1
                                                                                              "Frajola.", //2
                                                                                              "Bob Esponja Calça Quadrada.", //3
                                                                                              "Um cachorro covarde.", //4
                                                                                              "Pica-Pau.", //5
                                                                                              "Tom e Jerry.", //6
                                                                                              "Bob Esponja Calça Quadrada.", //7
                                                                                              "Jerry, o rato.", //8
                                                                                              "Wil E. Coyote.", //9
                                                                                              "Wile E. Coyote.", //10
                                                                                              "Tom.", //11
                                                                                              "Canário.", //12
                                                                                              "Esquilo Rocky.", //13
                                                                                              "Homer Simpson.", //14
                                                                                              "Dexter.", //15
                                                                                              "Wilma Flintstone.", //16
                                                                                              "Usina Nuclear de Springfield.", //17
                                                                                              "Tio Patinhas.", //18
                                                                                              "Elmer Fudd.", //19
                                                                                              "Billy.", //20
                                                                                              "Timmy Turner.", //21
                                                                                              "Ornitorrinco.", //22
                                                                                              "Astro.", //23
                                                                                              "Timmy Turner.", //24
                                                                                              "Patrick Estrela.", //25
                                                                                              "Minnie Mouse.", //26
                                                                                              "Esqueleto.", //27
                                                                                              "Super Mouse.", //28
                                                                                              "Vovô.", //29
                                                                                              "Monge Gyatso.", //30
                                                                                              "Homer Simpson.", //31
                                                                                              "Dexter.", //32
                                                                                              "Wilma Flintstone.", //33
                                                                                              "Huguinho.", //34
                                                                                              "Tweety.", //35
                                                                                              "Ferb.", //36
                                                                                              "Rosalie.", //37
                                                                                              "Maggie Simpson.", //38
                                                                                              "Laboratório de Dexter.", //39
                                                                                              "Puro Osso.", //40
                                                                                              "Wanda.", //41
                                                                                              "Perry.", //42
                                                                                              "Astro.", //43
                                                                                              "Senhor do Fogo Ozai.", //44
                                                                                              "Wanda.", //45
                                                                                              "Severo Snape.", //46
                                                                                              "Sandy Bochechas.", //47
                                                                                              "Edna Krabappel.", //48
                                                                                              "Dexter.", //49
                                                                                              "Skarr.", //50
                                                                                            ],
                                                                                          erradas1: const [
                                                                                              "Patolino.", //1
                                                                                              "Bob, o Construtor.", //2
                                                                                              "Pernalonga.", //3
                                                                                              "Scooby-Doo.", //4
                                                                                              "Mickey Mouse.", //5
                                                                                              "Salsicha.", //6
                                                                                              "Pica-Pau.", //7
                                                                                              "Piu-Piu.", //8
                                                                                              "Zé Colmeia.", //9
                                                                                              "Tweety.", //10
                                                                                              "Jerry, o rato.", //11
                                                                                              "Jerry.", //12
                                                                                              "Pernalonga.", //13
                                                                                              "Bart Simpson.", //14
                                                                                              "Mickey Mouse.", //15
                                                                                              "Fred Flintstone.", //16
                                                                                              "Krusty, o Palhaço.", //17
                                                                                              "Pato Donald.", //18
                                                                                              "Pateta.", //19
                                                                                              "Mandy.", //20
                                                                                              "Cosmo.", //21
                                                                                              "Pikachu.", //22
                                                                                              "Dino.", //23
                                                                                              "Cosmo.", //24
                                                                                              "Plankton.", //25
                                                                                              "Pateta.", //26
                                                                                              "Super-Homem.", //27
                                                                                              "Mickey Mouse.", //28
                                                                                              "Rex", //29
                                                                                              "Senhor Miyagi.", //30
                                                                                              "Bart Simpson.", //31
                                                                                              "Billy.", //32
                                                                                              "Fred Flintstone.", //33
                                                                                              "Zezé.", //34
                                                                                              "Bart Simpson.", //35
                                                                                              "Agente P.", //36
                                                                                              "Rosinha", //37
                                                                                              "Maggie Simpson.", //38
                                                                                              "Labexter", //39
                                                                                              "Eustace.", //40
                                                                                              "Cosmo.", //41
                                                                                              "Barry", //42
                                                                                              "Marge", //43
                                                                                              "Iroh.", //44
                                                                                              "Cosmo.", //45
                                                                                              "Lord Voldemort.", //46
                                                                                              "Plankton.", //47
                                                                                              "Edna Cuspae", //48
                                                                                              "Mickey Mouse.", //49
                                                                                              "Mandy.", //50
                                                                                            ],
                                                                                          erradas2: const [
                                                                                              "Porky Pig.", //51
                                                                                              "Dora, a Aventureira.", //52
                                                                                              "He-Man.", //53
                                                                                              "Yogi Bear.", //54
                                                                                              "Garfield.", //55
                                                                                              "Kermit, o Sapo.", //56
                                                                                              "Droopy.", //57
                                                                                              "Ratatouille.", //58
                                                                                              "Muttley.", //59
                                                                                              "Bolt.", //60
                                                                                              "Pikachu.", //61
                                                                                              "Ligeirinho.", //62
                                                                                              "Gromit.", //63
                                                                                              "Tom, o gato.", //64
                                                                                              "Angelica Pickles.", //65
                                                                                              "Mario.", //66
                                                                                              "George Jetson.", //67
                                                                                              "Snoopy.", //68
                                                                                              "Minnie Mouse.", //69
                                                                                              "Porkchop.", //70
                                                                                              "Salsicha.", //71
                                                                                              "Cachorro", //72
                                                                                              "Beavis.", //73
                                                                                              "Astro Boy.", //74
                                                                                              "Max Goof.", //75
                                                                                              "Dexter.", //76
                                                                                              "Capitão Caverna.", //77
                                                                                              "Mojo Jojo.", //78
                                                                                              "Bloo.", //79
                                                                                              "Jimmy Neutron.", //80
                                                                                              "Vicky.", //81
                                                                                              "Fred Jones.", //82
                                                                                              "Wilma Mc'Alister", //83
                                                                                              "Moe Szyslak.", //84
                                                                                              "Bexter", //85
                                                                                              "Sirius Black.", //86
                                                                                              "Dudley Do-Right.", //87
                                                                                              "Daphne Blake.", //88
                                                                                              "Snagglepuss.", //89
                                                                                              "Ren Hoek.", //90
                                                                                              "Mandy", //91
                                                                                              "Remy.", //92
                                                                                              "Maguila.", //93
                                                                                              "Pound Puppies.", //94
                                                                                              "Spike Spiegel.", //95
                                                                                              "Cosmo.", //96
                                                                                              "Apu Nahasapeemapetilon.", //97
                                                                                              "Marry Barth", //98
                                                                                              "Gerald McBoing-Boing.", //99
                                                                                              "Mendy", //100
                                                                                            ],
                                                                                          erradas3: const [
                                                                                              "Lula Molusco", //51
                                                                                              "Inspector Gadget.", //52
                                                                                              "Bob, o Construtor.", //53
                                                                                              "Pernalonga.", //54
                                                                                              "Wile E. Coyote.", //55
                                                                                              "Phineas e Ferb.", //56
                                                                                              "Johnny Bravo.", //57
                                                                                              "Jonny Quest.", //58
                                                                                              "Dug, o Cão Falante.", //59
                                                                                              "O Patolino.", //60
                                                                                              "Goku.", //61
                                                                                              "Kung Fu Panda.", //62
                                                                                              "Mickey Mouse.", //63
                                                                                              "Jerry, o rato.", //64
                                                                                              "Velma Dinkley.", //65
                                                                                              "Sonic the Hedgehog.", //66
                                                                                              "Jane Jetson.", //67
                                                                                              "Woodstock.", //68
                                                                                              "Daisy Duck.", //69
                                                                                              "Odie.", //70
                                                                                              "Fred Flintstone.", //71
                                                                                              "Pato.", //72
                                                                                              "Stimpy.", //73
                                                                                              "Mazinger Z.", //74
                                                                                              "Lula Molusco", //75
                                                                                              "Rainha Má.", //76
                                                                                              "Salsicha.", //77
                                                                                              "Dick Dastardly.", //78
                                                                                              "Oscar.", //79
                                                                                              "Cindy Vortex.", //80
                                                                                              "Cosmo.", //81
                                                                                              "Scrappy-Doo.", //82
                                                                                              "Betty Rubble.", //83
                                                                                              "Café com Leite.", //84
                                                                                              "Dexter.", //85
                                                                                              "Alastor Moody.", //86
                                                                                              "Marge Simpson.", //87
                                                                                              "Jane Jetson.", //88
                                                                                              "Top Cat", //89
                                                                                              "Stimpy.", //90
                                                                                              "Vicky.", //91
                                                                                              "Toothless.", //92
                                                                                              "Golias.", //93
                                                                                              "Dumbo.", //94
                                                                                              "Ash Ketchum.", //95
                                                                                              "Wanda.", //96
                                                                                              "Carl Carlson.", //97
                                                                                              "Miss Crabtree.", //98
                                                                                              "Johny Bravo.", //99
                                                                                              "Eustace Bagge." //100
                                                                                            ],
                                                                                          voltar: () {
                                                                                            setState(() {
                                                                                              telaInicial = false;
                                                                                              tela2TelaDosTemas = true;
                                                                                            });
                                                                                          },
                                                                                          generoDasPerguntas: 'Desenhos Animados')
                                                                                      : tela19LendasNordicas
                                                                                          ? Questionario(
                                                                                              listaDePerguntas: const [
                                                                                                  "Quem é o deus do trovão na mitologia nórdica?", //1
                                                                                                  "Qual lobo está associado a Odin na mitologia nórdica?", //2
                                                                                                  "Quem é o deus da guerra na mitologia nórdica?", //3
                                                                                                  "Qual deusa é conhecida por governar o reino dos mortos na mitologia nórdica?", //4
                                                                                                  "Que seres míticos vivem nas profundezas das montanhas na mitologia nórdica?", //5
                                                                                                  "O que é o Ragnarök na mitologia nórdica?", //6
                                                                                                  "Quem é o deus da beleza e da luz na mitologia nórdica?", //7
                                                                                                  "Qual é o nome da árvore do mundo na mitologia nórdica?", //8
                                                                                                  "O que é o navio mágico dos deuses na mitologia nórdica?", //9
                                                                                                  "Quem é a deusa da fertilidade e da colheita na mitologia nórdica?", //10
                                                                                                  "Qual criatura lendária tem nove mundos nas raízes de Yggdrasil?", //11
                                                                                                  "Quem é o deus da trapaça e das artimanhas na mitologia nórdica?", //12
                                                                                                  "Qual é a morada dos deuses na mitologia nórdica?", //13
                                                                                                  "Quem é o deus da sabedoria e da poesia na mitologia nórdica?", //14
                                                                                                  "Qual ser mítico é conhecido por criar o mundo na mitologia nórdica?", //15
                                                                                                  "Quem é o deus do mar na mitologia nórdica?", //16
                                                                                                  "Qual deus é famoso por seu martelo mágico na mitologia nórdica?", //17
                                                                                                  "Quem é o gigante do gelo que lutará contra os deuses no Ragnarök?", //18
                                                                                                  "Qual criatura lendária tem a forma de uma serpente gigante na mitologia nórdica?", //19
                                                                                                  "Quem é o deus do fogo na mitologia nórdica?", //20
                                                                                                  "Qual é o nome do reino dos gigantes na mitologia nórdica?", //21
                                                                                                  "Quem é a deusa protetora do lar e da família na mitologia nórdica?", //22
                                                                                                  "Qual é a morada dos anões na mitologia nórdica?", //23
                                                                                                  "Quem é o deus da música e das festas na mitologia nórdica?", //24
                                                                                                  "Qual é o nome da espada de fogo que Thor usa para lutar?", //25
                                                                                                  "Quem é a deusa do amor e da beleza na mitologia nórdica?", //26
                                                                                                  "Qual é o nome do cavalo de oito patas de Odin?", //27
                                                                                                  "Quem é o deus da caça e da arquearia na mitologia nórdica?", //28
                                                                                                  "Qual é o nome do martelo de Thor?", //29
                                                                                                  "Quem é o deus da poesia e das runas na mitologia nórdica?", //30
                                                                                                ],
                                                                                              certas: const [
                                                                                                  "Thor", //1
                                                                                                  "Fenrir", //2
                                                                                                  "Tyr", //3
                                                                                                  "Hel", //4
                                                                                                  "Anões", //5
                                                                                                  "O fim do mundo", //6
                                                                                                  "Balder", //7
                                                                                                  "Yggdrasil", //8
                                                                                                  "Skidbladnir", //9
                                                                                                  "Freyja", //10
                                                                                                  "Dragão Nidhogg", //11
                                                                                                  "Loki", //12
                                                                                                  "Asgard", //13
                                                                                                  "Nòhr", //14
                                                                                                  "Ymir", //15
                                                                                                  "Njord", //16
                                                                                                  "Thor", //17
                                                                                                  "Jormungandr", //18
                                                                                                  "Fafnir", //19
                                                                                                  "Loki", //20
                                                                                                  "Jotunheim", //21
                                                                                                  "Frigg", //22
                                                                                                  "Snartelfheim", //23
                                                                                                  "Bragi", //24
                                                                                                  "Mjolnir", //25
                                                                                                  "Freyja", //26
                                                                                                  "Slipknot", //27
                                                                                                  "Ullr", //28
                                                                                                  "Mjolnir", //29
                                                                                                  "Bragi" //30
                                                                                                ],
                                                                                              erradas1: const [
                                                                                                  "Teseu", //1
                                                                                                  "Hércules", //2
                                                                                                  "Hades", //3
                                                                                                  "Apolo", //4
                                                                                                  "Centauros", //5
                                                                                                  "Ragnarok", //6
                                                                                                  "Odin", //7
                                                                                                  "Monara", //8
                                                                                                  "Valhalla", //9
                                                                                                  "Medusa", //10
                                                                                                  "Smaug", //11
                                                                                                  "Athena", //12
                                                                                                  "Atlantis", //13
                                                                                                  "Freya", //14
                                                                                                  "Mjolnir", //15
                                                                                                  "Helheim", //16
                                                                                                  "Freya", //17
                                                                                                  "Surt", //18
                                                                                                  "Nidhogg", //19
                                                                                                  "Brunhilde", //20
                                                                                                  "Midgard", //21
                                                                                                  "Eir", //22
                                                                                                  "Vanaheim", //23
                                                                                                  "Siegfried", //24
                                                                                                  "Excalibur", //25
                                                                                                  "Loki", //26
                                                                                                  "Sleipnir", //27
                                                                                                  "Baldr", //28
                                                                                                  "Stormbreaker", //29
                                                                                                  "Lagertha" //30
                                                                                                ],
                                                                                              erradas2: const [
                                                                                                  "Poseidon", //1
                                                                                                  "Perseu", //2
                                                                                                  "Tártaro", //3
                                                                                                  "Deméter", //4
                                                                                                  "Minotauros", //5
                                                                                                  "Égloga", //6
                                                                                                  "Thor", //7
                                                                                                  "Caliburn", //8
                                                                                                  "Éter", //9
                                                                                                  "Pégaso", //10
                                                                                                  "Fenrir", //11
                                                                                                  "Artemis", //12
                                                                                                  "El Dorado", //13
                                                                                                  "Njord", //14
                                                                                                  "Gram", //15
                                                                                                  "Jotunheim", //16
                                                                                                  "Helga", //17
                                                                                                  "Fenris", //18
                                                                                                  "Naglfar", //19
                                                                                                  "Grimhild", //20
                                                                                                  "Asgard", //21
                                                                                                  "Skadi", //22
                                                                                                  "Svartalfheim", //23
                                                                                                  "Ragnar", //24
                                                                                                  "Gram", //25
                                                                                                  "Fenja", //26
                                                                                                  "Svarog", //27
                                                                                                  "Fafnir", //28
                                                                                                  "Thunderstrike", //29
                                                                                                  "Siv" //30
                                                                                                ],
                                                                                              erradas3: const [
                                                                                                  "Zeus", //1
                                                                                                  "Ares", //2
                                                                                                  "Olimpo", //3
                                                                                                  "Hades", //4
                                                                                                  "Titãs", //5
                                                                                                  "Ilíada", //6
                                                                                                  "Loki", //7
                                                                                                  "Excalibur", //8
                                                                                                  "Atlas", //9
                                                                                                  "Pégaso Negro", //10
                                                                                                  "Jörmungandr", //11
                                                                                                  "Apolo", //12
                                                                                                  "Cidade Dourada", //13
                                                                                                  "Odin", //14
                                                                                                  "Caliburn", //15
                                                                                                  "Valhalla", //16
                                                                                                  "Athena", //17
                                                                                                  "Esfinge", //18
                                                                                                  "Sleipnir", //19
                                                                                                  "Gunnar", //20
                                                                                                  "Bifröst", //21
                                                                                                  "Balder", //22
                                                                                                  "Muspelheim", //23
                                                                                                  "Fenris", //24
                                                                                                  "Thunderstrike", //25
                                                                                                  "Thrym", //26
                                                                                                  "Chernobog", //27
                                                                                                  "Siegfried", //28
                                                                                                  "Excalibur", //29
                                                                                                  "Surt" //30
                                                                                                ],
                                                                                              voltar: () {
                                                                                                setState(() {
                                                                                                  telaInicial = false;
                                                                                                  tela2TelaDosTemas = true;
                                                                                                });
                                                                                              },
                                                                                              generoDasPerguntas: 'Lendas Nórdicas')
                                                                                          : tela20Cinema
                                                                                              ? Questionario(
                                                                                                  listaDePerguntas: const [
                                                                                                      "Quem dirigiu o filme 'Cidadão Kane'?", //1
                                                                                                      "Qual filme é frequentemente considerado o primeiro longa-metragem da história do cinema?", //2
                                                                                                      "Qual é o filme de maior bilheteria de todos os tempos?", //3
                                                                                                      "Qual é o significado do termo 'blockbuster' no contexto do cinema?", //4
                                                                                                      "Quem ganhou o Oscar de Melhor Ator em 2020?", //5
                                                                                                      "Qual é o nome do diretor por trás da trilogia 'O Senhor dos Anéis'?", //6
                                                                                                      "Qual é o filme mais longo já lançado nos cinemas?", //7
                                                                                                      "Qual filme é frequentemente citado como o melhor filme de terror de todos os tempos?", //8
                                                                                                      "Qual ator interpretou o personagem James Bond por mais tempo?", //9
                                                                                                      "Quem é o diretor do filme 'A Origem'?", //10
                                                                                                      "Qual foi o primeiro filme colorido da história do cinema?", //11
                                                                                                      "Quem interpretou o Coringa no filme 'Cavaleiro das Trevas' de Christopher Nolan?", //12
                                                                                                      "Qual é o filme com o maior número de Oscars ganhos?", //13
                                                                                                      "Qual é o filme de animação mais bem-sucedido de todos os tempos?", //14
                                                                                                      "Qual foi o primeiro filme de Star Wars a ser lançado?", //15
                                                                                                      "Quem é o diretor do filme 'Pulp Fiction'?", //16
                                                                                                      "Qual filme popular de 1994 apresenta uma cena icônica de dança com John Travolta e Uma Thurman?", //17
                                                                                                      "Qual é o filme mais longo já feito?", //18
                                                                                                      "Qual é o filme clássico de 1939 que é frequentemente considerado um dos maiores filmes de todos os tempos?", //19
                                                                                                      "Quem dirigiu 'E.T. - O Extraterrestre'?", //20
                                                                                                      "Qual é o filme de maior sucesso da franquia 'Harry Potter'?", //21
                                                                                                      "Qual é o nome da série de filmes de ação estrelada por Keanu Reeves como John Wick?", //22
                                                                                                      "Qual é o primeiro filme da Marvel Cinematic Universe?", //23
                                                                                                      "Qual é o nome do diretor por trás de 'Jurassic Park'?", //24
                                                                                                      "Qual é o nome do robô no filme 'WALL-E' da Pixar?", //25
                                                                                                      "Quem ganhou o Oscar de Melhor Atriz em 2021?", //26
                                                                                                      "Qual é o filme que popularizou o termo 'carpe diem' e apresenta um professor carismático chamado John Keating?", //27
                                                                                                      "Quem dirigiu o filme 'Avatar'?", //28
                                                                                                      "Qual filme é conhecido por sua linha de diálogo 'Você não pode lidar com a verdade!'?", //29
                                                                                                      "Qual é o filme de Quentin Tarantino lançado em 1994 que gira em torno de um assalto a uma joalheria?" //30
                                                                                                    ],
                                                                                                  certas: const [
                                                                                                      "Orson Welles", //1
                                                                                                      "'O Nascimento de uma Nação' (1915) de D.W. Griffith", //2
                                                                                                      "'Avatar' (2009) de James Cameron", //3
                                                                                                      "Filme de grande sucesso comercial", //4
                                                                                                      "Joaquin Phoenix", //5
                                                                                                      "Peter Jackson", //6
                                                                                                      "'Gone with the Wind' (E o Vento Levou) com 238 minutos", //7
                                                                                                      "'O Exorcista' (1973)", //8
                                                                                                      "Sean Connery", //9
                                                                                                      "Christopher Nolan", //10
                                                                                                      "'O Mágico de Oz' (1939)", //11
                                                                                                      "Heath Ledger", //12
                                                                                                      "'Ben-Hur' (1959), com 11 oscars", //13
                                                                                                      "'O Rei Leão' (1994)", //14
                                                                                                      "'Star Wars: Episódio IV - Uma Nova Esperança", //15
                                                                                                      "Quentin Tarantino", //16
                                                                                                      "'Pulp Fiction'", //17
                                                                                                      "'War and Peace' (1967) com 431 minutos", //18
                                                                                                      "'O Mágico de Oz'", //19
                                                                                                      "Steven Spielberg", //20
                                                                                                      "'Harry Potter e as Relíquias da Morte - Parte 2'", //21
                                                                                                      "'John Wick'", //22
                                                                                                      "'Homem de Ferro' (2008)", //23
                                                                                                      "Steven Spielberg", //24
                                                                                                      "WALL-E", //25
                                                                                                      "Frances McDormand", //26
                                                                                                      "'Sociedade dos Poetas Mortos'", //27
                                                                                                      "James Cameron", //28
                                                                                                      "'Questão de Honra'", //29
                                                                                                      "'Pulp Fiction'" //30
                                                                                                    ],
                                                                                                  erradas1: const [
                                                                                                      "Alfred Hitchcock", //1
                                                                                                      "'Jurassic Park' (1993) de Steven Spielberg", //2
                                                                                                      "'O Discurso do Rei' (2010) de Tom Hooper", //3
                                                                                                      "Filme com baixo orçamento", //4
                                                                                                      "Robert De Niro", //5
                                                                                                      "Quentin Tarantino", //6
                                                                                                      "'Toy Story' (1995) com 81 minutos", //7
                                                                                                      "'Frozen: Uma Aventura Congelante' (2013)", //8
                                                                                                      "Daniel Craig", //9
                                                                                                      "Martin Scorsese", //10
                                                                                                      "'Casablanca' (1942)", //11
                                                                                                      "Jack Nicholson", //12
                                                                                                      "'Pulp Fiction' (1994) com 5 Oscars", //13
                                                                                                      "'Shrek' (2001)", //14
                                                                                                      "'Star Wars: Episódio I - A Ameaça Fantasma'", //15
                                                                                                      "Steven Spielberg", //16
                                                                                                      "'Forrest Gump' (1994)", //17
                                                                                                      "'O Senhor dos Anéis: O Retorno do Rei' (2003) com 201 minutos", //18
                                                                                                      "'O Grande Ditador' (1940)", //19
                                                                                                      "James Cameron", //20
                                                                                                      "'Harry Potter e o Prisioneiro de Azkaban'", //21
                                                                                                      "'Jason Bourne.'", //22
                                                                                                      "'Thor' (2011)", //23
                                                                                                      "James Cameron", //24
                                                                                                      "R2-D2", //25
                                                                                                      "Scarlett Johansson", //26
                                                                                                      "'Clube dos Cinco'", //27
                                                                                                      "Christopher Nolan", //28
                                                                                                      "'Freedom Sky'", //29
                                                                                                      "'O estouro'" //30
                                                                                                    ],
                                                                                                  erradas2: const [
                                                                                                      "Steven Spielberg", //1
                                                                                                      "'Cidadão Kane' (1941) de Orson Welles", //2
                                                                                                      "'Vingadores: Ultimato' (2019) dos Irmãos Russo", //3
                                                                                                      "Filme com atores pouco conhecidos", //4
                                                                                                      "Johnny Depp", //5
                                                                                                      "James Cameron", //6
                                                                                                      "'O Senhor dos Anéis: A Sociedade do Anel' com 120 minutos", //7
                                                                                                      "'Harry Potter e o Prisioneiro de Azkaban'", //8
                                                                                                      "Pierce Brosnan", //9
                                                                                                      "Woody Allen", //10
                                                                                                      "'O Feiticeiro de Oz' (1939)", //11
                                                                                                      "Jared Leto", //12
                                                                                                      "'La La Land' (2016) com 6 Oscars", //13
                                                                                                      "'Procurando Nemo' (2003)", //14
                                                                                                      "'Star Wars: Episódio VI - O Retorno de Jedi'", //15
                                                                                                      "George Lucas", //16
                                                                                                      "'Dirty Dancing' (1987)", //17
                                                                                                      "'E o Vento Levou' com 238 minutos", //18
                                                                                                      "'Gone with the Wind' (E o Vento Levou)", //19
                                                                                                      "Martin Scorsese", //20
                                                                                                      "'Harry Potter e o Cálice de Fogo'", //21
                                                                                                      "'Max Payne'", //22
                                                                                                      "'Os Vingadores' (2012)", //23
                                                                                                      "George Lucas", //24
                                                                                                      "R2-D2", //25
                                                                                                      "Meryl Streep", //26
                                                                                                      "'Sociedade dos Poetas Vivos'", //27
                                                                                                      "Steven Spielberg", //28
                                                                                                      "'Um Sonho de Liberdade'", //29
                                                                                                      "'O roubo'" //30
                                                                                                    ],
                                                                                                  erradas3: const [
                                                                                                      "Martin Scorsese", //1
                                                                                                      "'E o Vento Levou' (1939) de Victor Fleming", //2
                                                                                                      "'Titanic' (1997) de James Cameron", //3
                                                                                                      "Filme malsucedido", //4
                                                                                                      "Robert Downey Jr", //5
                                                                                                      "Woddy Allen", //6
                                                                                                      "'O Rei Leão' com 80 minutos", //7
                                                                                                      "O Boneco do mal", //8
                                                                                                      "Roger Moore", //9
                                                                                                      "Desconhecido", //10
                                                                                                      "1945", //11
                                                                                                      "Joaquin Phoenix", //12
                                                                                                      "'Titanic' (1997) com 14 Oscars", //13
                                                                                                      "'Toy Story' (1995)", //14
                                                                                                      "'Star Wars: Episódio III - A Vingança dos Sith'", //15
                                                                                                      "Christopher Nolan", //16
                                                                                                      "'Esqueceram de Mim' (1990)", //17
                                                                                                      "'Interestelar' (2014) com 169 minutos", //18
                                                                                                      "'E o Vento Levou' (1939)", //19
                                                                                                      "Woody Allen", //20
                                                                                                      "'Harry Potter e o Enigma do Príncipe'", //21
                                                                                                      "'Max Steel'", //22
                                                                                                      "'Vingadores: Era de Ultron' (2015)", //23
                                                                                                      "Woddy Allen", //24
                                                                                                      "'BB-8'", //25
                                                                                                      "Brad Pitt", //26
                                                                                                      "'A Sociedade dos Poetas Mortos'", //27
                                                                                                      "George Lucas", //28
                                                                                                      "'Gladiador' (2000)", //29
                                                                                                      "'Cães de Aluguel'" //30
                                                                                                    ],
                                                                                                  voltar: () {
                                                                                                    setState(() {
                                                                                                      telaInicial = false;
                                                                                                      tela2TelaDosTemas = true;
                                                                                                    });
                                                                                                  },
                                                                                                  generoDasPerguntas: 'Cinema')
                                                                                              : tela21CienciaGeral
                                                                                                  ? Questionario(
                                                                                                      listaDePerguntas: const [
                                                                                                          "Qual é o planeta mais próximo do Sol?", //1
                                                                                                          "O que a sigla DNA representa?", //2
                                                                                                          "Quem é considerado o pai da física moderna?", //3
                                                                                                          "Qual é o processo pelo qual as plantas fabricam seu próprio alimento?", //4
                                                                                                          "Quanto tempo a luz do Sol leva para chegar à Terra?", //5
                                                                                                          "O que é um átomo?", //6
                                                                                                          "Qual é o metal mais abundante na crosta terrestre?", //7
                                                                                                          "O que é um cromossomo?", //8
                                                                                                          "Qual é o maior osso do corpo humano?", //9
                                                                                                          "Qual é a unidade básica da hereditariedade?", //10
                                                                                                          "O que é a Lei da Gravidade de Newton?", //11
                                                                                                          "Qual é o menor planeta do Sistema Solar?", //12
                                                                                                          "O que é um ecossistema?", //13
                                                                                                          "Qual é o elemento mais comum na atmosfera da Terra?", //14
                                                                                                          "O que é um eclipse lunar?", //15
                                                                                                          "Qual é a força que mantém os objetos na Terra?", //16
                                                                                                          "O que é a teoria da evolução de Charles Darwin?", //17
                                                                                                          "O que é a energia nuclear?", //18
                                                                                                          "O que é a teoria do Big Bang?", //19
                                                                                                          "Quem é conhecido como o pai da eletricidade?", //20
                                                                                                          "Qual é a fórmula química da água?", //21
                                                                                                          "O que é a fotossíntese?", //22
                                                                                                          "O que são os polos magnéticos da Terra?", //23
                                                                                                          "Qual é a unidade de medida de corrente elétrica?", //24
                                                                                                          "O que é a teoria da relatividade de Einstein?", //25
                                                                                                          "O que é um buraco negro?", //26
                                                                                                          "Qual é o processo de transformação do vapor em água?", //27
                                                                                                          "Qual é a unidade de medida de temperatura padrão no Brasil?", //28
                                                                                                          "O que é a radioatividade?", //29
                                                                                                          "O que é um íon?" //30
                                                                                                        ],
                                                                                                      certas: const [
                                                                                                          "Mercúrio", //1
                                                                                                          "Material genético", //2
                                                                                                          "Albert Einstein", //3
                                                                                                          "Fotossíntese", //4
                                                                                                          "8 minutos", //5
                                                                                                          "Partícula fundamental", //6
                                                                                                          "Alumínio", //7
                                                                                                          "Estrutura de DNA", //8
                                                                                                          "Fêmur", //9
                                                                                                          "Unidade genética", //10
                                                                                                          "Atração entre massas", //11
                                                                                                          "Plutão", //12
                                                                                                          "Interação entre seres vivos e ambiente", //13
                                                                                                          "Nitrogênio", //14
                                                                                                          "Lua na sombra da Terra", //15
                                                                                                          "Gravidade", //16
                                                                                                          "Diversificação de espécies", //17
                                                                                                          "Energia da fissão ou fusão nuclear", //18
                                                                                                          "Formação do universo", //19
                                                                                                          "Thomas Edison", //20
                                                                                                          "H2O", //21
                                                                                                          "Conversão de luz em energia", //22
                                                                                                          "Regiões magnéticas da Terra", //23
                                                                                                          "Ampère (A)", //24
                                                                                                          "Comportamento da gravidade", //25
                                                                                                          "Região de gravidade intensa", //26
                                                                                                          "Condensação", //27
                                                                                                          "Grau Celsius (°C)", //28
                                                                                                          "Emissão de partículas", //29
                                                                                                          "Átomo que perdeu ou ganhou elétron" //30
                                                                                                        ],
                                                                                                      erradas1: const [
                                                                                                          "Vênus", //31
                                                                                                          "Sigla desconhecida", //32
                                                                                                          "Isaac Newton", //33
                                                                                                          "Quimiossíntese", //34
                                                                                                          "1 segundo", //35
                                                                                                          "Um tipo de peixe", //36
                                                                                                          "Cobre", //37
                                                                                                          "Uma proteína", //38
                                                                                                          "Costela", //39
                                                                                                          "Um tipo de bactéria", //40
                                                                                                          "Lei da Inércia", //41
                                                                                                          "Marte", //42
                                                                                                          "Um sistema solar fora da Terra", //43
                                                                                                          "Oxigênio", //44
                                                                                                          "Quando a Lua se ilumina sozinha", //45
                                                                                                          "Magnetismo", //46
                                                                                                          "Teoria das Cordas", //47
                                                                                                          "Energia eólica", //48
                                                                                                          "Teoria do Caos", //49
                                                                                                          "Benjamin Franklin", //50
                                                                                                          "CO2", //51
                                                                                                          "Processo químico", //52
                                                                                                          "Estações de rádio", //53
                                                                                                          "Watt (W)", //54
                                                                                                          "Lei da Termodinâmica", //55
                                                                                                          "Fenômeno usado para teletransporte", //56
                                                                                                          "Vaporização", //57
                                                                                                          "Grau Kelvin", //58
                                                                                                          "Sismografia", //59
                                                                                                          "Átomo que ganhou elétron", //60
                                                                                                        ],
                                                                                                      erradas2: const [
                                                                                                          "Netuno", //1
                                                                                                          "Sequência de proteínas", //2
                                                                                                          "Galileu Galilei", //3
                                                                                                          "Oxigenação", //4
                                                                                                          "12 horas", //5
                                                                                                          "Um tipo de mineral", //6
                                                                                                          "Ouro", //7
                                                                                                          "Uma estrela", //8
                                                                                                          "Pé", //9
                                                                                                          "Uma medida de temperatura", //10
                                                                                                          "Lei de Boyle", //11
                                                                                                          "Urano", //12
                                                                                                          "Um conjunto de animais", //13
                                                                                                          "Dióxido de carbono", //14
                                                                                                          "Quando a Lua muda de cor", //15
                                                                                                          "Eletricidade", //16
                                                                                                          "Teoria da relatividade", //17
                                                                                                          "Energia térmica", //18
                                                                                                          "Teoria da conspiração", //19
                                                                                                          "Nikola Tesla", //20
                                                                                                          "Fe3O4", //21
                                                                                                          "Reação química", //22
                                                                                                          "Estrelas do mar", //23
                                                                                                          "Kelvin (K)", //24
                                                                                                          "Lei de Hubble", //25
                                                                                                          "Um buraco na camada de ozônio", //26
                                                                                                          "Aguificação", //27
                                                                                                          "Grau Fahrenheit", //28
                                                                                                          "Escrita cuneiforme", //29
                                                                                                          "Partícula de luz" //30
                                                                                                        ],
                                                                                                      erradas3: const [
                                                                                                          "Urano", //1
                                                                                                          "Código genético", //2
                                                                                                          "Johannes Kepler", //3
                                                                                                          "Fermentação", //4
                                                                                                          "24 horas", //5
                                                                                                          "Um tipo de rocha", //6
                                                                                                          "Prata", //7
                                                                                                          "Um planeta anão", //8
                                                                                                          "Polegar", //9
                                                                                                          "Uma medida de distância", //10
                                                                                                          "Lei de Coulomb", //11
                                                                                                          "Netuno", //12
                                                                                                          "Um planeta desconhecido", //13
                                                                                                          "Metano", //14
                                                                                                          "Quando a Lua desaparece", //15
                                                                                                          "Efeito estufa", //16
                                                                                                          "Teoria da relatividade geral", //17
                                                                                                          "Energia solar", //18
                                                                                                          "Teoria da gravidade inversa", //19
                                                                                                          "Nicolau Copérnico", //20
                                                                                                          "NaCl", //21
                                                                                                          "Uma substância química", //22
                                                                                                          "Estrelas cadentes", //23
                                                                                                          "Fahrenheit (°F)", //24
                                                                                                          "Lei de Ohm", //25
                                                                                                          "É um ser vivo no espaço", //26
                                                                                                          "Solidificação", //27
                                                                                                          "Não existe um padrão", //28
                                                                                                          "Alfabeto grego", //29
                                                                                                          "Átomo que perdeu elétrons", //30
                                                                                                        ],
                                                                                                      voltar: () {
                                                                                                        setState(() {
                                                                                                          telaInicial = false;
                                                                                                          tela2TelaDosTemas = true;
                                                                                                        });
                                                                                                      },
                                                                                                      generoDasPerguntas: 'Ciência Geral')
                                                                                                  : tela22ou23SeriesDeTVouInvencoesHistoricas
                                                                                                      ? Questionario(
                                                                                                          listaDePerguntas: const [
                                                                                                              "Qual série de televisão popular apresenta um mundo de fantasia chamado Westeros?", //1
                                                                                                              "Em 'Breaking Bad', qual é a ocupação principal do personagem Walter White?", //2
                                                                                                              "Qual série de TV se passa em um hospital fictício chamado Grey Sloan Memorial?", //3
                                                                                                              "Quem é o protagonista da série 'Sherlock'?", //4
                                                                                                              "Que série de TV segue as vidas das famílias nobres de Westeros em luta pelo Trono de Ferro?", //5
                                                                                                              "Em 'Friends', qual personagem é conhecido por sua obsessão com a limpeza?", //6
                                                                                                              "Qual série de TV se concentra em um detetive com métodos pouco convencionais chamado Gregory House?", //7
                                                                                                              "Quem interpreta o papel-título na série 'Dexter'?", //8
                                                                                                              "Em 'Game of Thrones', qual casa governa Winterfell?", //9
                                                                                                              "Qual série de TV se passa em uma prisão de segurança máxima chamada Litchfield Penitenciária?", //10
                                                                                                              "Quem é o personagem principal em 'The Crown'?", //11
                                                                                                              "Em 'Stranger Things', qual é o nome da garota com habilidades psicocinéticas?", //12
                                                                                                              "Qual série de TV segue a vida de um grupo de sobreviventes após um apocalipse zumbi?", //13
                                                                                                              "Em 'The Office', qual personagem é conhecido por seu amor por desastres ecológicos?", //14
                                                                                                              "Que série de televisão é ambientada no mundo de Dungeons & Dragons, com um grupo de crianças como protagonistas?", //15
                                                                                                              "Quem interpreta o papel principal na série 'The Witcher'?", //16
                                                                                                              "Em 'Peaky Blinders', qual é o nome da família envolvida em atividades criminosas?", //17
                                                                                                              "Qual série de TV segue um ex-professor de química que começa a fabricar metanfetamina?", //18
                                                                                                              "Quem é a protagonista da série 'Alias'?", //19
                                                                                                              "Em 'The Mandalorian', qual é o nome real do protagonista conhecido como 'O Mandaloriano'?", //20
                                                                                                              "Qual série de TV é ambientada na fictícia cidade de Springfield?", //21
                                                                                                              "Quem é o ator que interpreta Tyrion Lannister em 'Game of Thrones'?", //22
                                                                                                              "Em 'Breaking Bad', qual é o nome da série de metanfetamina produzida por Walter White?", //23
                                                                                                              "Qual série de TV segue um psicólogo forense com habilidades especiais chamado Shawn Spencer?", //24
                                                                                                              "Em 'Stranger Things', qual é o nome da criatura aterrorizante que vem do Mundo Invertido?", //25
                                                                                                              "Quem interpreta a protagonista em 'The Marvelous Mrs. Maisel'?", //26
                                                                                                              "Em 'Friends', qual é o nome do café onde o grupo costuma se reunir?", //27
                                                                                                              "Qual série de TV se concentra em uma equipe de super-heróis conhecida como 'Os Sete'?", //28
                                                                                                              "Quem é o ator que interpreta Michael Scott em 'The Office'?", //29
                                                                                                              "Em 'The Big Bang Theory', qual personagem é um físico teórico altamente inteligente, mas socialmente desajeitado?", //30
                                                                                                              "Qual série de TV segue um consultor forense com um código de conduta próprio chamado Dexter Morgan?", //31
                                                                                                              "Quem é o personagem principal na série 'Lucifer'?", //32
                                                                                                              "Em 'The Crown', quem interpreta a Rainha Elizabeth II na primeira temporada?", //33
                                                                                                              "Qual série de TV segue a vida de uma família de espiões soviéticos que vivem nos Estados Unidos?", //34
                                                                                                              "Em 'Black Mirror', qual é o nome do sistema que classifica as pessoas com base em suas interações sociais?", //35
                                                                                                              "Quem é o ator que interpreta Jon Snow em 'Game of Thrones'?", //36
                                                                                                              "Qual série de TV segue um detetive privado com superpoderes chamado Jessica Jones?", //37
                                                                                                              "Em 'The Handmaid's Tale', qual é o nome do regime totalitário que governa os Estados Unidos?", //38
                                                                                                              "Quem é o protagonista da série 'House of Cards'?", //39
                                                                                                              "Em 'The Walking Dead', qual é o nome do líder do grupo sobrevivente no início da série?", //40
                                                                                                              "Qual série de TV segue a vida de um vigilante mascarado chamado Rorschach?", //41
                                                                                                              "Quem é o ator que interpreta Pablo Escobar em 'Narcos'?", //42
                                                                                                              "Em 'Friends', qual personagem é conhecido por seu amor por comida e preguiça?", //43
                                                                                                              "Qual série de TV segue a vida de uma família disfuncional que dirige um funeral em uma cidade fictícia?", //44
                                                                                                              "Em 'Vikings', qual é o nome do lendário guerreiro viking que lidera os ataques?", //45
                                                                                                              "Quem é o ator que interpreta Jack Pearson em 'This Is Us'?", //46
                                                                                                              "Qual série de TV segue a vida de um grupo de estudantes do ensino médio na cidade de Riverdale?", //47
                                                                                                              "Em 'Black Mirror', qual é o nome do dispositivo que permite revisitar memórias?", //48
                                                                                                              "Quem é o protagonista da série 'Mr. Robot'?", //49
                                                                                                              "Em 'Stranger Things', qual é o nome do demônio que aterroriza os personagens na segunda temporada?" //50
                                                                                                            ],
                                                                                                          certas: const [
                                                                                                              "Game of Thrones", //1
                                                                                                              "Professor de química", //2
                                                                                                              "Grey's Anatomy", //3
                                                                                                              "Benedict Cumberbatch", //4
                                                                                                              "Game of Thrones", //5
                                                                                                              "Monica Geller", //6
                                                                                                              "House, M.D.", //7
                                                                                                              "Michael C. Hall", //8
                                                                                                              "Casa Stark", //9
                                                                                                              "Orange Is the New Black", //10
                                                                                                              "Rainha Elizabeth II", //11
                                                                                                              "Eleven", //12
                                                                                                              "The Walking Dead", //13
                                                                                                              "Phoebe Buffay", //14
                                                                                                              "Stranger Things", //15
                                                                                                              "Henry Cavill", //16
                                                                                                              "Família Shelby", //17
                                                                                                              "Breaking Bad", //18
                                                                                                              "Jennifer Garner", //19
                                                                                                              "Din Djarin", //20
                                                                                                              "The Simpsons", //21
                                                                                                              "Peter Dinklage", //22
                                                                                                              "Blue Sky", //23
                                                                                                              "Shawn Spencer", //24
                                                                                                              "Demogorgon", //25
                                                                                                              "Rachel Brosnahan", //26
                                                                                                              "Central Perk", //27
                                                                                                              "The Boys", //28
                                                                                                              "Steve Carell", //29
                                                                                                              "Sheldon Cooper", //30
                                                                                                              "Dexter Morgan", //31
                                                                                                              "Lucifer Morningstar", //32
                                                                                                              "Claire Foy", //33
                                                                                                              "The Americans", //34
                                                                                                              "Sistema de Avaliação Social", //35
                                                                                                              "Kit Harington", //36
                                                                                                              "Jessica Jones", //37
                                                                                                              "The Handmaid's Tale", //38
                                                                                                              "Kevin Spacey", //39
                                                                                                              "Rick Grimes", //40
                                                                                                              "Watchmen", //41
                                                                                                              "Wagner Moura", //42
                                                                                                              "Joey Tribbiani", //43
                                                                                                              "Six Feet Under", //44
                                                                                                              "Ragnar Lothbrok", //45
                                                                                                              "Milo Ventimiglia", //46
                                                                                                              "Riverdale", //47
                                                                                                              "Grain", //48
                                                                                                              "Rami Malek", //49
                                                                                                              "Mind Flayer" //50
                                                                                                            ],
                                                                                                          erradas1: const [
                                                                                                              "Vikings", //1
                                                                                                              "Médico cirurgião", //2
                                                                                                              "Breaking Bad", //3
                                                                                                              "Robert Downey Jr.", //4
                                                                                                              "The Crown", //5
                                                                                                              "Ross Geller", //6
                                                                                                              "CSI: Miami", //7
                                                                                                              "Bryan Cranston", //8
                                                                                                              "Casa Targaryen", //9
                                                                                                              "Prison Break", //10
                                                                                                              "Princesa Diana", //11
                                                                                                              "Will Byers", //12
                                                                                                              "Stranger Things", //13
                                                                                                              "Rachel Green", //14
                                                                                                              "Vikings", //15
                                                                                                              "Tom Hanks", //16
                                                                                                              "Família Soprano", //17
                                                                                                              "Narcos", //18
                                                                                                              "Keri Russell", //19
                                                                                                              "Luke Skywalker", //20
                                                                                                              "Family Guy", //21
                                                                                                              "Jon Hamm", //22
                                                                                                              "Crystal Clear", //23
                                                                                                              "Adrian Monk", //24
                                                                                                              "Sauron", //25
                                                                                                              "Meryl Streep", //26
                                                                                                              "The Regal Beagle", //27
                                                                                                              "The Avengers", //28
                                                                                                              "Jim Carrey", //29
                                                                                                              "Leonard Hofstadter", //30
                                                                                                              "Hannibal Lecter", //31
                                                                                                              "Supergirl", //32
                                                                                                              "Helen Mirren", //33
                                                                                                              "Homeland", //34
                                                                                                              "Big Brother", //35
                                                                                                              "Emilia Clarke", //36
                                                                                                              "Luke Cage", //37
                                                                                                              "The Witcher", //38
                                                                                                              "Robin Wright", //39
                                                                                                              "Negan", //40
                                                                                                              "The Punisher", //41
                                                                                                              "Javier Bardem", //42
                                                                                                              "Chandler Bing", //43
                                                                                                              "Desperate Housewives", //44
                                                                                                              "William Wallace", //45
                                                                                                              "Sterling K. Brown", //46
                                                                                                              "Gossip Girl", //47
                                                                                                              "Memory Stone", //48
                                                                                                              "Benedict Cumberbatch", //49
                                                                                                              "Demogorgon" //50
                                                                                                            ],
                                                                                                          erradas2: const [
                                                                                                              "The Walking Dead", //1
                                                                                                              "Engenheiro de software", //2
                                                                                                              "Lost", //3
                                                                                                              "Tom Hanks", //4
                                                                                                              "The Mandalorian", //5
                                                                                                              "Phoebe Buffay", //6
                                                                                                              "ER", //7
                                                                                                              "Idris Elba", //8
                                                                                                              "Casa Lannister", //9
                                                                                                              "Stranger Things", //10
                                                                                                              "Winston Churchill", //11
                                                                                                              "Mike Wheeler", //12
                                                                                                              "Friends", //13
                                                                                                              "Ross Geller", //14
                                                                                                              "The X-Files", //15
                                                                                                              "Jared Leto", //16
                                                                                                              "Família Peaky Blinders", //17
                                                                                                              "The Sopranos", //18
                                                                                                              "Maggie Smith", //19
                                                                                                              "Han Solo", //20
                                                                                                              "South Park", //21
                                                                                                              "Sean Bean", //22
                                                                                                              "Green Fire", //23
                                                                                                              "Horatio Caine", //24
                                                                                                              "Predator", //25
                                                                                                              "Viola Davis", //26
                                                                                                              "The Central Perk", //27
                                                                                                              "The Flash", //28
                                                                                                              "Matthew Perry", //29
                                                                                                              "Howard Wolowitz", //30
                                                                                                              "Tony Stark", //31
                                                                                                              "Supernatural", //32
                                                                                                              "Cate Blanchett", //33
                                                                                                              "Narcos", //34
                                                                                                              "Social Credit System", //35
                                                                                                              "Peter Dinklage", //36
                                                                                                              "Sherlock Holmes", //37
                                                                                                              "Westeros", //38
                                                                                                              "Dowane Wright", //39
                                                                                                              "Dwight Schrute", //40
                                                                                                              "Daredevil", //41
                                                                                                              "Giancarlo Esposito", //42
                                                                                                              "Phoebe", //43
                                                                                                              "Desperate Workwives", //44
                                                                                                              "Floki", //45
                                                                                                              "Mandy Patinkin", //46
                                                                                                              "Dawson's Creek", //47
                                                                                                              "Re-Memory", //48
                                                                                                              "Tobey Maguire", //49
                                                                                                              "Slender Man" //50
                                                                                                            ],
                                                                                                          erradas3: const [
                                                                                                              "The Office", //1
                                                                                                              "Piloto de avião", //2
                                                                                                              "The Big Bang Theory", //3
                                                                                                              "Johnny Depp", //4
                                                                                                              "Breaking Bad", //5
                                                                                                              "Chandler Bing", //6
                                                                                                              "House of Cards", //7
                                                                                                              "Christian Bale", //8
                                                                                                              "Casa Tully", //9
                                                                                                              "Peaky Blinders", //10
                                                                                                              "Harry Potter", //11
                                                                                                              "Dustin Henderson", //12
                                                                                                              "Modern Family", //13
                                                                                                              "Joey Tribbiani", //14
                                                                                                              "Game of Thrones", //15
                                                                                                              "Daniel Craig", //16
                                                                                                              "Família Shelbie", //17
                                                                                                              "Mad Men", //18
                                                                                                              "Meryl Streep", //19
                                                                                                              "Obi-Wan Kenobi", //20
                                                                                                              "The Flintstones", //21
                                                                                                              "Nikolaj Coster-Waldau", //22
                                                                                                              "Pure Blue", //23
                                                                                                              "Gil Grissom", //24
                                                                                                              "Alien", //25
                                                                                                              "Matthew McConaughey", //26
                                                                                                              "The Brew House", //27
                                                                                                              "Aquaman", //28
                                                                                                              "David Schwimmer", //29
                                                                                                              "Rajesh Koothrappali", //30
                                                                                                              "Heisenberg", //31
                                                                                                              "Arrow", //32
                                                                                                              "Kate Winslet", //33
                                                                                                              "The West Wing", //34
                                                                                                              "Digital Surveillance System", //35
                                                                                                              "Emilia Clarke", //36
                                                                                                              "Kilgrave", //37
                                                                                                              "Middle-earth", //38
                                                                                                              "Robin Williams", //39
                                                                                                              "Ron Swanson", //40
                                                                                                              "Luke Cage", //41
                                                                                                              "Lena Headey", //42
                                                                                                              "Monica Geller", //43
                                                                                                              "The Wire", //44
                                                                                                              "Athelstan", //45
                                                                                                              "Laurence Fishburne", //46
                                                                                                              "The Simpsons", //47
                                                                                                              "Black Box", //48
                                                                                                              "Robert Pattinson", //49
                                                                                                              "Zombie" //50
                                                                                                            ],
                                                                                                          voltar: () {
                                                                                                            setState(() {
                                                                                                              telaInicial = false;
                                                                                                              tela2TelaDosTemas = true;
                                                                                                            });
                                                                                                          },
                                                                                                          generoDasPerguntas: 'Séries de TV')
                                                                                                      : Questionario(
                                                                                                          listaDePerguntas: const [
                                                                                                              "Quem inventou a lâmpada elétrica?", //1
                                                                                                              "Em que ano foi inventada a lâmpada elétrica?", //2
                                                                                                              "Quem é o inventor do telefone?", //3
                                                                                                              "Qual foi a importância da invenção do telefone?", //4
                                                                                                              "Quem inventou a imprensa de tipos móveis?", //5
                                                                                                              "Em que ano foi inventada a imprensa de tipos móveis?", //6
                                                                                                              "Quem é o inventor do avião?", //7
                                                                                                              "Qual foi a invenção que revolucionou as comunicações?", //8
                                                                                                              "Quem inventou o motor a vapor?", //9
                                                                                                              "Em que contexto histórico ocorreu a Revolução Industrial?", //10
                                                                                                              "Quem é creditado pela invenção do rádio?", //11
                                                                                                              "Qual é o nome do inventor da penicilina?", //12
                                                                                                              "Qual foi a importância da invenção do microscópio?", //13
                                                                                                              "Quem é o inventor da internet?", //14
                                                                                                              "Qual foi o impacto da invenção da roda na história?", //15
                                                                                                              "Quem é creditado pela invenção da máquina de costura?", //16
                                                                                                              "Qual foi o impacto da invenção do motor a combustão interna?", //17
                                                                                                              "Quem inventou o computador pessoal?", //18
                                                                                                              "Quem é creditado pela invenção da pólvora?", //19
                                                                                                              "Quando foi inventado o papel-moeda?", //20
                                                                                                              "Quem é creditado pela invenção da fotografia?", //21
                                                                                                              "Como a invenção do telescópio contribuiu para a astronomia?", //22
                                                                                                              "Quem inventou a televisão?", //23
                                                                                                              "Quem é o inventor do motor elétrico?", //24
                                                                                                              "Quando e onde foi inventado o papel higiênico?", //25
                                                                                                              "Qual foi a importância da invenção do radar?", //26
                                                                                                              "Quem inventou o telefone celular?", //27
                                                                                                              "Quem é creditado pela invenção da máquina de escrever?", //28
                                                                                                              "Qual foi o impacto da invenção da impressora a jato de tinta?", //29
                                                                                                              "Quem é creditado pela invenção da máquina a vapor?" //30
                                                                                                            ],
                                                                                                          certas: const [
                                                                                                              "Thomas Edison", //1
                                                                                                              "1879", //2
                                                                                                              "Alexander Graham Bell", //3
                                                                                                              "Revolucionou a forma de comunicação", //4
                                                                                                              "Johannes Gutenberg", //5
                                                                                                              "1440", //6
                                                                                                              "Santos Dumont", //7
                                                                                                              "O telégrafo", //8
                                                                                                              "James Watt", //9
                                                                                                              "No final do século XVIII e início do século XIX", //10
                                                                                                              "Guglielmo Marconi", //11
                                                                                                              "Alexander Fleming", //12
                                                                                                              "Permitiu a observação de estruturas microscópicas", //13
                                                                                                              "A internet foi desenvolvida por várias pessoas", //14
                                                                                                              "Facilitou o transporte e o comércio", //15
                                                                                                              "Elias Howe", //16
                                                                                                              "Revolucionou o transporte e a indústria", //17
                                                                                                              "Várias pessoas contribuíram", //18
                                                                                                              "A invenção da pólvora é atribuída a chineses", //19
                                                                                                              "O papel-moeda foi inventado na China no século VII", //20
                                                                                                              "Louis Daguerre", //21
                                                                                                              "Permitiu observar objetos celestes", //22
                                                                                                              "Philo Farnsworth e John Logie Baird", //23
                                                                                                              "Michael Faraday", //24
                                                                                                              "China", //25
                                                                                                              "Detecção de aeronaves", //26
                                                                                                              "Martin Cooper", //27
                                                                                                              "Christopher Sholes", //28
                                                                                                              "Facilitou a impressão de documentos.", //29
                                                                                                              "James Watt" //30
                                                                                                            ],
                                                                                                          erradas1: const [
                                                                                                              "Sheldon Cooper", //1
                                                                                                              "1865", //2
                                                                                                              "Elisha Gray", //3
                                                                                                              "Não teve impacto significativo", //4
                                                                                                              "Benjamin Franklin", //5
                                                                                                              "1500", //6
                                                                                                              "Samuel Morse", //7
                                                                                                              "A máquina de escrever", //8
                                                                                                              "George Stephenson", //9
                                                                                                              "No século XVII", //10
                                                                                                              "Marie Curie", //11
                                                                                                              "Isaac Newton", //12
                                                                                                              "Para colorir pinturas", //13
                                                                                                              "Al Gore", //14
                                                                                                              "A invenção da escrita", //15
                                                                                                              "Isaac Singer", //16
                                                                                                              "O motor a vapor não existe", //17
                                                                                                              "Charles Babbage", //18
                                                                                                              "Alquimistas medievais", //19
                                                                                                              "No século XIX", //20
                                                                                                              "Mc'Artiney", //21
                                                                                                              "Para observar peixes", //22
                                                                                                              "Thomas Edison", //23
                                                                                                              "Alex Drumont", //24
                                                                                                              "Grécia", //25
                                                                                                              "Antena de TV", //26
                                                                                                              "Mark South", //27
                                                                                                              "Gutenberg", //28
                                                                                                              "Impressora a vapor", //29
                                                                                                              "George Washington" //30
                                                                                                            ],
                                                                                                          erradas2: const [
                                                                                                              "Benjamin Franklin", //1
                                                                                                              "1885", //2
                                                                                                              "Antonio Meucci", //3
                                                                                                              "Não teve impacto algum", //4
                                                                                                              "Jones Samuel", //5
                                                                                                              "1600", //6
                                                                                                              "Irmãos Wright", //7
                                                                                                              "O telefone celular", //8
                                                                                                              "George Washington", //9
                                                                                                              "No século XX", //10
                                                                                                              "Nikola Tesla", //11
                                                                                                              "Isaac Asimov", //12
                                                                                                              "Para observação de estrelas", //13
                                                                                                              "Mark Zuckerberg", //14
                                                                                                              "A invenção do computador", //15
                                                                                                              "Thomas Edison", //16
                                                                                                              "O motor a vapor elétrico", //17
                                                                                                              "Ada Lovelace", //18
                                                                                                              "Albert Einstein", //19
                                                                                                              "No século XVIII", //20
                                                                                                              "Steve Jobs", //21
                                                                                                              "Para observação de árvores", //22
                                                                                                              "Nikola Tesla", //23
                                                                                                              "Benjamin Franklin", //24
                                                                                                              "Roma", //25
                                                                                                              "Antena de rádio", //26
                                                                                                              "Thomas Jefferson", //27
                                                                                                              "Charles Dickenson", //28
                                                                                                              "Máquina de escrever a vapor", //29
                                                                                                              "Isaac Newton" //30
                                                                                                            ],
                                                                                                          erradas3: const [
                                                                                                              "Nikola Tesla", //1
                                                                                                              "1905", //2
                                                                                                              "Thomas Edison", //3
                                                                                                              "Melhorou a agricultura", //4
                                                                                                              "Leonardo da Vinci", //5
                                                                                                              "1400", //6
                                                                                                              "Albert Einstein", //7
                                                                                                              "O rádio", //8
                                                                                                              "Thomas Edison", //9
                                                                                                              "No século XVI", //10
                                                                                                              "Marie Curie", //11
                                                                                                              "Galileu Galilei", //12
                                                                                                              "Para observação de estrelas", //13
                                                                                                              "Bill Gates", //14
                                                                                                              "A invenção da moeda", //15
                                                                                                              "Henry Ford", //16
                                                                                                              "A eletricidade", //17
                                                                                                              "Mouri Cavalcante", //18
                                                                                                              "Os romanos", //19
                                                                                                              "No século III a.C.", //20
                                                                                                              "Alfred Nobel", //21
                                                                                                              "Para observação de peixes", //22
                                                                                                              "Mark Zuckerberg", //23
                                                                                                              "Alessandro Volta", //24
                                                                                                              "Império Turco", //25
                                                                                                              "Roda de hamster", //26
                                                                                                              "Graham Bell", //27
                                                                                                              "Charles Dickens", //28
                                                                                                              "Máquina de costura a vapor", //29
                                                                                                              "Thomas Jefferson" //30
                                                                                                            ],
                                                                                                          voltar: () {
                                                                                                            setState(() {
                                                                                                              telaInicial = false;
                                                                                                              tela2TelaDosTemas = true;
                                                                                                            });
                                                                                                          },
                                                                                                          generoDasPerguntas: 'Invenções Históricas')),
    );
  }
}
