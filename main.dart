import 'package:flutter/material.dart';
import 'dart:math';
​
​
void main() {
​
  runApp(MyApp());
​
}
​
class MyApp extends StatelessWidget {
​
  @override
​
  Widget build(BuildContext context) {
​
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaginaInicial()
    );
  }
}
​
class PaginaInicial extends StatelessWidget {
​
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gerador aleatório")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Titulo(),
            SizedBox(height: 30),
            NumeroAleatorio()
          ]
        )
​
      )
​
    );
  }
}
​
class Titulo extends StatelessWidget {
​
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Gerador de Números",
        style: TextStyle(fontSize: 28)
      )
    );
  }
}
​
class NumeroAleatorio extends StatefulWidget {
​
  @override
  NumeroAleatorioState createState() => NumeroAleatorioState();
}
class NumeroAleatorioState extends State<NumeroAleatorio> {
​
  int numero = 0;
  String mensagem = "";
​
  void gerarNumero() {
    setState(() {
      Random numeroAleatorio = new Random();
      numero = numeroAleatorio.nextInt(1000);
      if(numero % 2 == 0) {
        mensagem = "O número é par";
      }
      else {
        mensagem = "O número é ímpar";
      }
    });
  }
​
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("$numero", style: TextStyle(fontSize: 28)),
          SizedBox(height: 30),
          Text("$mensagem"),
          SizedBox(height: 30),
          RaisedButton(
            onPressed: gerarNumero,
            child: Text("Gerar número")
          )
        ]
      )
    );
  }
}
