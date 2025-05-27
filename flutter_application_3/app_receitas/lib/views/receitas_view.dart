import 'package:app_receitas/components/app_bar_component.dart';
import 'package:app_receitas/controllers/usuario.controller.dart';
import 'package:flutter/material.dart';

class ReceitasView extends StatefulWidget {
  const ReceitasView({super.key});

  @override
  State<ReceitasView> createState() => _ReceitasViewState();
}

class _ReceitasViewState extends State<ReceitasView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        icone: Icons.receipt,
        titulo: 'App de Receitas',
      ),
      body: Column(
        children: [
          Text('Usuário logado: ${UsuarioController.instance.usuario}'),
          TextButton(
            onPressed: (){
              Navigator.of(context).pop();
            }, 
            child: Text('Voltar'))
        ],
      )
    );
  }
}