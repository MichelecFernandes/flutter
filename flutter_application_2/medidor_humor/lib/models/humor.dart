class Humor{
  int _nivel = 0;

  int getNivel(){
    return _nivel;
  }

  void aumentar(){
    _nivel++;
  }

  void diminuir(){
    _nivel--;
  }

  
  // Getter para o nivel de humor
  String get status => _nivel >= 7 ? 'Feliz' : _nivel >= 4 ? 'Neutro' : 'Triste';



}