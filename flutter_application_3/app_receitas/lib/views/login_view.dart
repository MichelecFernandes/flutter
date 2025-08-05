import 'package:app_receitas/components/app_bar_component.dart';
import 'package:app_receitas/components/snack_bar_component.dart';
import 'package:app_receitas/controllers/login_controller.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  final _controladorUsuario = TextEditingController();
  final _controladorSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Acessar sua conta',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                TextFormField(
                  controller: _controladorUsuario,
                  decoration: InputDecoration(
                    labelText: 'Usuário',
                    hintText: 'Usuário de Acesso',
                    prefixIcon: Icon(Icons.person),
                  ),
                  validator: (usuario) {
                    if (usuario == null || usuario.isEmpty) {
                      return 'Preencha o campo do usuário';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _controladorSenha,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    hintText: 'Digite sua senha',
                    prefixIcon: Icon(Icons.lock),
                  ),
                  obscureText: true,
                  validator: (senha) {
                    if (senha == null || senha.isEmpty) {
                      return 'Preencha o campo da senha';
                    }

                    if (senha.length < 4) {
                      return 'A senha deve ter pelo menos 4 digitos';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      LoginController.instance.loginApi(
                        _controladorUsuario.text,
                        _controladorSenha.text,
                      );
                      // print(login);

                      // if(login){
                      //   Navigator.of(context).pushNamed('/receitas');
                      // }else{
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     snackBar(
                      //       mensagem: 'Deu erro ao logar',
                      //       corFundo: const Color.fromARGB(255, 59, 12, 8)
                      //     )
                      //   );
                      // }
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 41, 1, 68),
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  ),
                  child: Text('Entrar', style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
