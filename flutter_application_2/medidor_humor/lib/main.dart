import 'package:flutter/material.dart';
import 'package:medidor_humor/views/humor_view.dart';

void main() {
  runApp(MyApp());
}

/* É a porta de entrada do app, quando executar vai ser a primeira a aparecer */
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /*Renderiza um widget para quem o chamou */
  @override
  Widget build(BuildContext context) {
    /* MaterilApp é widget que representa todo o aplicativo*/
    return MaterialApp(
      title: 'Medidor de Humor',
      debugShowCheckedModeBanner: false,
      home: HumorView(),
    );
  }
}
