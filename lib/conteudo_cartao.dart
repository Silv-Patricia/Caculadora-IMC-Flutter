import 'package:flutter/material.dart';
import 'constantes.dart';

class MaleOrFemale extends StatelessWidget {
  const MaleOrFemale({
    super.key,
    required this.sexoIcone,
    required this.sexo,
    this.corConteudo,
  });

  final IconData sexoIcone;
  final String sexo;

  final Color? corConteudo;
  @override
  Widget build(BuildContext context) {
    Color corFinal = corConteudo ?? kCorConteudoPadrao;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          sexoIcone,
          size: kTamanhoIconeSexo,
          color: corFinal,
        ),
        SizedBox(height: kTamanhoSizeBox),
        Text(
          sexo,
          style: TextStyle(fontSize: kTamanhoDaFonte, color: corFinal),
        )
      ],
    );
  }
}
