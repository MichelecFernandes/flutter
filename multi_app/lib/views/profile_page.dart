import 'package:flutter/material.dart';
import 'package:multi_app/components/app_bar.dart';
import 'package:multi_app/components/responsive_container.dart';
import 'package:multi_app/models/user.dart';
import 'package:multi_app/shared/app_constants.dart';

class ProfilePage extends StatelessWidget {
  final User user;
  const ProfilePage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context: context, title: AppConstants.appName),
      body: ResponsiveContainer(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            child: user.image != null ? Image.network(user.image!) : Icon(Icons.person, size: 60)
          ),
          SizedBox(height: 16.0),
          Text(
            '${user.firstName} ${user.lastName ?? ''}',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold
            ),
          )
        ],
      )),
    );
  }
}
