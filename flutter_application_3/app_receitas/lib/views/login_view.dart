import 'package:app_receitas/components/app_bar_component.dart';
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
          padding: EdgeInsets.symmetric(
            horizontal: 26,
            vertical: 16
          ),
          child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Text(
                    'Acessar sua conta',              
                    style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                  TextFormField(
                    controller: _controladorUsuario,
                    decoration: InputDecoration(
                      labelText: 'Usuário',
                      hintText: 'Usuário de Acesso',
                      prefixIcon: Icon(Icons.person)
                    ),
                    validator: (usuario){
                      if(usuario == null || usuario.isEmpty){
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
                      prefixIcon: Icon(Icons.lock)
                    ),
                    validator: (senha){
                      if(senha == null || senha.isEmpty){
                        return 'Preencha o campo da senha';
                      }

                      if(senha.length < 4){
                        return 'A senha deve ter pelo menos 4 digitos';
                      }
                      return null;
                    },
                  ),
                  ElevatedButton(
                    onPressed: (){
                      if(_formKey.currentState!.validate()){
                        print('Formulário sem erros');
                        print(_controladorUsuario.text);
                      }
                    }, 
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                        fontSize: 16
                      ),
                    ))
                ],
              ),
          ),
        ),
      ),
    );
  }
}