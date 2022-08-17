import 'package:flutter/material.dart';

class TextHomePage extends StatelessWidget {
  final String title;
  const TextHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
