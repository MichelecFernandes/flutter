import 'package:flutter/material.dart';

TextButton botaoPrincipal({Function()? funcao,
Color? corDeFundo,
String texto = ''}) {
  return TextButton(
    onPressed: funcao,
    style: TextButton.styleFrom(
      backgroundColor: corDeFundo ?? const Color.fromARGB(255, 0, 222, 230),
      foregroundColor: const Color.fromARGB(255, 235, 232, 232),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    ),
    child: Text(texto),
  );
}
