import 'package:flutter/material.dart';
import 'package:medidor_humor/controllers/humor_controller.dart';

class HumorView extends StatefulWidget {
  const HumorView({super.key});

  @override
  State<HumorView> createState() => _HumorViewState();
}

class _HumorViewState extends State<HumorView> {

  final HumorController _humorController = HumorController();

  IconData? _obterIcone(String status){
    switch(status){
      case 'Feliz':
        return Icons.sentiment_very_satisfied;
      case 'Neutro':
        return Icons.sentiment_neutral;
      case 'Triste':
        return Icons.sentiment_dissatisfied;  
      default:
        return Icons.disabled_by_default;
    }
  }

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
                _obterIcone(_humorController.status),
                size: 450,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
              Text(_humorController.status,
               style: TextStyle(fontSize: 50)),
              Text('Nível de humor: ${_humorController.nivel}', 
              style: TextStyle(fontSize: 50)),
              SizedBox(
                height: 30,
              ),
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
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 7, 0, 0),
                      foregroundColor: const Color.fromARGB(255, 241, 235, 235),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
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
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 7, 0, 0),
                      foregroundColor: const Color.fromARGB(255, 241, 235, 235),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      )
                    ),
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
