import 'package:flutter/material.dart';
import 'package:flutter_exercicio_veiculo/view/lista_veiculo.dart';

void main() {
  runApp((MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.deepPurple[300],
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blueAccent[700],
        textTheme: ButtonTextTheme.primary,
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blueAccent),
    ),
    home: Home(),
  )));
}