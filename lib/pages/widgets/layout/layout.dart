import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/Routes Name/widget_route_name.dart';

class LayoutHomePage extends StatefulWidget {
  final String title;
  const LayoutHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<LayoutHomePage> createState() => _LayoutHomePageState();
}

class _LayoutHomePageState extends State<LayoutHomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> title = [
      'Single-child Layout widgets',
      'Multi-child Layout widgets',
      'Sliver widgets',
    ];

    List<String> subtitle = [
      'Align, Aspect Ratio, Baseline, Center, Constrained Box, Container, Custom Single Child Layout, Expanded, Fitted Box, Fractionally Sized Box, Intrinsic Height, Intrinsic Width, Limited Box, Offstage, Overflow Box, Padding, Sized Box, Sized Overflow Box, Transform',
      'Column, Custom Multi Child Layout, Flow, GridView, Indexed Stack, Layout Builder, List Body, ListView, Row, Stack, Table, Wrap',
      'Cupertino Sliver Navigation Bar, Custom Scroll View, Sliver App Bar, Sliver Child Build Delegate, Sliver Child List Delegate, Sliver Fixed Extended List, Sliver Grid, Sliver List, Sliver Padding, Sliver Persistent Header, Sliver to Box Adapter',
    ];

    List<String> goto = [
      WidgetName.singleChildLayout,
      WidgetName.multiChildLayout,
      WidgetName.sliverLayout,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Widget'),
      ),
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
                        fontSize: 16.0,
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
