import 'package:flutter/material.dart';
import 'presentation/homescreen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_3/provider/imageprovider.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ImgProvider())],
      child: const AnimalsApp()));
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
