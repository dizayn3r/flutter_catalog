import 'package:flutter/material.dart';

class FlutterHomePage extends StatefulWidget {
  const FlutterHomePage({Key? key}) : super(key: key);

  @override
  State<FlutterHomePage> createState() => _FlutterHomePageState();
}

class _FlutterHomePageState extends State<FlutterHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Card(
            child: Center(
              child: Text('Widgets'),
            ),
          ),
          Card(
            child: Center(
              child: Text('Packages'),
            ),
          ),
        ],
      ),
    );
  }
}
