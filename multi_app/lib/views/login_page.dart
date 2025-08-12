import 'package:flutter/material.dart';
import 'package:multi_app/components/app_button.dart';
import 'package:multi_app/components/custom_text_field.dart';
import 'package:multi_app/shared/app_constants.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                AppConstants.appLoginMsg,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32.0),
              CustomTextField(label: 'Usuário'),
              const SizedBox(height: 16.0),
              CustomTextField(label: 'Senha'),
              const SizedBox(height: 16.0),
              AppButton(text: 'Entrar', onPressed: (){})
            ],

          )),
        ),
    );
  }
}