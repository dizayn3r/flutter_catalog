import 'package:flutter/material.dart';

class Accessibility extends StatefulWidget {
  final String title;
  const Accessibility({Key? key, required this.title}) : super(key: key);

  @override
  State<Accessibility> createState() => _AccessibilityState();
}

class _AccessibilityState extends State<Accessibility> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
