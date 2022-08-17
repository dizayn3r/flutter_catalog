import 'package:flutter/material.dart';

class AnimationMotion extends StatefulWidget {
  final String title;
  const AnimationMotion({Key? key, required this.title}) : super(key: key);

  @override
  State<AnimationMotion> createState() => _AnimationMotionState();
}

class _AnimationMotionState extends State<AnimationMotion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
