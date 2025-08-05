import 'package:flutter/material.dart';
import 'package:multi_app/shared/app_constants.dart';
import 'package:multi_app/shared/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.appName,
      theme: AppTheme.lightTheme,
    );
  }
}
