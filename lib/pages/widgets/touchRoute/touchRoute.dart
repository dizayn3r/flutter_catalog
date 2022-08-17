import 'package:flutter/material.dart';

class TouchRoute extends StatelessWidget {
  final String title;
  const TouchRoute({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
