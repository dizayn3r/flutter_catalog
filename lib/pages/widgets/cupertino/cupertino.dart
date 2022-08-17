import 'package:flutter/material.dart';

class CupertinoHomePage extends StatefulWidget {
  final String title;
  const CupertinoHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<CupertinoHomePage> createState() => _CupertinoHomePageState();
}

class _CupertinoHomePageState extends State<CupertinoHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
