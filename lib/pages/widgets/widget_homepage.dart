import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/customDrawer.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../routes/routes_name/widget_route_name.dart';

class WidgetHomePage extends StatefulWidget {
  const WidgetHomePage({Key? key}) : super(key: key);

  @override
  State<WidgetHomePage> createState() => _WidgetHomePageState();
}

class _WidgetHomePageState extends State<WidgetHomePage> {
  final List<String> title = [
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

  final List<String> subtitle = [
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

  final List<String> goto = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets'),
      ),
      drawer: const CustomDrawer(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Available width to layout into
          final double maxWidth = constraints.maxWidth;

          // Define breakpoints (you can tweak these)
          const double mobileBreakpoint = 600;
          const double tabletBreakpoint = 1000;

          // Determine columns with LayoutBuilder
          int columns;
          if (maxWidth < mobileBreakpoint) {
            columns = 1; // phone - list
          } else if (maxWidth < tabletBreakpoint) {
            columns = 2; // small tablet
          } else {
            // desktop: calculate how many columns fit with a target card width
            final int fit = (maxWidth / 360).floor();
            columns = math.max(2, math.min(5, fit)); // clamp between 2 and 5
          }

          // Scale sizes based on available width
          // Use a base value clamped for sane extremes
          final double base = maxWidth.clamp(320.0, 1600.0);
          final double titleFont = (base * 0.04).clamp(14.0, 22.0);
          final double subtitleFont = (base * 0.028).clamp(12.0, 16.0);
          final double cardPadding = (base * 0.03).clamp(12.0, 28.0);
          final double gap = (base < mobileBreakpoint) ? 8.0 : 16.0;
          final double horizontalMargin = (maxWidth < mobileBreakpoint)
              ? 8.0
              : math.min(48.0, maxWidth * 0.03);

          Widget buildCard(int index) {
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              elevation: 2,
              child: InkWell(
                borderRadius: BorderRadius.circular(8.0),
                onTap: () => Navigator.pushNamed(context, goto[index]),
                child: Container(
                  padding: EdgeInsets.all(cardPadding),
                  constraints: const BoxConstraints(minHeight: 88),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title[index],
                        style: GoogleFonts.quicksand(
                          fontSize: titleFont,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Divider(color: Theme.of(context).primaryColor, height: 6),
                      const SizedBox(height: 6),
                      Text(
                        subtitle[index],
                        style: GoogleFonts.quicksand(
                          fontSize: subtitleFont,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }

          // If single column — use ListView for natural mobile feel and touch targets.
          if (columns == 1) {
            return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: horizontalMargin, vertical: 8),
              child: ListView.separated(
                itemCount: title.length,
                separatorBuilder: (_, __) => SizedBox(height: gap),
                itemBuilder: (context, index) => buildCard(index),
              ),
            );
          }

          // Multi-column grid for tablets / desktop
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: horizontalMargin, vertical: 12),
            child: GridView.builder(
              itemCount: title.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: columns,
                mainAxisSpacing: gap,
                crossAxisSpacing: gap,
                // adjust aspect ratio slightly based on column count and width
                childAspectRatio:
                    maxWidth < tabletBreakpoint ? 3.8 / 1 : 3.8 / 2,
              ),
              itemBuilder: (context, index) => buildCard(index),
            ),
          );
        },
      ),
    );
  }
}
