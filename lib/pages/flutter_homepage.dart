import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/customDrawer.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';

class FlutterHomeInit extends StatefulWidget {
  const FlutterHomeInit({Key? key}) : super(key: key);

  @override
  State<FlutterHomeInit> createState() => _FlutterHomeInitState();
}

class _FlutterHomeInitState extends State<FlutterHomeInit> {
  @override
  Widget build(BuildContext context) {
    return ProgressHUD(child: const FlutterHomePage());
  }
}


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
        children: const [
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

