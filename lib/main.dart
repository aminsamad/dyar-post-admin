import 'package:dyarpost_admin/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dyar Admin App',
      theme: ThemeData(
        fontFamily: "kurdish",
      ),
      home: LoginScreen(),
    );
  }
}
