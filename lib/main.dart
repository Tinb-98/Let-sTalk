import 'package:flutter/material.dart';
import 'package:lets_talk/views/signIn.dart';
import 'package:lets_talk/views/signUp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:(
        const Color(0xff3d3d3d)
        ),
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
      home: SignUp(),
    );
  }
}
