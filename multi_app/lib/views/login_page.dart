import 'package:flutter/material.dart';
import 'package:multi_app/components/app_button.dart';
import 'package:multi_app/components/custom_snack_bar.dart';
import 'package:multi_app/components/custom_text_field.dart';
import 'package:multi_app/controllers/auth_controller.dart';
import 'package:multi_app/shared/app_constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscureText = true;

  @override
  void dispose() {
    _userNameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    final navigator = ScaffoldMessenger.of(context);

    if (_formKey.currentState!.validate()) {
      bool login = await AuthController.instance.login(
        _userNameController.text,
        _passwordController.text,
      );

      if(login){
        //Navegação
        Navigator.of(context).pushReplacementNamed('/dashboard');
      }else{
        navigator.showSnackBar(
          customSnackBar(
            message: 'As credenciais informadas estão incorretas',
            backgroundColor: const Color.fromARGB(255, 87, 20, 20),
            icon: Icons.error_outline
          )
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(AppConstants.appLoginMsg, textAlign: TextAlign.center),
              const SizedBox(height: 32.0),
              CustomTextField(
                label: 'Usuário',
                hint: 'Usuário de acesso ao sistema',
                controller: _userNameController,
                prefixIcon: Icon(Icons.person_2_outlined),
                validator: (username) {
                  if (username == null || username.isEmpty) {
                    return 'Preencha o campo do usuário';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 16.0),
              CustomTextField(
                label: 'Senha',
                hint: 'Digite sua senha',
                controller: _passwordController,
                prefixIcon: Icon(Icons.lock),
                obscureText: _obscureText,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                  ),
                ),
                validator: (password) {
                  if (password == null || password.isEmpty) {
                    return 'Preecha o campo senha';
                  }
                  return null;
                },
                onFieldSubmitted: (_) {
                  _login();
                },
              ),
              const SizedBox(height: 16.0),
              AppButton(text: 'Entrar', onPressed: _login),
            ],
          ),
        ),
      ),
    );
  }
}
