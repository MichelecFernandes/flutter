import 'package:flutter/material.dart';
import 'package:medidor_humor/controllers/humor_controller.dart';

class HumorView extends StatefulWidget {
  const HumorView({super.key});

  @override
  State<HumorView> createState() => _HumorViewState();
}

class _HumorViewState extends State<HumorView> {

  final HumorController _humorController = HumorController();

  @override
  Widget build(BuildContext context) {
    /*Scaffold-> formato de tela que ajuda a encaixar os widgets de formna mais organizada na tela*/
    return Scaffold(
      appBar: AppBar(
        title: Text('Medidor de Humor'),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.emoji_emotions,
                size: 450,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
              Text(_humorController.status,
               style: TextStyle(fontSize: 50)),
              Text('Nível de humor: ${_humorController.nivel}', style: TextStyle(fontSize: 50)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                      _humorController.diminuir();
                      });
                      print(_humorController.nivel);
                      print("Diminuir");
                    },
                    child: Text('Diminuir humor'),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                      _humorController.aumentar();
                      });
                      print(_humorController.nivel);
                      print("Aumentar");
                    },
                    child: Text('Aumentar humor'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
