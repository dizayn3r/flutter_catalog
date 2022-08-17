import 'package:flutter/material.dart';

class Scrolling extends StatelessWidget {
  final String title;
  const Scrolling({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
