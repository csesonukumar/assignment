import 'package:flutter/material.dart';
import '../models/user.dart';

class UserDetailPage extends StatelessWidget {
  final User user;

  UserDetailPage({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(user.name)),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Email: ${user.email}", style: TextStyle(fontSize: 18)),
            Text("Phone: ${user.phone}", style: TextStyle(fontSize: 18)),
            Text("Website: ${user.website}", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}