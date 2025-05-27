import 'package:flutter/material.dart';

AppBar appBar({bool leading = true, IconData? icone, String titulo = '', Color? corDeFundo}) {
  return AppBar(
    leading: leading ? Icon(icone) : null,
    title: Text(titulo),
    foregroundColor: Colors.white,
    backgroundColor: corDeFundo ??  const Color.fromARGB(255, 41, 1, 68),
  );
}