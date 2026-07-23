import 'package:flutter/material.dart';
import 'tela_principal.dart';

void main() => runApp(CalculadoraIMC());

class CalculadoraIMC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff1B185B),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xff1B185B),
          titleTextStyle: TextStyle(color: Colors.white),
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xff1B185B),
          secondary: Color(0xff363CB8),
        ),
      ),
      home: TelaPrincipal(),
    );
  }
}
