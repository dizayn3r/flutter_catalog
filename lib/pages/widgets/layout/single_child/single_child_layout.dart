import 'package:flutter/material.dart';

class SingleChildLayout extends StatefulWidget {
  const SingleChildLayout({Key? key}) : super(key: key);

  @override
  State<SingleChildLayout> createState() => _SingleChildLayoutState();
}

class _SingleChildLayoutState extends State<SingleChildLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Single Child Layout"),
      ),
    );
  }
}
