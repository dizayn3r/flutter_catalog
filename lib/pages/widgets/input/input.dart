import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  final String title;
  const Input({Key? key, required this.title}) : super(key: key);

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
