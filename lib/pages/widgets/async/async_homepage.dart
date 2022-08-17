import 'package:flutter/material.dart';

class AsyncHomePage extends StatefulWidget {
  final String title;
  const AsyncHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<AsyncHomePage> createState() => _AsyncHomePageState();
}

class _AsyncHomePageState extends State<AsyncHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
