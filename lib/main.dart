import 'package:flutter/material.dart';
import 'package:my_coffe/App.dart';
import 'package:my_coffe/Coffe.dart';
import 'package:my_coffe/Enter.dart';
import 'package:my_coffe/LaunchScreen.dart';
import 'package:my_coffe/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => LuanchScreen(),
        '/enter_screen': (context) => EnterScreen(),
        '/login_screen': (context) => LoginScreen(),
        '/app_screen': (context) => App(),
        '/coffee_screen': (context) => Coffee(),
      },
    );
  }
}
