import 'package:flutter/material.dart';

class SliverLayout extends StatefulWidget {
  const SliverLayout({Key? key}) : super(key: key);

  @override
  State<SliverLayout> createState() => _SliverLayoutState();
}

class _SliverLayoutState extends State<SliverLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sliver Layout"),
      ),
    );
  }
}
