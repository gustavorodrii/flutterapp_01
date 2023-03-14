import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarForm;

  Resultado(this.pontuacao, this.quandoReiniciarForm);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabens';
    } else if (pontuacao < 12) {
      return 'Voce foi muito bem';
    } else if (pontuacao < 16) {
      return 'Amaziiiing';
    } else {
      return 'Nivel Jediiiii';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
          onPressed: quandoReiniciarForm,
          child: const Text(
            ('Reiniciar ?'),
            style: TextStyle(fontSize: 14),
          ),
        )
      ],
    );
  }
}
