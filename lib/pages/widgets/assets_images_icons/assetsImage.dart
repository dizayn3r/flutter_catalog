import 'package:flutter/material.dart';

class AssetsImageIcon extends StatefulWidget {
  final String title;
  const AssetsImageIcon({Key? key, required this.title}) : super(key: key);

  @override
  State<AssetsImageIcon> createState() => _AssetsImageIconState();
}

class _AssetsImageIconState extends State<AssetsImageIcon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}