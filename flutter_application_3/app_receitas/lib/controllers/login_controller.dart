import 'package:app_receitas/controllers/usuario.controller.dart';

class LoginController{

  static final LoginController instance = LoginController();

  bool login(String usuario, String senha){
    if(usuario == 'admin' && senha == '123456'){
      UsuarioController.instance.setUsuario(usuario);
      return true;
    }else{
      return false;
    }
  }
}