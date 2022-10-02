import 'package:flutter/material.dart';
import 'package:flutter_catalog/routes/Routes%20Name/widget_route_name.dart';
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
    List<String> title = [
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

    List<String> subtitle = [
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

    List<String> goto = [
     WidgetName.accessibility,
     WidgetName.animationMotion,
     WidgetName.assetsImagesIcons,
     WidgetName.async,
     WidgetName.basics,
     WidgetName.cupertino,
     WidgetName.input,
     WidgetName.touchRoute,
     WidgetName.layout,
     WidgetName.materialComponent,
     WidgetName.visual,
     WidgetName.scroll,
     WidgetName.styling,
     WidgetName.text,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets'),
      ),
      drawer: const CustomDrawer(),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: title.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, goto[index]),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title[index],
                      style: GoogleFonts.quicksand(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(color: Theme.of(context).primaryColor),
                    Text(
                      subtitle[index],
                      style: GoogleFonts.quicksand(
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
