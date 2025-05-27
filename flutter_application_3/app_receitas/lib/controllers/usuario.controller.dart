import 'package:app_receitas/models/usuario.dart';

class UsuarioController {

  static final UsuarioController instance = UsuarioController();

  final Usuario _usuario = Usuario();

  void setUsuario(String usuario){
    _usuario.setUsuario(usuario);
  }

  // Getter
  String get usuario => _usuario.getUsuario();

}