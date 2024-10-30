import 'package:demo_provider/open/login_screen.dart';
import 'package:demo_provider/provider/auth_provider.dart';
import 'package:demo_provider/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AuthProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      home: Consumer<AuthProvider>(
        builder: (context, authProvider, child) {
          return authProvider.isLoggedIn ? HomeScreen() : LoginScreen();
        },
      ),
    );
  }
}
