import 'dart:async';
import 'package:flutter/material.dart';
import 'package:qatar_care/screens/login_screen.dart';
import 'package:qatar_care/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Qatar care',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoadScreen(),
    );
  }
}

class LoadScreen extends StatefulWidget {
  @override
  _LoadScreenState createState() => _LoadScreenState();
}

class _LoadScreenState extends State<LoadScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3), () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreen();
  }
}
