import 'package:flutter/material.dart';
import 'package:imccalc_flutter/botao_arredondado.dart';
import 'cartao_padrao.dart';
import 'conteudo_cartao.dart';
import 'constantes.dart';
import 'tela_resultado.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  Genero? generoSelecionado;
  int altura = 170;
  int peso = 50;
  int idade = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Calculadora IMC'),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CartaoPadrao(
                    aoClicar: () {
                      setState(() {
                        generoSelecionado =
                            generoSelecionado == Genero.Masculino
                                ? null
                                : Genero.Masculino;
                      });
                    },
                    cor: generoSelecionado == Genero.Masculino
                        ? kCorConteinesSelecionado
                        : kCorConteinesPadrao,
                    filhoCartao: MaleOrFemale(
                      sexoIcone: Icons.male,
                      sexo: 'Masculino',
                      corConteudo: generoSelecionado == Genero.Masculino
                          ? kCorMacho
                          : kCorConteudoPadrao,
                    ),
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    aoClicar: () {
                      setState(() {
                        generoSelecionado = generoSelecionado == Genero.Feminino
                            ? null
                            : Genero.Feminino;
                      });
                    },
                    cor: generoSelecionado == Genero.Feminino
                        ? kCorConteinesSelecionado
                        : kCorConteinesPadrao,
                    filhoCartao: MaleOrFemale(
                        sexoIcone: Icons.female,
                        sexo: 'Feminino',
                        corConteudo: generoSelecionado == Genero.Feminino
                            ? kCorFemea
                            : kCorConteudoPadrao),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CartaoPadrao(
              cor: kCorConteinesPadrao,
              filhoCartao: Column(
                children: [
                  Text(
                    'Altura',
                    style: kLetraPadrao,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(altura.toString(), style: kTextoDestaque),
                      Text(
                        ' cm',
                        style: ktextoMenosDestaque,
                      ),
                    ],
                  ),
                  Slider(
                    value: altura.toDouble(),
                    min: kAlturaMinima,
                    max: kAlturaMaxima,
                    activeColor: kCorDestaque,
                    inactiveColor: kCorMenosDestaque,
                    onChanged: (double novaAltura) {
                      setState(() {
                        altura = novaAltura.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CartaoPadrao(
                    cor: kCorConteinesPadrao,
                    filhoCartao: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Peso',
                          style: kLetraPadrao,
                        ),
                        Text(
                          peso.toString(),
                          style: kTextoDestaque,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            BotaoArredondado(
                              icone: Icons.remove,
                              aoClicar: () {
                                setState(() {
                                  peso--;
                                });
                              },
                            ),
                            BotaoArredondado(
                              icone: Icons.add,
                              aoClicar: () {
                                setState(() {
                                  peso++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: CartaoPadrao(
                    cor: kCorConteinesPadrao,
                    filhoCartao: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Idade', style: kLetraPadrao),
                        Text(
                          idade.toString(),
                          style: kTextoDestaque,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            BotaoArredondado(
                              icone: Icons.remove,
                              aoClicar: () {
                                setState(() {
                                  idade--;
                                });
                              },
                            ),
                            BotaoArredondado(
                              icone: Icons.add,
                              aoClicar: () {
                                setState(() {
                                  idade++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TelaResultado()));
            },
            child: Container(
              alignment: AlignmentGeometry.center,
              color: kCorContainerInferior,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kAlturaContainerInferior,
              child: Text('Calcular', style: kLetraPadrao, textAlign: TextAlign.center,),
            ),
          ),
        ]));
  }
}
