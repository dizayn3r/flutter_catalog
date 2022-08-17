import 'package:flutter/material.dart';

class MaterialComponent extends StatelessWidget {
  final String title;
  const MaterialComponent({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
