import 'package:flutter/material.dart';

import 'pages/flutter_homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Catalog',
      home: const FlutterHomePage(),
    );
  }
}
