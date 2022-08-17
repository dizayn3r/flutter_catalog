import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/packages/fluttertoast_demo/toast_context.dart';
import 'package:flutter_catalog/pages/packages/fluttertoast_demo/toast_no_context.dart';

GlobalKey globalKey = GlobalKey();

class FluttertoastDemo extends StatefulWidget {
  const FluttertoastDemo({Key? key}) : super(key: key);

  @override
  State<FluttertoastDemo> createState() => _FluttertoastDemoState();
}

class _FluttertoastDemoState extends State<FluttertoastDemo> {
  int _selectedIndex = 0;

  final pages = [
    const ToastContext(),
    const ToastNoContext(),
  ];

  void onClick(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: AppBar(
        title: const Text('Fluttertoast package'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: onClick,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ToastContext',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ToastNoContext',
          ),
        ],
      ),
      body: pages[_selectedIndex],
    );
  }
}
