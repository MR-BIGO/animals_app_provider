import 'package:flutter/material.dart';
import 'presentation/homescreen.dart';

void main() {
  runApp(const AnimalsApp());
}

class AnimalsApp extends StatelessWidget {
  const AnimalsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animals App',
      home: HomeScreen(),
    );
  }
}
