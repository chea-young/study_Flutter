import 'package:flutter/material.dart';
import 'package:myapp/screen/screen_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Quiz App',
      home: HomeScreen(),
    );// Screen은 원래 이 파일에 넣지만 screen 파일에 만들 예정
  }
}