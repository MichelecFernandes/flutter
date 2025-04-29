import 'package:flutter/material.dart';

class HumorView extends StatefulWidget {
  const HumorView({super.key});

  @override
  State<HumorView> createState() => _HumorViewState();
}

class _HumorViewState extends State<HumorView> {
  @override
  Widget build(BuildContext context) {
    /*Scaffold-> formato de tela que ajuda a encaixar os widgets de formna mais organizada na tela*/
    return Scaffold(
      appBar: AppBar(
        title: Text('Medidor de Humor'),
        backgroundColor: const Color.fromARGB(255, 4, 138, 115),
        foregroundColor: const Color.fromARGB(255, 4, 138, 115),
      ),
      body: Center(
        
      ),
    );
  }
}