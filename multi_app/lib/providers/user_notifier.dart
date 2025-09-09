import 'package:flutter/material.dart';
import 'package:multi_app/controllers/user_controller.dart';
import '../models/user.dart';

class UserNotifier extends ChangeNotifier {
  User? _user;

  User? get user => _user;

  Future<void> loadUser() async {
    try{
      _user = await UserController.instance.loggedUser;
      notifyListeners();
    } catch (e) {
      _user = null;
      notifyListeners();
    }
  }

  void logout() {
    _user = null;
    notifyListeners();
  }

}
