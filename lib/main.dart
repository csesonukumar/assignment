import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/user_provider.dart';
import 'screens/home_page.dart';
import 'screens/add_user_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'User Management App',
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/add-user': (context) => AddUserPage(),
        },
      ),
    );
  }
}