import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/packages/flip_card/flip_card_demo.dart';
import 'package:flutter_catalog/pages/packages/fluttertoast_demo/fluttertoast_demo.dart';
import 'package:flutter_catalog/widgets/customDrawer.dart';
import 'package:google_fonts/google_fonts.dart';


class PackageHomePage extends StatefulWidget {
  const PackageHomePage({Key? key}) : super(key: key);

  @override
  State<PackageHomePage> createState() => _PackageHomePageState();
}

class _PackageHomePageState extends State<PackageHomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> _packages = [
      'flip_card',
      'fluttertoast',
      'english_words',
    ];

    List<String> _description = [
      'A component that provides a flip card animation. It could be used for hiding and showing details of a product.',
      'Toast Library for Flutter.',
      'A package containing the most ~5000 used English words and some utility functions.',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Packages'),
      ),
      drawer: const CustomDrawer(),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        childAspectRatio: 3.0,
        padding: const EdgeInsets.all(16.0),
        children: [
          //Flip Card
          gridCard(
            onClicked: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const FlipCardDemo(),
              ),
            ),
            title: _packages[0],
            description: _description[0],
          ),

        //  Fluttertoast
          gridCard(
            onClicked: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const FluttertoastDemo(),
              ),
            ),
            title: _packages[1],
            description: _description[1],
          ),
        ],
      ),
    );
  }

  Widget gridCard(
      {required VoidCallback onClicked,
      required String title,
      required String description}) {
    return GestureDetector(
      onTap: onClicked,
      child: Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.quicksand(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(),
              Text(
                description,
                style: GoogleFonts.quicksand(
                  fontSize: 18.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
