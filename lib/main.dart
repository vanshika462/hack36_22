import 'package:flutter/material.dart';
import 'screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        //'ForgotPassword': (context) => ForgotPassword(),
        //'CreateNewAccount': (context) => CreateNewAccount(),
      }, //routes
    );
  }
}