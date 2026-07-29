import 'package:flutter/material.dart';

// Cartão Padrão
const kTamanhoBorda = 10.0;
const margem = EdgeInsets.all(20.0);

enum Genero {
  Feminino,
  Masculino,
}

const kAlturaContainerInferior = 90.0;
const kCorConteinesPadrao = Color(0xff363CB8);
const kCorConteinesSelecionado = Color(0xff222780);
const kCorContainerInferior = Colors.deepOrangeAccent;

// conteudo_cartão
const kTamanhoSizeBox = 15.0;
const kTamanhoIconeSexo = 120.0;

// tela principal
const kTamanhoBotao = 30.0;
const kCorBotao = Color(0xff1B185B);
const kLetraPadrao = TextStyle(
  color: kCorConteudoPadrao,
  fontSize: 25.0,
);
const kCorConteudoPadrao = Colors.white;
const kTamanhoDaFonte = 25.0;
const kCorMacho = Colors.blue;
const kCorFemea = Color(0xffF06292);
const kCorMenosDestaque = Colors.orangeAccent;
const kTextoDestaque =
    TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.w900);
const ktextoMenosDestaque = TextStyle(
  color: kCorMenosDestaque,
  fontSize: 20.0,
);
const kAlturaMaxima = 250.0;
const kAlturaMinima = 90.0;
const kCorDestaque = Colors.deepOrangeAccent;
