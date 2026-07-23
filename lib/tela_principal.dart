import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

int cont = 0;

class _TelaPrincipalState extends State<TelaPrincipal> {
  Widget criaBox() {
    return Expanded(
      child: Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Color(0xff0363CB8),
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Calculadora IMC'),
        ),
        body: Column(children: [
          Expanded(
            child: Row(
              children: [
                criaBox(),
                criaBox(),
              ],
            ),
          ),
          criaBox(),
          Expanded(
            child: Row(
              children: [
                criaBox(),
                criaBox(),
              ],
            ),
          )
        ]));
  }
}
