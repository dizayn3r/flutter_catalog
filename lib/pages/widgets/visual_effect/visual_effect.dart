import 'package:flutter/material.dart';

class VisualEffect extends StatelessWidget {
  final String title;
  const VisualEffect({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
