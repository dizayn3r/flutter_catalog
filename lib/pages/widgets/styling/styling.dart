import 'package:flutter/material.dart';

class Styling extends StatelessWidget {
  final String title;
  const Styling({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
