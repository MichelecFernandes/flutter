import 'package:flutter/material.dart';
import 'package:multi_app/components/app_bar.dart';
import 'package:multi_app/controllers/auth_controller.dart';
import 'package:multi_app/controllers/user_controller.dart';
import 'package:multi_app/models/user.dart';
import 'package:multi_app/shared/app_constants.dart';
import 'package:multi_app/views/profile_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  User? _loggedUser;

  @override
  initState() {
    _getLoggedUser();
    super.initState();
    
  }

  Future<void> _getLoggedUser() async {
    User user = await UserController.instance.loggedUser;
    if(mounted) {
      setState(() {
        _loggedUser = user;
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        context: context,
        title: AppConstants.appName,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('Perfil'),
                onTap: () {
                  if(_loggedUser != null) {
                    // Navega para tela de perfil
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProfilePage(user: _loggedUser!),
                    ));
                  }

                },
              ),
              PopupMenuItem(
                child: Text('Sair'),
                onTap: () async {
                  final navigator = Navigator.of(context);
                  bool logout = await AuthController.instance.logout();
                  if (logout) {
                    navigator.pushReplacementNamed('/login');
                  }
                },
              ),
            ],
            child:  Padding(padding: EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              child: _loggedUser != null ? Image.network(_loggedUser!.image.toString()) : Icon(Icons.person,
              color: Colors.grey),
            ),)
          ),
        
        ],
      ),
    );
  }
}
