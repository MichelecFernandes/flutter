import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:multi_app/shared/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  static final AuthController instance = AuthController();
  late SharedPreferences _sharedPreferences;

  Future<bool> login(String username, String password) async {
    http.Response response = await http.post(
      Uri.parse('${AppConstants.baseAuthApiUrl}auth/login'),
      headers: <String, String>{'Content-Type': 'application/json'},
      body: jsonEncode({
        'username': username,
        'password': password,
        'expiresInMins': 30,
      }),
    );
    print(response.body);
    print(json.decode(response.body)['accessToken']);
    if (response.statusCode == 200) {
      _sharedPreferences = await SharedPreferences.getInstance();
      _sharedPreferences.setString('accessToken', json.decode(response.body)['accessToken']);
      await _sharedPreferences.setInt('userId', json.decode(response.body)['userId']);
      return true;
    } else {
      return false;
    }
  }
}
