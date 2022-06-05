import 'package:flutter/material.dart';
import 'package:greenpath_20/screens/forgot-password-screen.dart';
import 'package:greenpath_20/screens/get-started-screen.dart';
import 'package:greenpath_20/screens/login-farmer-screen.dart';
import 'package:greenpath_20/screens/login-investor-screen.dart';
import 'package:greenpath_20/screens/login-selection-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ThemeData().colorScheme.copyWith(
          primary: Colors.green
        )
      ),
      debugShowCheckedModeBanner: false,
      title: 'Greenpath v1.0',
      home: ForgotPasswordScreen()
    );
  }
}
