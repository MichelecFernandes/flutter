import 'package:app_receitas/views/login_view.dart';
import 'package:app_receitas/views/receitas_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Receitas',
      debugShowCheckedModeBanner: false,
      routes: {
        '/login':(context) => LoginView(),
        '/receitas': (context) => ReceitasView()
      },
      initialRoute: '/login',
    )
    ;
  }
}