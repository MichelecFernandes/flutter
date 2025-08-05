import 'package:flutter/material.dart';
import 'package:multi_app/shared/app_constants.dart';
import 'package:multi_app/shared/app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          // MainAxi centralizar na vertical
          mainAxisAlignment: MainAxisAlignment.center,
          // CrossAxi centraliza na horizontal
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(
              Icons.dashboard,
              size: 100,
              color: Theme.of(context).primaryColor,
            ),
            Text(
              AppConstants.appName,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor
              )),
              Text(
                AppConstants.appSlogan,
                textAlign: TextAlign.center,
              ),
          ],
        ),
      ),
    );
  }
}
