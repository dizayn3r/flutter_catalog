import 'package:flutter/material.dart';
import 'package:flutter_catalog/routes/Routes%20Name/widget_route_name.dart';
import 'package:google_fonts/google_fonts.dart';

class MultiChildLayout extends StatefulWidget {
  const MultiChildLayout({Key? key}) : super(key: key);

  @override
  State<MultiChildLayout> createState() => _MultiChildLayoutState();
}

class _MultiChildLayoutState extends State<MultiChildLayout> {
  @override
  Widget build(BuildContext context) {
    List<String> title = [
      'Column',
      'Custom Multi Child Layout',
      'Flow',
    ];

    List<String> subtitle = [
      'Layout a list of child widgets in the vertical direction',
      'A widget that uses a delegate to size and position multiple children',
      'A widget that implements the flow layout algorithm',
      ];

    List<String> goto = [
      WidgetName.columnLayout,
      WidgetName.columnLayout,
      WidgetName.columnLayout,
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Multi Child Layout'),
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
