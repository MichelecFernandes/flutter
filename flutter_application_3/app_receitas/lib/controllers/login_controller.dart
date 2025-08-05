import 'dart:convert';

import 'package:app_receitas/controllers/usuario.controller.dart';
import 'package:http/http.dart' as http;

class LoginController {
  static final LoginController instance = LoginController();

  bool login(String usuario, String senha) {
    if (usuario == 'admin' && senha == '123456') {
      UsuarioController.instance.setUsuario(usuario);
      return true;
    } else {
      return false;
    }
  }

  Future<bool> loginApi(String usuario, String senha) async {
    http.Response response = await http.post(
      Uri.parse('https://fakestoreapi.com/auth/login'),
      headers: <String, String>{'Content-Type': 'application/json'},
      body: jsonEncode({"username": usuario, "password": senha}),
    );
    print(response);
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
