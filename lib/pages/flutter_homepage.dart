import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/customDrawer.dart';

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
        title: const Text('Flutter'),
      ),
      drawer: const CustomDrawer(),
      body: Column(
        children: [
          ListTile(
            title: Text('Material Design 2'),
          ),
          ListTile(
            title: Text('Material Design 3'),
          ),
        ],
      ),
    );
  }
}

