import 'package:medidor_humor/models/humor.dart';

class HumorController {
  final Humor _humor =  Humor();
  // Getter para o nivel do humor
  int get nivel => _humor.getNivel();


  // Getter para status de humor
  String get status => _humor.status;

  
  void aumentar(){
    _humor.aumentar();
  }

  void diminuir(){
    _humor.diminuir();
  }

}