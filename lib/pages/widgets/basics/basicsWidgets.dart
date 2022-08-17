import 'package:flutter/material.dart';

class BasicWidget extends StatefulWidget {
  final String title;
  const BasicWidget({Key? key, required this.title}) : super(key: key);

  @override
  State<BasicWidget> createState() => _BasicWidgetState();
}

class _BasicWidgetState extends State<BasicWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
