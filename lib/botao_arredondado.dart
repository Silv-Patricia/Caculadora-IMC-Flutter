import 'package:flutter/material.dart';
import 'constantes.dart';

class BotaoArredondado extends StatelessWidget {
  const BotaoArredondado(
      {super.key, required this.icone, required this.aoClicar});

  final IconData icone;
  final void Function() aoClicar;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: aoClicar,
      shape: CircleBorder(),
      fillColor: kCorDestaque,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      child: Icon(
        icone,
        size: kTamanhoBotao,
        color: kCorConteudoPadrao,
      ),
    );
  }
}
