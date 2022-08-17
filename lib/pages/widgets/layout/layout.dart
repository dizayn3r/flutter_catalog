import 'package:flutter/material.dart';

class LayoutHomePage extends StatefulWidget {
  final String title;
  const LayoutHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<LayoutHomePage> createState() => _LayoutHomePageState();
}

class _LayoutHomePageState extends State<LayoutHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
