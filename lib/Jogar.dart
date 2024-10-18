import 'dart:math';
import 'package:caraoucoroa_app/Resultado.dart';
import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {

  void _exibirResultado (){

    var itens = ["cara", "coroa"];
    var numero = Random( ).nextInt(itens.length);
    var result = itens[numero];
    Navigator.push(
        context,
        MaterialPageRoute(
        builder:(context) => Resultado(result) ));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("imagens/logo.png"),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("imagens/botao_jogar.png"),
            )

          ],
        ),
      ),
    );
  }
}
