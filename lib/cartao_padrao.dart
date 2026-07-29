import 'package:flutter/material.dart';
import 'constantes.dart';

final borda = BorderRadius.circular(10);

class CartaoPadrao extends StatelessWidget {
  const CartaoPadrao(
      {super.key, required this.cor, this.filhoCartao, this.aoClicar});

  final Color cor;
  final Widget? filhoCartao;
  final void Function()? aoClicar;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: aoClicar,
      child: Container(
        margin: margem,
        decoration: BoxDecoration(
          color: cor,
          borderRadius: borda,
        ),
        child: filhoCartao,
      ),
    );
  }
}
