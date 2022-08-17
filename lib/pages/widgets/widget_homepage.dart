import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/customDrawer.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetHomePage extends StatefulWidget {
  const WidgetHomePage({Key? key}) : super(key: key);

  @override
  State<WidgetHomePage> createState() => _WidgetHomePageState();
}

class _WidgetHomePageState extends State<WidgetHomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> _title = [
      'Accessibility',
      'Animation',
      'Assets, Images and Icons',
      'Async',
      'Basics',
      'Cupertino Widgets',
      'User Input',
      'Touch and Route',
      'Layout',
      'Material Components',
      'Visual Effect',
      'Scrolling',
      'Styling',
      'Text',
    ];
    List<String> _subtitle = [
      'Make your app accessible.',
      'Animations for your app.',
      'Manage assets, images and icons.',
      'FutureBuilder and StreamBuilder.',
      'Widgets you need to know before building your app.',
      'Widgets for iOS design language.',
      'Input widgets in material components and cupertino.',
      'Touch events and routing for your app.',
      'Layout widgets like row, column, grid, and list.',
      'Material Components based on material design guidelines.',
      'Visual effects for your app without changing the layout, size, or position.',
      'Scroll multiple widgets as children of the parent.',
      'Manage the theme of your app, makes your app responsive to screen sizes, or add padding.',
      'Display and style text.'
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets'),
      ),
      drawer: const CustomDrawer(),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        childAspectRatio: 3.0,
        padding: const EdgeInsets.all(16.0),
        children: List.generate(
          _title.length,
          (index) => GestureDetector(
            onTap: () => Navigator.of(context).pushNamed('/$index'),
            child: Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)
              ),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _title[index],
                      style: GoogleFonts.quicksand(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Divider(),
                    Text(
                      _subtitle[index],
                      style: GoogleFonts.quicksand(
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
